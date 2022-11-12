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
            
            for ($h1 = 1; $h1 <= 6; $h1++) {
                echo "<h1>Kapitel $h1</h1><br/>";
                for ($h2 = 1; $h2 <= 3; $h2++) {
                    echo "<h2>Kapitel $h1.$h2</h2><br/>";
                }
            }

        ?>
        
        <script src="" async defer></script>
    </body>
</html>