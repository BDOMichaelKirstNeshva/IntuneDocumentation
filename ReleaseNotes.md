# Release Notes

## 2.0.11 - 30.01.202 - thomas Kurth

- Improve Titles in the ESP Page Section

## 2.0.1-10 - 30.01.2020 - Thomas Kurth

- Various Bugfixing due to PSModule generation

## 2.0.0 - 29.01.2020 - Thomas Kurth

- Migrated to PSModule
- Published to PSGallery

## Old History (Before PSModule)

001: First Version
002: SetRegistryKey Function now allows to set empty values
003: Change CreateFolder Function to first create folder and then write the log. Otherwise whe function can fail, when the logfile folder doesn't exist.
004: Improved Log Action
005: Version is now taken from Variable, Log can be written to Windows Event, 
        ScriptName does no longer contain Script FileName, which is now available in $CurrentFileName 
006: ScriptPath not allways read correctly. Sometimes it was a relative path.
007: Better formating and Option to specify the Save As location
008: Jos Lieben: Fixed a few things and added Conditional Access Policies
009: Thomas Kurth: Adding AutoPilot Information
010: Thomas Kurth: Complete rewriting and using the Intune PowerShell module
        Added Partner Information
011: Added Application Protection Policies
        Tidied up to meet PSScriptAnalyzer Best Practice and removed some whitespace
012: Thomas Kurth: Added new sections:
        - Enrollment Page Configuration
        - Apple Push Certificate
        - Apple VPP
        - Device Categories
        - Exchange Connector
013: Thomas Kurth: Added new Sections:
        - PowerShellScripts
        - Application COnfiguration
        - Added new Template functionality

014: Thomas Kurth
        - Document ADMX backed Profiles
015: Thomas Kurth
        - Bugfix: All ADMX settings are now correctly displayed
        - Assignments of various elements like Scripts, ADMX, Enrollment Status Page and Windows Hello for Business are now documented
        - Section "Enrollment Status Page" renamed to "Enrollment Configuration" because it contains also WHfB, Enrollment Restrictions, ESP, and Enrollment Limits. 
        - Configuration Profiles are now loaded from the Beta Graph API. Therefore, much more types are returned. For example the Domain Join configuration is now returned.

016: Thomas Kurth
        - Deactivated Verbose Loging of Intune PS Module
        - Bugfix by David Jacobs 
        - Hide Section Titles when there is no content
        - Start adding translations to have the same property names like in the Intune UI instead of just the API names

017: Thomas Kurth
        - Adding additional translation
        - Make translations Optional -UseTranslationBeta