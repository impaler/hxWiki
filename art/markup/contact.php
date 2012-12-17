<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">

<head>
    <title>Contact the Foundation</title>
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="css/kube.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/master.css"/>
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,700,500,300italic,400italic,300' rel='stylesheet'
          type='text/css'>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>


</head>

<body>

<?php include( './sections/header.php'); ?>

<section class="wrapper">

    <div class="content-container">
<h1>Contact Us</h1>

    <div class="row">
        
        <div class="half">
            <p>We are here to answer your enquires and hear your feedback about our goals. If you would like to send an email instead of the contact form please write to;</p> 
            <span class="">contact@haxe.org</span>
        </div>

        <div class="half">
            <form method="post" action="" class="forms columnar">
                <fieldset>
                    <ul>
                        <li>
                            <label for="user_email" class="bold">Email</label>
                            <input type="email" name="user_email" id="user_email" size="40"/>
                        </li>
                        <li>
                            <label for="user_name" class="bold">Name</label>
                            <input type="text" name="user_name" id="user_name" size="40"/>
                        </li>
                        <li>
                            <label for="enquiry_type" class="bold">Enquiry Type</label>
                            <select class="width-100">
                                <option>General</option>
                                <option>Donation</option>
                                <option>Evaluation</option>
                                <option>Support Plans</option>
                            </select>
                        </li>
                        
                        <li>
                            <fieldset>
                                <section>
                                    <label class="bold">Message</label>
                                </section>
                                <textarea class="width-100" style="height: 100px;"></textarea>
                            </fieldset>
                        </li>
                        <li class="push">
                            <input type="submit" name="send" class="btn" value="Submit"/>
                        </li>
                    </ul>
                </fieldset>
            </form>
        </div>
        
    </div>
    </div>


</section>






<?php include( './sections/footer.php'); ?>

</body>

</html>