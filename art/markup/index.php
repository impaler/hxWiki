<?php ?>

<!DOCTYPE html>
<html>

<head>
    <title>Haxe Foundation</title>
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="css/kube.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/master.css"/>

    <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,700,500,300italic,400italic,300' rel='stylesheet'
          type='text/css'>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="js/dropdown.js"></script>

    <script src="js/responsiveslides.min.js"></script>

    <script>
        $(function ()
          {
              $("#home-slider").responsiveSlides({
                                                     auto: true,
                                                     pager: true,
                                                     nav: false,
                                                     timeout: 6000,
                                                     speed: 800
                                                 });
          });
    </script>


</head>

<body>

<div class="gradient">

    <?php include('./sections/header.php'); ?>



    <div class="home-tagline">

        <p>The Haxe Foundation supports and further develops the
            Haxe programming language and the core technologies built around it.</p>

    </div>

    <section class="wrapper">

        <div class="row">

            <div class="home-slideshow">

                <div class="home-slider-container">

                    <ul id="home-slider">
                        <li>
                            <a href="/about.php">
                                <img src="images/slideshow-one-language-everywhere.jpg"/></a>
                        </li>
                        <li>
                            <a href="http://www.haxejs.org" target="_blank">
                                <img src="images/slideshow-html5.jpg"/></a>
                        </li>
                        <li>
                            <a href="http://www.haxenme.org" target="_blank">
                                <img src="images/slideshow-haxenme.jpg"/></a>
                        </li>
                        <li>
                            <a href="http://wwx.haxe.org/" target="_blank">
                                <img src="images/slideshow-wwx.jpg"/></a>
                        </li>
                    </ul>

                </div>

            </div>

        </div>

        <ul class="block-three" id="intro">

            <li>
                <div class="inner home-ads">
                    <div class="home-content-sections ">
                        <h3>Support Haxe</h3>

                        <h4 class="subheader">We are proudly working to support the entire Haxe ecosystem by funding
                            it's core
                            technologies.</h4>

                        <p>Sponsor us and become an important part of Haxe's long term and immediate goals. One of
                            Haxe's strengths has always been in it's community who continue to use and improve it.</p>

                    </div>
                    <a href="/donate.php" class="btn btn-round home-btn"><span>Donate</span></a>
                </div>
            </li>
            <li>
                <div class="inner home-ads">
                    <div class="home-content-sections">
                        <h3>Evaluating Haxe?</h3>

                        <h4 class="subheader">If you are currently evaluating Haxe from either a business or technical
                            point of
                            view, you can contact us.</h4>

                        <p>We can help you either directly, or by putting you in touch with a consultant that will be
                            able to
                            help you understand how your company can benefit by using Haxe.</p>

                    </div>
                    <a href="/why_haxe.php" class="btn btn-round home-btn"><span>Why Use Haxe?</span></a>
                </div>
            </li>
            <li>
                <div class="inner home-ads">
                    <div class="home-content-sections">
                        <h3>Support Plans</h3>

                        <h4 class="subheader">We offer first class professional support from the people who work on Haxe
                            itself.</h4>

                        <p>Become a part of supporting Haxe and get the level of support you need. Our support plans
                            cover many levels and can be adapted to your specific needs.</p>

                    </div>
                    <a href="/support.php" class="btn btn-round home-btn"><span>View our Plans</span></a>
                </div>
            </li>

        </ul>

    </section>

</div>




<?php include('./sections/footer.php'); ?>

</body>

</html>