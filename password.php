<?php
             $pass=password_hash("password deseado", PASSWORD_BCRYPT);
              echo "password: " . $pass;
?>

#update mdl_user set password="{{out}}" where username="user";
