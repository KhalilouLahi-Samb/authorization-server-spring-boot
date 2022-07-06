# authorization-server-spring-boot

<h1> Serveur d'autorisation avec OAuth2 Jwt Spring Boot</h1>
<table border="1">
    <legend>Spécifications</legend>
   
  
      Java => 11

      Spring Boot => 2.3.4.RELEASE

    
  </table>

<p>
  <h4> Lancer les test</h4>
  Vous pouvez lancer des test en procédant comme suit
  <ul>
    <li>Démarrer votre application Spring boot </li> <br>
    <li>Ouvrir la ligne de commande Git bash de préférence vous pouvez le télécharger <a href="https://git-scm.com/downloads">ici</a></li> <br>
    <li>Maintenant que l'application a été démarré au niveau de la ligne de commande saisissez <br>
      curl --request POST http://localhost:8080/oauth/token \<br>
           --header "Authorization:Basic Y2Fyc1NlcnZpY2VDbGllbnQ6Y2Fyc1NlcnZpY2UxMjNA" \<br>
           --data "grant_type=password" \<br>
           --data "username=ibrahima" \<br>
           --data "password=ibrahima@123"
    </li> 
  </ul>
 C'est tout et là un objet Json contenant le token va être généré.
</p>
<p>
 <ul>
    <li><bold> Y2Fyc1NlcnZpY2VDbGllbnQ6Y2Fyc1NlcnZpY2UxMjNA </bold> : représente le mot de passe de l'application encodé en base64 </li>
     <li>username et password : identifiants de la personne voulant se connecter </li>
  </ul>
  
  Les données des utilisateurs ont été remplis au préalable et se trouve <a href="https://github.com/KhalilouLahi-Samb/authorization-server-spring-boot/blob/master/src/main/resources/data.sql"> ici </a> avec les détails
</p>
