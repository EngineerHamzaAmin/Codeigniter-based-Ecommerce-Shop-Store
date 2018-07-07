<!DOCTYPE html>
<html lang="en"
    <?php if (isset($use_angularjs)) {
        echo " ng-app='myApp'";
    } ?>
>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<?= base_url(); ?>favicon.ico">

    <title>CI SHOP</title>

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url(); ?>dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<?= base_url(); ?>assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?= base_url(); ?>/css/jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="<?= base_url();?>assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<?= base_url(); ?>assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php if (isset($use_featherlight)): ?>
        <link href="<?= base_url() ?>css/featherlight.min.css" type="text/css" rel="stylesheet"/>
    <?php endif; ?>
    <?php if (isset($use_angularjs)) {
        echo '<script type="text/javascript" src="https://code.angularjs.org/1.4.9/angular.min.js"></script>';
    } ?>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?= base_url(); ?>">Home</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <?= Modules::run("store_categories/_draw_top_nav"); ?>
        </div><!--/.navbar-collapse -->
    </div>
</nav>

<div class="container">
    <div id="stage">
        <!-- Loading view file if is set-->
        <?php
        echo Modules::run('sliders/_attempt_draw_slider');

        if ($customer_id > 0) {
            include('customer_panel_top_nav.php');
        }

        if (isset($page_content)) {
            echo nl2br($page_content);

            if (!isset($page_url)) {
                $page_url = 'homepage';
            }

            if ($page_url == "") {
                require_once('content_homepage.php');
            } elseif ($page_url == "contactus") {
                //load up a contact form
                Modules::run('contactus/_draw_form');
            }

        } elseif (isset($view_file)) {
            $this->load->view($view_module . '/' . $view_file);
        }
        ?>

    </div>

</div>
<div class="container">
    <hr>
    <footer>
        <p>Hamza Amin &copy; 2018 Company, Inc.</p>
    </footer>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<?= base_url();?>assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="<?= base_url(); ?>dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<?= base_url(); ?>assets/js/ie10-viewport-bug-workaround.js"></script>
<?php if (isset($use_featherlight)): ?>
    <script src="<?= base_url() ?>js/featherlight.min.js" type="text/javascript" charset="utf-8"></script>
<?php endif; ?>
</body>
</html>
