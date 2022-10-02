﻿function Invoke-BloodHound
{
    [CmdletBinding(PositionalBinding = $false)]
    param(
        [Alias("c")]
        [String[]]
        $CollectionMethod = [String[]]@($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGYAYQB1AGwAdAA=')))),
        [Alias("d")]
        [String]
        $Domain,
        [Alias("s")]
        [Switch]
        $SearchForest,
        [Switch]
        $Stealth,
        [String]
        $LdapFilter,
        [String]
        $DistinguishedName,
        [String]
        $ComputerFile,
        [ValidateScript({ Test-Path -Path $_ })]
        [String]
        $OutputDirectory = $( gl ),
        [ValidateNotNullOrEmpty()]
        [String]
        $OutputPrefix,
        [String]
        $CacheName,
        [Switch]
        $MemCache,
        [Switch]
        $RebuildCache,
        [Switch]
        $RandomFilenames,
        [String]
        $ZipFilename,
        [Switch]
        $NoZip,
        [String]
        $ZipPassword,
        [Switch]
        $TrackComputerCalls,
        [Switch]
        $PrettyPrint,
        [String]
        $LdapUsername,
        [String]
        $LdapPassword,
        [string]
        $DomainController,
        [ValidateRange(0, 65535)]
        [Int]
        $LdapPort,
        [Switch]
        $SecureLdap,
        [Switch]
        $DisableCertVerification,
        [Switch]
        $DisableSigning,
        [Switch]
        $SkipPortCheck,
        [ValidateRange(50, 5000)]
        [Int]
        $PortCheckTimeout = 500,
        [Switch]
        $SkipPasswordCheck,
        [Switch]
        $ExcludeDCs,
        [Int]
        $Throttle,
        [ValidateRange(0, 100)]
        [Int]
        $Jitter,
        [Int]
        $Threads,
        [Switch]
        $SkipRegistryLoggedOn,
        [String]
        $OverrideUsername,
        [String]
        $RealDNSName,
        [Switch]
        $CollectAllProperties,
        [Switch]
        $Loop,
        [String]
        $LoopDuration,
        [String]
        $LoopInterval,
        [ValidateRange(500, 60000)]
        [Int]
        $StatusInterval,
        [Alias("v")]
        [ValidateRange(0, 5)]
        [Int]
        $Verbosity,
        [Alias("h")]
        [Switch]
        $Help,
        [Switch]
        $Version
    )
    ${___/==\__/\/=\/=\} = New-Object System.Collections.Generic.List[System.Object]
    if ($CollectionMethod)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEMAbwBsAGwAZQBjAHQAaQBvAG4ATQBlAHQAaABvAGQAcwA='))));
        foreach (${/=\/===\/\___/\__} in $CollectionMethod)
        {
            ${___/==\__/\/=\/=\}.Add(${/=\/===\/\___/\__});
        }
    }
    if ($Domain)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAbwBtAGEAaQBuAA=='))));
        ${___/==\__/\/=\/=\}.Add($Domain);
    }
    if ($SearchForest)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAZQBhAHIAYwBoAEYAbwByAGUAcwB0AA=='))))    
    }
    if ($Stealth)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAdABlAGEAbAB0AGgA'))))
    }
    if ($LdapFilter)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAARgBpAGwAdABlAHIA'))));
        ${___/==\__/\/=\/=\}.Add($LdapFilter);
    }
    if ($DistinguishedName)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAaQBzAHQAaQBuAGcAdQBpAHMAaABlAGQATgBhAG0AZQA='))))
        ${___/==\__/\/=\/=\}.Add($DistinguishedName)
    }
    if ($ComputerFile)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEMAbwBtAHAAdQB0AGUAcgBGAGkAbABlAA=='))));
        ${___/==\__/\/=\/=\}.Add($ComputerFile);
    }
    if ($OutputDirectory)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE8AdQB0AHAAdQB0AEQAaQByAGUAYwB0AG8AcgB5AA=='))));
        ${___/==\__/\/=\/=\}.Add($OutputDirectory);
    }
    if ($OutputPrefix)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE8AdQB0AHAAdQB0AFAAcgBlAGYAaQB4AA=='))));
        ${___/==\__/\/=\/=\}.Add($OutputPrefix);
    }
    if ($CacheName)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEMAYQBjAGgAZQBOAGEAbQBlAA=='))));
        ${___/==\__/\/=\/=\}.Add($CacheName);
    }
    if ($NoSaveCache)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE0AZQBtAEMAYQBjAGgAZQA='))));
    }
    if ($RebuildCache)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFIAZQBiAHUAaQBsAGQAQwBhAGMAaABlAA=='))));
    }
    if ($RandomFilenames)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFIAYQBuAGQAbwBtAEYAaQBsAGUAbgBhAG0AZQBzAA=='))));
    }
    if ($ZipFileName)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFoAaQBwAEYAaQBsAGUATgBhAG0AZQA='))));
        ${___/==\__/\/=\/=\}.Add($ZipFileName);
    }
    if ($NoZip)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE4AbwBaAGkAcAA='))));
    }
    if ($ZipPassword)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFoAaQBwAFAAYQBzAHMAdwBvAHIAZAA='))));
        ${___/==\__/\/=\/=\}.Add($ZipPassword)
    }
    if ($TrackComputerCalls)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFQAcgBhAGMAawBDAG8AbQBwAHUAdABlAHIAQwBhAGwAbABzAA=='))))
    }
    if ($PrettyPrint)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFAAcgBlAHQAdAB5AFAAcgBpAG4AdAA='))));
    }
    if ($LdapUsername)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAAVQBzAGUAcgBuAGEAbQBlAA=='))));
        ${___/==\__/\/=\/=\}.Add($LdapUsername);
    }
    if ($LdapPassword)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAAUABhAHMAcwB3AG8AcgBkAA=='))));
        ${___/==\__/\/=\/=\}.Add($LdapPassword);
    }
    if ($DomainController)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAbwBtAGEAaQBuAEMAbwBuAHQAcgBvAGwAbABlAHIA'))));
        ${___/==\__/\/=\/=\}.Add($DomainController);
    }
    if ($LdapPort)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAAUABvAHIAdAA='))));
        ${___/==\__/\/=\/=\}.Add($LdapPort);
    }
    if ($SecureLdap)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAZQBjAHUAcgBlAEwAZABhAHAA'))));
    }
    if ($DisableCertVerification) 
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAaQBzAGEAYgBsAGUAQwBlAHIAdABWAGUAcgBpAGYAaQBjAGEAdABpAG8AbgA='))))    
    }
    if ($DisableSigning)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAaQBzAGEAYgBsAGUAUwBpAGcAbgBpAG4AZwA='))));
    }
    if ($SkipPortCheck)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAawBpAHAAUABvAHIAdABDAGgAZQBjAGsA'))));
    }
    if ($PortCheckTimeout)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFAAbwByAHQAQwBoAGUAYwBrAFQAaQBtAGUAbwB1AHQA'))))
        ${___/==\__/\/=\/=\}.Add($PortCheckTimeout)
    }
    if ($SkipPasswordCheck)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAawBpAHAAUABhAHMAcwB3AG8AcgBkAEMAaABlAGMAawA='))));
    }
    if ($ExcludeDCs)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEUAeABjAGwAdQBkAGUARABDAHMA'))))
    }
    if ($Throttle)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFQAaAByAG8AdAB0AGwAZQA='))));
        ${___/==\__/\/=\/=\}.Add($Throttle);
    }
    if ($Jitter -gt 0)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEoAaQB0AHQAZQByAA=='))));
        ${___/==\__/\/=\/=\}.Add($Jitter);
    }
    if ($Threads)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFQAaAByAGUAYQBkAHMA'))))
        ${___/==\__/\/=\/=\}.Add($Threads)
    }
    if ($SkipRegistryLoggedOn)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAawBpAHAAUgBlAGcAaQBzAHQAcgB5AEwAbwBnAGcAZQBkAE8AbgA='))))
    }
    if ($OverrideUserName)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE8AdgBlAHIAcgBpAGQAZQBVAHMAZQByAE4AYQBtAGUA'))))
        ${___/==\__/\/=\/=\}.Add($OverrideUsername)
    }
    if ($RealDNSName)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFIAZQBhAGwARABOAFMATgBhAG0AZQA='))))
        ${___/==\__/\/=\/=\}.Add($RealDNSName)
    }
    if ($CollectAllProperties)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEMAbwBsAGwAZQBjAHQAQQBsAGwAUAByAG8AcABlAHIAdABpAGUAcwA='))))
    }
    if ($Loop)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAbwBvAHAA'))))
    }
    if ($LoopDuration)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAbwBvAHAARAB1AHIAYQB0AGkAbwBuAA=='))))
        ${___/==\__/\/=\/=\}.Add($LoopDuration)
    }
    if ($LoopInterval)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAbwBvAHAASQBuAHQAZQByAHYAYQBsAA=='))))
        ${___/==\__/\/=\/=\}.Add($LoopInterval)
    }
    if ($StatusInterval)
    {
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAdABhAHQAdQBzAEkAbgB0AGUAcgB2AGEAbAA='))))
        ${___/==\__/\/=\/=\}.Add($StatusInterval)
    }
    if ($Verbosity)
    {
        ${___/==\__/\/=\/=\}.Add("-v");
        ${___/==\__/\/=\/=\}.Add($Verbosity);
    }    
    if ($Help)
    {
        ${___/==\__/\/=\/=\}.clear()
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEgAZQBsAHAA'))));
    }
    if ($Version)
    {
        ${___/==\__/\/=\/=\}.clear();
        ${___/==\__/\/=\/=\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFYAZQByAHMAaQBvAG4A'))));
    }
    ${_/=\/\_/\__/=\___} = [string[]]${___/==\__/\/=\/=\}.ToArray()
	${____/\_/=\__/\_/\} = New-Object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String(${_/\/=======\/==\/}),[IO.Compression.CompressionMode]::Decompress)
	${___/==\/=\/=\/=\_} = New-Object Byte[](1051648)
	${____/\_/=\__/\_/\}.Read(${___/==\/=\/=\/=\_}, 0, 1051648) | Out-Null
	${_/==\____/=======} = [Reflection.Assembly]::Load(${___/==\/=\/=\/=\_})
	${/====\_/\/\_/===\} = [Reflection.BindingFlags] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALABTAHQAYQB0AGkAYwA=')))
	${_/=\/==\/=\__/\_/} = @()
	${_/==\____/=======}.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAHMAdAB1AHIAYQAuAEEAcwBzAGUAbQBiAGwAeQBMAG8AYQBkAGUAcgA='))), $false).GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAYQBjAGgA'))), ${/====\_/\/\_/===\}).Invoke($Null, @())
	${_/==\____/=======}.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAGEAcgBwAGgAbwB1AG4AZAAuAFAAcgBvAGcAcgBhAG0A')))).GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHYAbwBrAGUAUwBoAGEAcgBwAEgAbwB1AG4AZAA=')))).Invoke($Null, @(,${_/=\/\_/\__/=\___}))
}