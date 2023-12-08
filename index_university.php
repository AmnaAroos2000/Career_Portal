<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Search</title>
    <link rel="stylesheet" href="uni_styles.css">
</head>
<body>
    <?php
    include('nav.php');
    ?>

    <!-- Search bar for find university -->
    <form action="search_results.php" method="get" id="curriculumSearchForm">
        <input type="text" id="universitySearch" placeholder="Find University" name="universitySearch" required>
        <button type="submit" id="universityButton">Search</button>
    </form>
    <form action="search_results.php" method="get">

        <!-- University containers -->
        <div class="container_wrapper">
                <div class="row">
                    <div class="front_container">
                        <img src="banner/Luoc.png" alt="UOC Logo" height= '160px'; width= '160px'>
                        <div class="tb">
                            <h1 id="uoc">University of Colombo</h1>
                            <button class="button" type="submit" name="university_id" value="G1" >Explore</button>
                        </div>
                    </div>

                    <div class="front_container">
                        <img src="banner/Luop.jpg" alt="UOP Logo"  height= '160px'; width= '160px'>
                        <div class="tb">
                            <h1 id="uop">University of Peradeniya</h1> 
                            <button class="button" type="submit" name="university_id" value="G2" >Explore</button>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="front_container">
                        <img src="banner/Luom.jpg" alt="UOM Logo"  height= '160px'; width= '160px'>
                        <div class="tb">
                            <h1 id="uom">University of Moratuwa</h1>
                            <button type="submit" name="university_id" value="G5" class="button">Explore</button>
                        </div>
                    </div>

                    <div class="front_container">
                        <img src="banner/Luokel.png" alt="UOK Logo"   height= '160px'; width= '160px';>
                        <div class="tb">
                            <h1 id="uok">University of Kelaniya</h1> 
                            <button type="submit" name="university_id" value="G4" class="button">Explore</button>
                        </div>
                    </div>
                </div>
        </div>       
    </form>




</body>
</html>
