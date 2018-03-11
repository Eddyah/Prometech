<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Prometech</title>
    <link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
<?php require_once("pages/header.php"); ?>
<div id="content-window">
    <?php require_once("pages/sidebar.php"); ?>

    <?php require_once("pages/user-dashboard.php"); ?>
</div>
<!-- Sidebar toggle -->
<script>
    $(function () {
        $("#bars-button").click(function () {
            $("#sidebar").toggle('slide', {
                direction: 'left'
            });
        });
    });
</script>
</body>
</html>
