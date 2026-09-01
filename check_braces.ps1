$beginner = Get-Content 'C:\Users\UserGPC\Desktop\Ambito Laboral\Proyectos para el portafolio\Pandas Playground\lecciones_principiante.html' -Raw
$bStyle = [regex]::Match($beginner, '(?s)<style>(.*?)</style>').Groups[1].Value
$bOpen = ([regex]::Matches($bStyle, '\{')).Count
$bClose = ([regex]::Matches($bStyle, '\}')).Count
Write-Output "Beginner: open=$bOpen close=$bClose diff=$($bOpen - $bClose)"

$intermediate = Get-Content 'C:\Users\UserGPC\Desktop\Ambito Laboral\Proyectos para el portafolio\Pandas Playground\lecciones_intermedio.html' -Raw
$iStyle = [regex]::Match($intermediate, '(?s)<style>(.*?)</style>').Groups[1].Value
$iOpen = ([regex]::Matches($iStyle, '\{')).Count
$iClose = ([regex]::Matches($iStyle, '\}')).Count
Write-Output "Intermediate: open=$iOpen close=$iClose diff=$($iOpen - $iClose)"

# Check nesting depth line by line for beginner
Write-Output ""
Write-Output "=== Beginner brace depth check ==="
$depth = 0
$lineNum = 0
$bLines = $bStyle -split "`n"
foreach ($line in $bLines) {
    $lineNum++
    $opens = ([regex]::Matches($line, '\{')).Count
    $closes = ([regex]::Matches($line, '\}')).Count
    $depth += $opens - $closes
    if ($depth -lt 0) {
        Write-Output "PROBLEM at line $lineNum : depth went negative ($depth)"
    }
}
Write-Output "Final depth: $depth (should be 0)"
