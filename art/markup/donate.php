<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">

<head>
    <title>Donate to the Haxe Foundation</title>
    <meta charset="utf-8">
    
    <?php include('./sections/styles.php'); ?>
    <?php include('./sections/scripts.php'); ?>

</head>

<body>


<div class="gradient">
    <?php include('./sections/header.php'); ?>


    <section class="wrapper">

        <div class="content-container">
            <h1>Donate</h1>


            <div class="row">


                <div class="half justify">
                    
                    <p>The Haxe Foundation is accepting donations (free amount) from individuals and small companies. If
                        you are a larger company, you might prefer to get one of our <a href="/support" class="intern">Support
                            Plans</a> packages, and become member of the Foundation.</p>

                    <p>All the money from donation will be affected to <a href="/projects" class="intern">Foundation
                            Supported Projects</a></p>
                            
                    <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="hosted_button_id" value="BRFRPK8TYXYEC">
                        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" border="0"
                               name="submit" alt="PayPal - The safer, easier way to pay online!">
                        <img alt="" style="border:none" src="https://www.paypalobjects.com/fr_FR/i/scr/pixel.gif"
                             width="1" height="1">
                    </form>

                    <p>If you are planning to give 500€/$500+, please also send us a <b>logo</b> of your company that we
                        can add as part of the Haxe Foundation Supporters.</p>
                    
                </div>
                
                <div class="half justify">
                    
                    <h2>Promote Haxe</h2>

                    <p>There are other ways of supporting us besides donations, help us Promote Haxe by displaying our
                        logos and linking to our site. See the following page for resources.</p>
                    <a href="promote.php" class="btn btn-round home-btn"><span>Promote Haxe</span></a>
            
                </div>




            </div>


        </div>


    </section>


</div>

<?php include('./sections/footer.php'); ?>

</body>

</html>