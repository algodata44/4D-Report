//%attributes = {}

If (False:C215)
	  // ----------------------------------------------------
	  // Nom utilisateur (OS) : guillaume belleguic
	  // Date et heure : 07/09/20, 10:59:15
	  // ----------------------------------------------------
	  // Méthode :
	qr_open_blob 
	  // Description
	  // 
	  //
	  // Paramètres
	  // ----------------------------------------------------
End if 

C_BLOB:C604($1;$blob)
C_LONGINT:C283($zone)

$zone:=QR New offscreen area:C735
QR SET REPORT TABLE:C757($zone;Table:C252(->[Society:2]))
QR INSERT COLUMN:C748($zone;1;->[Society:2]Name:2)
QR REPORT TO BLOB:C770($zone;$blob)
QR DELETE OFFSCREEN AREA:C754($zone)

00_OPEN_WIZARD ("";$blob)
