# This powershell script uploads files to S3

Param(
  [Parameter(Position=1)][string] $Bucket,
  [Parameter(Position=2)][string] $Bucket_Prefix,
  [Parameter(Position=3)][string] $Directory='Z:\BACKUPS',
  [Parameter(Position=4)][string] $Filespec='*.bak',
  [Parameter(Position=6)][switch] $MostRecentOnly=$false,
  [Parameter(Position=7)][int] $MostRecentNumber=1
)
if ($Bucket -eq $null) {
$Bucket = read-host -Prompt "Please enter a Bucket Name" 
}
if ($Bucket_Prefix -eq $null) {
$Bucket_Prefix = read-host -Prompt "Please enter a Bucket Prefix or Folder" 
}

$Folders=Get-ChildItem -Path $Directory
foreach($folder in $Folders){
    Write-Output ("Checking Folder: "+$Directory + "\" + $folder) 
    $fullFolder=$Directory + "\" + $folder
    if($MostRecentOnly){
        $Files = Get-ChildItem -Path $fullFolder -Name $Filespec | Sort-Object | Select-Object -Last $MostRecentNumber
    }else{
        $Files = Get-ChildItem -Path $fullFolder -Name $Filespec | Sort-Object -
    }

    foreach($file in $Files){
      Write-Output ("Backing up Item: "+ $fullFolder + "\" + $file)
        Write-S3Object -BucketName $Bucket -File ($fullFolder + "\" + $file) -Key ($Bucket_Prefix + "/" + $file) -ServerSideEncryption AES256 -region ap-southeast-2
        Write-Output ("Completed Item:" + $fullFolder + "\" + $file) 
    }
}


