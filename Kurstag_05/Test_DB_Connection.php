<?php

    class DBConnection {
        
        public function test() {

        $dbh = NULL;

        try {
            $dbh = new PDO("mysql:host=localhost;dbname=school-db", 'school_db_user', '123456');
        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage() . "</br>";
        }

        $courses = $dbh->query("SELECT course_name FROM courses");

        foreach ($courses as $course) {
            echo "Kurs: " . $course['course_name'] . "</br>";
        }
        // close db connection
        $dbh = null;

        }
    }

    $connection = new DBConnection();
    $connection->test();

?>