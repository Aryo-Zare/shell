

$PSVersionTable
    # Name                           Value
    # ----                           -----
    # PSVersion                      5.1.19041.6926
    # PSEdition                      Desktop
    # PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
    # BuildVersion                   10.0.19041.6926
    # CLRVersion                     4.0.30319.42000
    # WSManStackVersion              3.0
    # PSRemotingProtocolVersion      2.3
    # SerializationVersion           1.1.0.1

dsregcmd /status


whoami       
    # uk-2025720264\user

where.exe cmd
    # C:\Windows\System32\cmd.exe


# get info on disks.
Get-PhysicalDisk


#=====================

powershell -ExecutionPolicy ByPass -c "irm https://hf.co/cli/install.ps1 | iex"

#=====================

# search for : Triton :
cd C:\code
cd sam3

Get-ChildItem -Recurse -Include *.py | Select-String "triton"

#=====================