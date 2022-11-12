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

    <form name="form" action="" method="post">
        <input type="number" name="primeNumber" placeholder="Your Number">
    </form>
    <br/>

    <?php

        function check_prime($num) {
            if ($num == 1)
                return 0;
            for ($i = 2; $i <= $num/2; $i++) {
                if ($num % $i == 0)
                    return 0;
            }
            return 1;
        }

        $num = $_POST['primeNumber'];
        $flag_val = check_prime($num);

        if ($flag_val == 1)
            echo "Nummer ist eine Primzahl";
        else
            echo "Nummer ist eine keine Primzahl"

    ?>

        <script src="" async defer></script>
    </body>
</html>