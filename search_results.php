<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uni_results</title>
    <link rel="stylesheet" href="uni_styles.css">
</head>
<body> 
    <?php //Add Navigation
    include('navigation.php'); ?>
    
    <!-- Search bar to find curriculum-->
    <form id="curriculumSearchForm" action="search_results.php" method="get">
        <input type='text' id='curriculumSearch' name='curriculumSearch' placeholder='Search Curriculum'>
        <button type='submit' id='curriculumButton'>Search</button>
    </form>

    <?php
    
    try {
        include 'uniConnect.php';

        if (isset($_GET['university_id'])) {
            // Get University Details
            $university_id = $_GET['university_id'];
            $university_query = "SELECT * FROM university WHERE university_id = '$university_id'";
            $university_result = $connect->query($university_query);
            $university_data = $university_result->fetch(PDO::FETCH_ASSOC);

            // Get Curriculum Details
            $curriculum_query = "SELECT * FROM curriculum WHERE university_id = '$university_id'";
            $curriculum_result = $connect->query($curriculum_query);

            // Display University and Curriculum Details
            include 'display_results.php';

        } elseif (isset($_GET['universitySearch'])) {
            $searchedUniversity = $_GET['universitySearch'];

            // Get university details
            $universityQuery = "SELECT * FROM university WHERE university_name LIKE :searchedUniversity";
            $universityStmt = $connect->prepare($universityQuery);
            $universityStmt->bindValue(':searchedUniversity', '%' . $searchedUniversity . '%', PDO::PARAM_STR);
            $universityStmt->execute();
            $universityResult = $universityStmt->fetchAll(PDO::FETCH_ASSOC);

            // Get curriculum details
            $curriculumQuery = "SELECT * FROM curriculum WHERE university_id IN (SELECT university_id FROM university WHERE university_name LIKE :searchedUniversity)";
            $curriculumStmt = $connect->prepare($curriculumQuery);
            $curriculumStmt->bindValue(':searchedUniversity', '%' . $searchedUniversity . '%', PDO::PARAM_STR);
            $curriculumStmt->execute();
            $curriculumResult = $curriculumStmt->fetchAll(PDO::FETCH_ASSOC);

            // Display University and Curriculum Details
            include 'display_results.php';

        } else {
            // Redirect to the index page if no university or search query is seleted
            header("Location: index.php");
            exit();
        }

    } catch (PDOException $e) {
        // Handle exceptions
        die("Error: " . $e->getMessage());
    } finally {
        // Close the connection
        $connect = null;
    }
    ?>

    <script>
        // JavaScript for curriculum search
        document.addEventListener('DOMContentLoaded', function () {
            var curriculumSearchForm = document.getElementById('curriculumSearchForm');
            var curriculumSearchInput = document.getElementById('curriculumSearch');
            var cards = document.querySelectorAll('.curriculum-details .card');

            curriculumSearchForm.addEventListener('submit', function (event) {
                // Prevent the default form submission
                event.preventDefault();
                var searchValue = curriculumSearchInput.value.toLowerCase();

                cards.forEach(function (card) {
                    var curriculumName = card.querySelector('h4').textContent.toLowerCase();
                    card.style.display = curriculumName.includes(searchValue) ? 'block' : 'none';
                });
            });
        });
    </script>


</body>
</html>
