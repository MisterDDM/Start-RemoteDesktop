Function Start-RemoteDesktop
{ 
    param 
    (
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='ServerName')]
        [ValidateSet('ServerName01','ServerName02','ServerName03','ServerName04','ServerName05', 'ServerName06')]
        [String]$ServerName
    )

    Start-Process mstsc -ArgumentList ( "/v ${ServerName}") 

}
