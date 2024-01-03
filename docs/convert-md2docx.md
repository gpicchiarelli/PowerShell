*convert-md2docx.ps1*
================

convert-md2docx.ps1 


Parameters
----------
```powershell


[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Script Content
--------------
```powershell


gci -r -i *.md |foreach{$docx=$_.directoryname+"\"+$_.basename+".docx";pandoc -f markdown -s --citeproc $_.name -o $docx}
```

*(generated by convert-ps2md.ps1 using the comment-based help of convert-md2docx.ps1 as of 12/16/2023 10:12:20)*