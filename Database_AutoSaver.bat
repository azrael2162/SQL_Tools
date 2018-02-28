#Title 		:	database saver on localhost
#Language 	: 	French
#OS 		: 	Windows - Linux
#
#
#
#------------------------------------------------------------------------
#
#mySQLdump.
#need host, user, mdp, bdd
#
#Linux (mysql) --- PUTTY --- Windows(telnet)
#
#
#batch windows : 
	
	@echo off

	echo ---------------------------------
	echo ) Sauvegarde de la bdd en local (
	echo ---------------------------------

	echo Sauvegarde au :
	date /t
	echo a : 
	time /t

	set /p bdd="Donner le nom de la base de donnees :"
	set /p fichier="Donner le nom du fichier :"

	set /p user="Donner le nom de l'user : "
	set /p mdp="Donner le mdp : "
	set /p destination ="Dossier destination de sauvegarde : "
	:boucle
		c:/cheminabsolue/mysqldump - h localhost -u %user% -p %mdp% %bdd% > %fichier%

		copy %fichier %destination/%fichier%

		echo ---------------------------------
		echo )      Sauvegarde terminée   	 (
		echo ---------------------------------

		timeout /t 10 /NOBREAK
	goto boucle

	pause