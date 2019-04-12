$queryResults = (qwinsta /server:$ServerName | foreach { (($_.trim() -replace "\s+",","))} | ConvertFrom-Csv)
$loggedin = 'false'
ForEach ($queryResult in $queryResults) {
if($queryResult.ID -eq 'Disc' -and $queryResults.SESSIONNAME -ne 'services'){
$loggedin = 'true'
}
}
$loggedin