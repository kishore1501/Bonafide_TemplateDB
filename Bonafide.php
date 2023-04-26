<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bonafide_Template</title>
    <link rel="stylesheet" href="Bonafide.css">
</head>

<body>
    <!-- Getting Content from 'homepage' table in 'lascomdb' and 'id=6'  -->
    <p>
        <?php
        //database connection
        $connection = new mysqli("localhost", "root", "", "bonafide");

        // Check connection
        if (!$connection) {
            die("Connection failed: " . mysqli_connect_error());
        }

        //Fetching text from "paragraph" table
        $sql = "SELECT name, reg_no, degree, request_date FROM persominfo WHERE id = 1";
        $result = mysqli_query($connection, $sql);
        $row = mysqli_fetch_assoc($result);
        $name = $row['name'];
        $reg_no = $row['reg_no'];
        $degree = $row['degree'];
        $request_date = $row['request_date'];
        mysqli_close($connection);
        ?>
    </p>
    <div class="box">
        <div class="container">
            <div class="logo">
                <h1>SRM LOGO</h1>
            </div>
            <h1>SRM INSTITUTE OF SCIENCE AND TECHNOLOGY</h1>

            <h2 style="font-weight: lighter;">College of Engineering & Technology<br>Vadapalani, Chennai - 600026</h2>
            <hr>
            <br>
            <h2 style="font-weight: lighter; text-align: right; margin-right: 30px;"><?php echo 'Date' . " " . $request_date; ?> </h2>
            <br>
            <div class="double-underline">
                <h1>BONAFIDE CERTIFICATE</h1>
            </div>
            <p>This is to certify that <b><?php echo $name . " " . "(Reg. No: $reg_no)" ?> </b>was
                admitted in four years <b><?php echo $degree ?></b> Programme in
                the academic year 2021-22. The student is undergoing 2nd year / 3rd Semester during the
                academic year 2022-23.
            </p>
            <p>He is a bonafide student of the College of Engineering & Technology,
                Vadapalani Campus, SRM Institute of Science and Technology, Chennai - 600 026. This Certificate
                is issued only for Identity purpose.
            </p>
        </div>
        <div class="seal">
            <h2>Office Seal</h2>
            <h2 class="seal-right">HoD</h2>
        </div>
    </div>

    </div>
</body>

</html>