<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Facebook-Connexion</title>
  <link rel="stylesheet" href="V/style/style.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="pageConnexion">
		<div id="imgFacebook"></div>
		<form method="post" name="formConnexion" action="index.php?controle=user&action=ident">
		<div id="loginMdp">	
			<div id="login">	
				<div>
						<label for="loginUtilisateur" style="color:#fff;">Adresse e-mail ou mobile</label>
				</div>
						<input type="text"  name="loginUtilisateur" placeholder="Votre login" required>
			</div>
			<div id="mdp">
				<div>
						<label for="mdpUtilisateur" style="color:#fff;">Mot de passe</label>
				</div>
						<input type="password" name="mdpUtilisateur" placeholder="Votre mot de passe" required>
			</div>
			<div id="btnConnexion">
					<div>
						<label for="btnConnexion" style="color:rgb(59, 89, 152)">Mot de passe</label>
				</div>
			 		<input type="submit" style="background-color:#4267b2;color:#fff;border-color:#4267b2;" value="Connexion">
			</div>
			<div id="mdpOublie">
		  		<p><a href="https://www.facebook.com/login/identify?ctx=recover&lwv=110">Informations de compte oubliées ?</a></p>
			</div>
		  </div>
		</form>
	</div>
</body>
</html>