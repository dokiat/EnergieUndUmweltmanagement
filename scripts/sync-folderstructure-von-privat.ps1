$source = "C:\Temp\GitHub\EnergieUndUmweltmanagement-Privat"
$target = "C:\Temp\GitHub\EnergieUndUmweltmanagement"

Get-ChildItem $source -Directory -Recurse | ForEach-Object {
    $relative = $_.FullName.Substring($source.Length).TrimStart('\')
    $newFolder = Join-Path $target $relative

    if (-not (Test-Path $newFolder)) {
        New-Item -ItemType Directory -Path $newFolder | Out-Null
    }
}