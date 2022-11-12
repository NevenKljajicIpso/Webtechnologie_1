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
        <table cellpadding="5" border="1">
        <?php

            for($reihe=1;$reihe<=10;$reihe++)
            {
                    echo "<tr>";
                    for($spalte=1;$spalte<=10;$spalte++) {
                        echo "<td>";
                        echo $reihe*$spalte;
                        echo "</td>";
                    }
                    echo "</tr>";
            }
            
        ?>
        </table>

        <script src="" async defer></script>
    </body>
</html>