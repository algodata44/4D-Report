//%attributes = {"shared":true}

If (False:C215)
	  // ----------------------------------------------------
	  // Nom utilisateur (OS) : guillaume belleguic
	  // Date et heure : 07/09/20, 10:59:15
	  // ----------------------------------------------------
	  // Méthode :
	QR_openBlob 
	  // Description
	  // Open 4D Report tool with a blob
	  //
	  // Paramètres
	  // ----------------------------------------------------
End if 

C_BLOB:C604($1;$blob)

$blob:=$1

00_OPEN_WIZARD ("_run";$blob)

$0:=C_QR_INITBLOB
