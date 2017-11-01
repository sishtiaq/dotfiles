
# Load Modules 
## posh-git
#. 'C:\Users\sishtiaq\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'
## psreadline
if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
    Set-PSReadLineOption -EditMode Emacs
}


# alias
Set-Alias to pushd
Set-Alias fr popd