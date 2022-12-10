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