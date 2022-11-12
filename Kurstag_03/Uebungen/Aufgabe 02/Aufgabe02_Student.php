<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">
    </head>
    <body>

        <h1>Zufallszahlen</h1>
        <?php

            define("RANDOM_NUM", rand() . "<br/>");

            for ($counter = 1; $counter <= 10; $counter++) {
                echo RANDOM_NUM;
            }
            
        ?>
        
        <script src="" async defer></script>
    </body>
</html>