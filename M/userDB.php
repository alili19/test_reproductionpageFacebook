<?php

	function verif_bd($login,$mdp) { //CONNEXION D'UTILISATEUR
		
		 //connexion $link à MYSQL et sélection de la base
		require ("./M/connectionDB.php") ;
	
		$select_utilisateur= "select * from utilisateur where loginUtilisateur = '%s' and mdpUtilisateur = '%s'"; 
		$req_utilisateur = sprintf($select_utilisateur,$login,$mdp);
		
		$res_utilisateur = mysqli_query($link, $req_utilisateur)	
		or die (utf8_encode("erreur de requête : " . $req_utilisateur));
		
		if ($res_utilisateur) {
			$rowcount = mysqli_num_rows($res_utilisateur);
			//echo $rowcount;
			$profil = mysqli_fetch_assoc($res_utilisateur);
			//var_dump($profil); 
			return -1;
		} 
		else {
			$profil = null;
			echo 'Echec de connexion';
			return 0;
		}
	}
	
	
	
	//insertion de l'utilisateur dans la base de données
	function creerUtilisateur($prenomUtilisateur,$nomUtilisateur, $mdpUtilisateur,$anneeNaissanceUtilisateur,$moisNaissanceUtilisateur,$jourNaissanceUtilisateur,$sexeUtilisateur,$loginUtilisateur){
		require ("./M/connectionDB.php") ; //connexion $link à MYSQL et sélection de la base
			 	 	
			$insert_user= "insert into utilisateur(prenomUtilisateur,nomUtilisateur, mdpUtilisateur,naissanceUtilisateur, sexeUtilisateur,loginUtilisateur) values ('%s','%s','%s','%04d-%02d-%02d','%d','%s')"; 

			//'%04d-%02d-%02d' la date de naissance de l'utilisateur est convertie au format Date
			$req_user=sprintf($insert_user, $prenomUtilisateur,$nomUtilisateur, $mdpUtilisateur,$anneeNaissanceUtilisateur,$moisNaissanceUtilisateur,$jourNaissanceUtilisateur,$sexeUtilisateur,$loginUtilisateur );
			
			$res_user = mysqli_query($link, $req_user)	
				or die (utf8_encode("erreur de requête : " . $req_user));
	}

?>