<?php
    $conn = new mysqli('localhost', 'root', '', 'dynwebpage');
    
    if(isset($_POST['register'])){
        $names = trim($_POST['Names']);
        $surNames = trim($_POST['SurNames']);
        $email = trim($_POST['Email']);
        $phone = trim($_POST['Phone']);

        $stmt_insert_user = $conn->prepare("INSERT INTO 
            maindata(names, surnames, email, phone) VALUES (?, ?, ?, ?)");
        $stmt_insert_user->bind_param("ssss", $names, $surNames, $email, $phone);
        $stmt_insert_user->execute();

        $userid = $stmt_insert_user->insert_id;
        if(isset($_POST['organization'])){
            foreach($_POST['organization'] as $index => $organization){
                $job = $_POST['job'][$index];
                $stmt_insert_experience = $conn->prepare("INSERT INTO 
                    experience(userid, organization, job) 
                    VALUES (?, ?, ?)");
                $stmt_insert_experience->bind_param("iss", $userid, $organization, $job);
                $stmt_insert_experience->execute();
                $stmt_insert_experience->close();
            }
        }
        if(isset($_POST['institution'])){
            foreach($_POST['institution'] as $index => $institution){
                $career = $_POST['career'][$index];
                $stmt_insert_education = $conn->prepare("INSERT INTO 
                    education(userid, institution, career) 
                    VALUES (?, ?, ?)");
                $stmt_insert_education->bind_param("iss", $userid, $institution, $career);
                $stmt_insert_education->execute();
                $stmt_insert_education->close();
            }
        }
        if(isset($_POST['language'])){
            foreach($_POST['language'] as $index => $language){
                $level = $_POST['level'][$index];
                $stmt_insert_languages = $conn->prepare("INSERT INTO 
                    languages(userid, language, level) 
                    VALUES (?, ?, ?)");
                $stmt_insert_languages->bind_param("iss", $userid, $language, $level);
                $stmt_insert_languages->execute();
                $stmt_insert_languages->close();
            }
        }
        if(isset($_POST['skill'])){
            foreach($_POST['skill'] as $index => $skill){
                $stmt_insert_skills = $conn->prepare("INSERT INTO 
                    skills(userid, skill) 
                    VALUES (?, ?)");
                $stmt_insert_skills->bind_param("is", $userid, $skill);
                $stmt_insert_skills->execute();
                $stmt_insert_skills->close();
            }
        }
    }
    header("Location: index.php");
    exit;
?>
