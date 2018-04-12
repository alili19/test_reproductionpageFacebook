<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Inscription</title>
   <link rel="stylesheet" href="V/style/style.css">
<script>
	function valider (formulaire){

	 if (formulaire.elements['loginUtilisateur'].value != formulaire.elements['loginUtilisateurConfirm'].value)
		{
			alert ( "Vos logins sont differents" );
			formulaire.elements['loginUtilisateur'].style.borderColor = "red";
			formulaire.elements['loginUtilisateurConfirm'].style.borderColor = "red";
			return false;
		}
		else{
			return true;	
		}
	}

</script>	

</head>


<body>
	<div id="pageInscription" class="container">
		<div id="titrePage">
			<h1 class="h1">Inscription</h1>
			<h3 class="h3">C'est gratuit ( et ça le restera toujours)</h3>
		</div>
		<form onsubmit="return valider(this);" method="post" action="index.php?controle=user&action=inscriptionUtilisateur" name="formInscription">
				<div class="form-group">
					<div class="col-md-5">
						<input type="text" name="prenomUtilisateur" class="form-control" id="prenomUtilisateur" placeholder="Prénom" required>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-5">
						<input type="text" name="nomUtilisateur" class="form-control" id="nomUtilisateur" placeholder="Nom de famille" required>
					</div>
				</div>
			
			<div class="form-group">
				<div class="col-md-10">
					<input type="text" class="form-control" name="loginUtilisateur" id="loginUtilisateur" placeholder="Numéro de mobile ou email" required>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-10">
					<input type="text" class="form-control" name="loginUtilisateurConfirm" id="loginUtilisateurConfirm" placeholder="Confirmer numéro de mobile ou email" required>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-10">
					<input type="text" class="form-control" name="mdpUtilisateur" id="mdpUtilisateur" placeholder="Nouveau mot de passe" required>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-10">
					<div class="col-md-3 col-xs-4">
						 <select class="form-control" name="anneeNaissanceUtilisateur">
						 	<?php
								for($annee=1900; $annee<=2018; $annee++)
								{
								  echo '<option>'.$annee.'</option>';
								 }
							 ?>
						 </select>
					</div>
					<div class="col-md-3 col-xs-4">
						  <select class="form-control" name="moisNaissanceUtilisateur">
							   	<?php
								for($jour=1; $jour<=12; $jour++)
								{
								  echo '<option>'.$jour.'</option>';
								 }
							 ?>
						 </select>
					 </div>
					 <div class="col-md-3 col-xs-4">
						  <select class="form-control" name="jourNaissanceUtilisateur">
							<?php
								for($jour=1; $jour<=31; $jour++)
								{
								  echo '<option>'.$jour.'</option>';
								 }
							 ?>
						 </select>
					 </div>
					<p><a href="">Pourquoi indiquer ma date de naissance ?</a></p>
				</div>
			</div>

			<div id="sexe" class="col-md-10">
					<div class="col-md-3">
					  	<input class="radio-inline" type="radio" name="sexeUtilisateur" id="sexeFemme" value=0> Femme
					</div>
			
					<div class="col-md-3">	
					 	<input class="radio-inline" type="radio" name="sexeUtilisateur" id="sexeHomme" value=1> Homme
					</div>
			</div>

			<div id="DCU" class="col-md-12" >
				<p>
					En cliquant sur Inscription, vous acceptez nos <a href="https://fr-fr.facebook.com/legal/terms">Conditions</a> 
					et indiquez que vous avez lu notre <a href="https://fr-fr.facebook.com/policies/cookies/">Politique d'utilisation des données</a>, y compris notre 
					<a href="https://fr-fr.facebook.com/policies/cookies/">Utilisations des cookies</a>
					Vous pourrez recevoir des notifications textos de la part de Facebook et pouvez vous désabonner à tout moment.
				</p>
			</div>
			<div class="col-md-10">
				<input type="submit" class="btn btn-success" value="Inscription">
			</div>
		</form>
	</div>

</body>
</html>