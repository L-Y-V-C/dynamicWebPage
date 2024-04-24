<?php
    include("connect.php");
    
    if(isset($_POST['register'])){
        if(1<=strlen($_POST['Names'])){
        $names = trim($_POST['Names']);
        $surNames = trim($_POST['SurNames']);
        $email = trim($_POST['Email']);
        $phone = trim($_POST['Phone']);

        /*$organizations = $_POST['organization'];
        $jobs = $_POST['job'];
        $institutions = $_POST['institution'];
        $careers = $_POST['career'];
        $languages = $_POST['language'];
        $levels = $_POST['level'];*/

        $queryMaindata = "INSERT INTO 
            maindata(names, surnames, email, phone) 
            VALUES ('$names','$surNames','$email','$phone')";
        /*$queryExperience = "INSERT INTO 
            `experience`(`id`, `userid`, `organization`, `job`) 
            VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')";
        $queryEducation = "INSERT INTO 
            `education`(`id`, `userid`, `institution`, `career`) 
            VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')";
        $queryLanguages = "INSERT INTO 
            `languages`(`id`, `userid`, `language`, `level`) 
            VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')";
        $querySkills = "INSERT INTO 
            skills(userid, skill) 
            VALUES ('$key','$')";*/

        $go1 = mysqli_query($conn, $queryMaindata);
        
        /*foreach($_POST['skill'] as $key => $value){
            $sql = "INSERT INTO 
                skills(skl) 
                VALUES (:skl)";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                'skl' => $value
            ]);
        }*/

        /*$skills = $_POST['skill'];
        
        $queryId = "SELECT id FROM maindata";
        $go = mysqli_query($conn, $queryId);
        $id = mysqli_fetch_all($go, MYSQLI_ASSOC);
        print_r($id);
        $key = max($id);
        print_r($key);
        foreach($skills as $skill){
            $querySkills = "INSERT INTO 
            skills(userid, skill) 
            VALUES ('$key','$skill')";
            $go2 = mysqli_query($conn, $querySkills);
        }*/
        
        /*if($go1){
            echo "Datos ingresados correctamente.";*
        }else{
            echo "Error al ingresar datos: ".mysqli_error($conn);
        }*/
        }
    }
?>