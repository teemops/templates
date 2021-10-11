# This powershell script lists files available

Param(
  [Parameter(Position=3)][string] $Directory='Z:\BACKUPS',
  [Parameter(Position=4)][string] $Filespec='*.bak',
  [Parameter(Position=6)][switch] $MostRecentOnly=$false,
  [Parameter(Position=6)][switch] $MostRecentNumber=1
)

if($MostRecentOnly){
  $Files = Get-ChildItem -Path $Directory -Name $Filespec | Sort-Object | Select-Object -Last $MostRecentNumber
}else{
  $Files = Get-ChildItem -Path $Directory -Name $Filespec | Sort-Object
}

foreach($file in $Files){
  Write-Output ($Directory + "\" + $file) " uploaded to " ($Bucket + ":\" + $Bucket_Prefix + "\" + $file)
}
