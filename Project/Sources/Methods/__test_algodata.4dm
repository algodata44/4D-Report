//%attributes = {}

C_LONGINT:C283($zone)
C_BLOB:C604($blob;$new_blob)

$zone:=QR New offscreen area:C735
QR SET REPORT TABLE:C757($zone;Table:C252(->[Society:2]))
QR INSERT COLUMN:C748($zone;1;->[Society:2]Name:2)
QR REPORT TO BLOB:C770($zone;$blob)
QR DELETE OFFSCREEN AREA:C754($zone)

$new_blob:=QR_openBlob ($blob)
