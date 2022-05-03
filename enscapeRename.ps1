#test if we need void folder
if(Test-Path * -Filter *.png -Exclude *_*) {
#create void folder
$voidDay = Get-Date -Format yyyy.MM.dd
$voidTime = Get-Date -Format HH.mm
$voidName = 'Void ' + $voidDay + " " + $voidTime
New-Item -Name $voidName -ItemType "directory"
}
#move all renamed images to void folder
gci * -Filter *.png -Exclude *_* | % {
	Move-Item $_.Name -Destination .\$voidName
}
#strip out enscape bullshit
gci -Filter *.png | % {
	$pos = $_.Name.IndexOf("_")
	$trimmedName = $_.Name.Substring($pos+1)
	$pos2 = $trimmedName.IndexOf("_")
	$trimmedName2 = $trimmedName.Substring($pos2+1)
	echo $trimmedName2
    rni $_.Name $trimmedName2
	}