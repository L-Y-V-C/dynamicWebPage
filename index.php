<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Formulario Dinámico</title>
    </head>
    <body>
        <div class="container">
            <form action="register.php" method="POST">
                <label for="Names">Nombres:</label>
                <input type="text" name="Names" id="Names" size="30" required>
                <label for="SurNames">Apellidos:</label>
                <input type="text" name="SurNames" id="SurNames" size="30" required><br>
                <label for="Email">Correo electrónico:</label>
                <input type="email" name="Email" id="Email" size="30" required>
                <label for="Phone">Teléfono:</label>
                <input type="tel" name="Phone" id="Phone" size="30" required>
                <div class="wrap">
                    <h2>Experiencia laboral</h2>
                    <a href="#" class="addBtn1">&plus;</a>
                </div>
                <div class="inputGroup1">
                </div>

                <div class="wrap">
                    <h2>Formación</h2>
                    <a href="#" class="addBtn2">&plus;</a>
                </div>
                <div class="inputGroup2">
    
                </div>
                <div class="wrap">
                    <h2>Idiomas</h2>
                    <a href="#" class="addBtn3">&plus;</a>
                </div>
                <div class="inputGroup3">
                    
                </div>
                <div class="wrap">
                    <h2>Aptitudes, Habilidades</h2>
                    <a href="#" class="addBtn4">&plus;</a>
                </div>
                <div class="inputGroup4">
    
                </div>
                <div>
                    <input type="submit" name="register" value="Registrar">
                </div>
            </form>
        </div>
        
        <script src="script.js"></script>
    </body>
</html>
