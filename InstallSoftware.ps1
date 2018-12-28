If(Test-Path -Path "$env:ProgramData\Chocolatey") {
    $Packages = 'googlechrome', 'notepadplusplus', 'adobereader', 'firefox', '7zip', 'sysinternals', 'microsoft-teams.install'
ForEach ($PackageName in $Packages)
    {
    choco install $PackageName -y
    }
}
Else {
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
$Packages = 'googlechrome', 'notepadplusplus', 'adobereader', 'firefox', '7zip', 'sysinternals', 'microsoft-teams.install'
ForEach ($PackageName in $Packages)
    {
        choco install $PackageName -y
    }
}
