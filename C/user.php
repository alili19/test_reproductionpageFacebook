<?php
	function ident () {
		//recuperation du login et du password transmis par le formulaire
		$login=htmlspecialchars(isset($_POST['loginUtilisateur'])?trim($_POST['loginUtilisateur']):'');
		$mdp=htmlspecialchars(isset($_POST['mdpUtilisateur'])?trim($_POST['mdpUtilisateur']):'');
		$msg="Utilisateur inexistant";
		//appel à la base de données
		require ("./M/userDB.php"); 
			if (verifS_ident($login, $mdp) && (verif_bd($login, $mdp) == -1)) {
				$profil = $login; 
				$_SESSION['profil'] = $profil;
				//chargement de la page accueil
				$nexturl = "index.php?controle=user&action=accueil";
				header ("Location: " . $nexturl);
				return;
			}
			else {
				pageConnexionInscription();
			}
	}
	
	//affichage de la page d'accueil après connexion
	function accueil(){
		require("V/welcomeUser.tpl");
	}
	
	//affichage de la page d'authentification à travers l'appel aux deux pages connectionUser et addUser
	function pageConnexionInscription(){
		require("V/connectionUser.tpl");
		require("V/addUser.tpl");
	}

	function inscriptionUtilisateur(){

		//recuperation des données transmises par le formulaire
		$prenomUtilisateur=isset($_POST['prenomUtilisateur'])?trim($_POST['prenomUtilisateur']):''; 
		$nomUtilisateur=isset($_POST['nomUtilisateur'])?trim($_POST['nomUtilisateur']):'';
		$mdpUtilisateur=isset($_POST['mdpUtilisateur'])?trim($_POST['mdpUtilisateur']):'';
		$anneeNaissanceUtilisateur=isset($_POST['anneeNaissanceUtilisateur'])?trim($_POST['anneeNaissanceUtilisateur']):'';
		$moisNaissanceUtilisateur=isset($_POST['moisNaissanceUtilisateur'])?trim($_POST['moisNaissanceUtilisateur']):'';
		$jourNaissanceUtilisateur=isset($_POST['jourNaissanceUtilisateur'])?trim($_POST['jourNaissanceUtilisateur']):'';
		$sexeUtilisateur=isset($_POST['sexeUtilisateur'])?trim($_POST['sexeUtilisateur']):'';
		$loginUtilisateur=isset($_POST['loginUtilisateur'])?trim($_POST['loginUtilisateur']):'';
		require("M/userDB.php");
		creerUtilisateur($prenomUtilisateur,$nomUtilisateur,$mdpUtilisateur,$anneeNaissanceUtilisateur,$moisNaissanceUtilisateur,$jourNaissanceUtilisateur,$sexeUtilisateur,$loginUtilisateur);

		pageConnexionInscription();
	}
	
	// vérification syntaxique des saisies
	// login : composé de caractères alphanumériques et du tiret
	// mdp : composé de caractères alphanumériques et du tiret
	// En cas d'erreur, une information sur l'erreur est retournée dans $err 
	function verifS_ident($login, $mdp, $err = null) {
		if (!preg_match("`^[[:alpha:][:digit:]\-]@{1,255}$@`", $login)) {
			$err = 'erreur de syntaxe sur le login';
			return false;
		}
		if (!preg_match("`^[[:alpha:][:digit:]\-]@{1,255}$`", $mdp)) {
			$err = 'erreur de syntaxe sur le mdp.';
			return false;
		}
		return true;
	} 
	
?>