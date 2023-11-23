<?php

include('database_connection.php');
include('nav.php');

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Product filter in php</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">


<body>
    <nav>
        <!-- Page Content -->
        <div class="container">
            <hr>
            <h3 style="color:#004080"> <strong> Courses In Sri Lanka </strong></h3>
            <hr>


            <div class="row ">



                <div>

                    <?php

                    $query = "SELECT DISTINCT(institute_name) FROM course WHERE course_status = '1' ORDER BY course_id DESC";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();

                    ?>
                    <div class="col-md-1" style="display:inline-block; margin-left: 34%;  ">
                        <select id="institute_name" class="select"
                            style="width:180px; color:#808080; background:#FFFFFF; height:30px;  border-radius: 2px; border-color: #DCDCDC;">

                            <option value="">Select Institutes</option>
                            <?php
                            foreach ($result as $row) {
                                echo '<option value="' . $row["institute_name"] . '">' . $row["institute_name"] . '</option>';
                            }
                            ?>

                        </select>
                    </div>
                </div>
                <div class="col-md-1" style="display:inline-block; margin-left: 8%; width: 557px;">

                    <div class="form-group">
                        <div class="input-group input-group-sm">

                            <input type="text" name="search_text" id="search_text"
                                placeholder="Search by Institute Name and Field" class="form-control" />
                            <span class="input-group-addon" id="sizing-addon3"
                                style="color:#FFFFFF;background:#4169E1;">Search</span>
                        </div>
                    </div>

                </div>
            </div>









            <div style="width:1100px;
        background:#e6ecff; 
        margin-left: 1.5%;
        height: 40px;
        padding: 10px;
        border: 1px solid #DCDCDC;">
                <a href="index.php" style=" text-decoration: underline;">refresh</a><span
                    style="color: #808080; font-style: italic;"> / Showing Courses List </span>
            </div>

            <div class="col-md-4">
                <div class="list-group">
                    <h5><strong>Catogaries</strong></h5>
                    <div>
                        <?php

                        $query = "SELECT DISTINCT(field_name) FROM course WHERE course_status = '1' ORDER BY course_id DESC";
                        $statement = $connect->prepare($query);
                        $statement->execute();
                        $result = $statement->fetchAll();
                        foreach ($result as $row) {
                            ?>
                            <div class="list-group-item checkbox">
                                <label><input type="checkbox" class="common_selector field" id="field"
                                        value="<?php echo $row['field_name']; ?>">
                                    <?php echo $row['field_name']; ?>
                                </label>
                            </div>
                        <?php
                        }

                        ?>
                    </div>
                </div>
            </div>


            <div class="col-md-8">
                <br />
                <div class="row filter_data">


                </div>
            </div>
        </div>
        </div>

        </div>
        <style>
            #loading {
                text-align: center;
                background: url('loader.gif') no-repeat center;
                height: 150px;
            }
        </style>

        <script>
            $(document).ready(function () {

                filter_data();

                function filter_data(query) {
                    $('.filter_data').html('<div id="loading" style="" ></div>');
                    var action = 'fetch_data';
                    var field = get_filter('field');
                    $.ajax({
                        url: "fetch_data.php",
                        method: "POST",
                        data: { action: action, field: field, query: query },
                        success: function (data) {
                            $('.filter_data').html(data);
                        }
                    });


                    $('#institute_name').change(function () {  //dropdown
                        var institute_name = $(this).val();
                        $.ajax({
                            url: "fetch_data.php",
                            method: "POST",
                            data: { action: action, field: field, institute_name: institute_name, },
                            success: function (data) {
                                $('.filter_data').html(data);
                            }
                        });
                    });
                }

                function get_filter(class_name) {
                    var filter = [];
                    $('.' + class_name + ':checked').each(function () {
                        filter.push($(this).val());
                    });

                    return filter;
                }

                $('.common_selector').click(function () {
                    filter_data();
                });

                $('#search_text').keyup(function () {
                    var search = $(this).val();
                    if (search != '') {
                        filter_data(search);
                    }
                    else {
                        filter_data();
                    }
                });
            });
        </script>
        <script>

        </script>

</body>

</html>