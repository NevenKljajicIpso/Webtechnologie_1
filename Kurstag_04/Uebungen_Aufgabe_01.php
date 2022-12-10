<?php
class Zahl {
    private $ganzzahl;

    function __construct($ganzzahl){
        $this->ganzzahl = $ganzzahl;
    }

    public function plus($ganzzahl) {
        return $this->ganzzahl + $ganzzahl;
    }

    public function minus($ganzzahl) {
        return $this->ganzzahl - $ganzzahl;
    }

}

$zahlo = new Zahl(10);

$result1 = $zahlo->plus(20); // 30
$result2 = $zahlo->plus(100); // 110
$result3 = $zahlo->minus(50); // -40

?>

<<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Übung 1</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">
    </head>
    <body>

        <h1>Übung 1</h1>    
        <div>
            <?php echo "<h2>Result1: $result1</h2>" ?>
            <?php echo "<h2>Result2: $result2</h2>" ?>
            <?php echo "<h2>Result3: $result3</h2>" ?>
        </div>
    
        <script src="" async defer></script>
    </body>
</html>