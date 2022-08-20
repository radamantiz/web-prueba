 <?php
if(isset($_REQUEST['errorEmail'])){ ?>
         <script> alert('El correo no existe, por favor verifique.')</script>
<?php }

if(isset($_REQUEST['emaiIncorrecto'])){ ?>
    <script> alert('El usuario o la contraseña son incorrectos, intenta de nuevo.')</script>
<?php } 

if(isset($_REQUEST['errorRegistro'])){ ?>
    <script> alert('Error al registrar, intenta de nuevo más tarde.')</script>
<?php } 

if(isset($_REQUEST['errorCorreoConfirm'])){ ?>
    <script> alert('Los correos no coinciden, intentalo de nuevo.')</script>
<?php }

if(isset($_REQUEST['errorContraseñaConfirm'])){ ?>
    <script> alert('Las contraseñas no coinciden, intentalo de nuevo.')</script>
<?php }

if(isset($_REQUEST['userExistente'])){ ?>
    <script> alert('ya existe un usuario con este documento o correo, intentalo de nuevo.')</script>
<?php }

if(isset($_REQUEST['email'])){ ?>
    <script> alert('Su clave fue cambiada, revise su correo.')</script>          
<?php } ?>