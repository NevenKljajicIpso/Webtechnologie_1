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

        <form action="" method="post">
            <textarea name="text" cols="50" rows="10"></textarea>
            <br/>
            <br/>
            <input type="submit" value="Go"/>
        </form>
        <br/>
        <h2>Ausgabe:</h2>

        <?php


            $text = $_POST['text'];

            echo $text;

        ?>

        <script src="" async defer></script>
    </body>
</html>