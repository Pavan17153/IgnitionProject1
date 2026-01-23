$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8090/gitpush/")
$listener.Start()

Write-Host "Listening on http://localhost:8090/gitpush/"

while ($true) {
    $context = $listener.GetContext()

    Start-Process powershell `
        -ArgumentList "-ExecutionPolicy Bypass -File C:\Users\Admin\Documents\IgnitionProject\sync_and_push.ps1" `
        -WindowStyle Hidden

    $context.Response.StatusCode = 200
    $context.Response.Close()
}
