# Workflow Helpers
These are some Powershell scripts that simplify my daily workflow

Note that the below Requirements will be automatically installed using WinGet

## Requirements
- WinGet
- [fd](https://github.com/sharkdp/fd) (automatically installed)
- [fzf](https://github.com/junegunn/fzf) (automatically installed)

## Setup
First clone this repo anywhere you want.

Then, open your Powershell profile, which should be located at *C:\Users\<your user name>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1*

In your profile file load the `workflow-helper.ps1` script with the following line:

```ps1
# Load workflow-helper script(s)
. "<path to this repo>\workflow-helper.ps1"
```
Replace `<path to this repo>` with the actual system path to the repo and you shoud be all set. Restart powershell in a new instance and you should have the workflow commandlets at your disposal.

## The Commandlets

### Dotnet Commandlets

There are six dotnet commandlets, three for Development and three for Production. These commands will use `fd` to find the `.csproj` files recursively in the current directory, send the list to `fzf` for selection, and then use that project to run the associated `dotnet` command.

- Dotnet-Build-Dev (alias `dbdev`)
- Dotnet-Run-Dev (alias `drdev`)
- Dotnet-Watch-Dev (alias `dwdev`)
- Dotnet-Build-Prod (alias `dbprod`)
- Dotnet-Run-Prod (alias `drprod`)
- Dotnet-Watch-Prod (alias `dwprod`)

### NPM Commandlets

The NPM commandlets each look for `package.json` files recursively, using `fd`, in the current directory. It sends the list to `fzf` for selection, and then uses that file to run the associated `npm` command. `Npm-Run` will also send the list of scripts to `fzf` for selection. `Npm-Do` is general use for any command passed to `npm` normally.

- Npm-Run
- Npm-Start
- Npm-Install
- Npm-Do

### Quick Directories

The other commandets are for quick directory navigation.

- Open-Directory (alias `od`)
- Open-Project (alias `pjo`)

To use the `Open-Project` command, set the `$Env:REPO_ROOT` environment variable, most likely in your powershell profile.
