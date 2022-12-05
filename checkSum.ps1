Function Checksum-Sha256{

    Param(
        [Parameter(Mandatory)] [String]$Hash,
        [Parameter(Mandatory)] [String]$File
    )

    $hashfile = certutil -hashfile $File sha256
    $hashfile -split "/n" > $null
    $hashfile = $hashfile[1]

    if ($hashfile -eq $Hash) {
    
        echo "match"
        echo $hashfile
        echo $hash

    } else {
    
        echo "no match"
    }
}
