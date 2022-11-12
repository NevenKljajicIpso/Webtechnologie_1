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
        <?php

            $array1 = array("Kapitel 1", "Kapitel 2", "Kapitel 3", "Kapitel 4","Kapitel 5", "Kapitel 6",);
            
            foreach ($array1 as $value) {
                echo "<h1>" . $value . "</h1>" . "<br/>";
                echo "<h2>" . $value . ".1" . "</h2>" . "<br/>";
                echo "<h2>" . $value . ".2" . "</h2>" . "<br/>";
                echo "<h2>" . $value . ".3" . "</h2>" . "<br/>";
              }

        ?>
        
        <script src="" async defer></script>
    </body>
</html>