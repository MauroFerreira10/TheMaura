$root = Split-Path $MyInvocation.MyCommand.Path -Parent
$p = Join-Path $root "js\script2.js"
$js = [System.IO.File]::ReadAllText($p)

$marker = "hoverAnimation(J,Q=!1){"
$idx = $js.IndexOf($marker)
if ($idx -lt 0) { Write-Host "NOT FOUND"; exit 1 }

$depth = 0
$start = $idx + $marker.Length - 1
$i = $start
while ($i -lt $js.Length) {
    if ($js[$i] -eq '{') { $depth++ }
    if ($js[$i] -eq '}') { $depth--; if ($depth -eq 0) { break } }
    $i++
}
$end = $i + 1

$oldFunc = $js.Substring($idx, $end - $idx)
Write-Host "Found function, length: $($oldFunc.Length)"

$newFunc = 'hoverAnimation(J,Q=!1){const term=document.getElementById("code-terminal");if(term){if(J==1){term.classList.add("visible")}else{term.classList.remove("visible")}}}'

$js = $js.Remove($idx, $end - $idx).Insert($idx, $newFunc)
[System.IO.File]::WriteAllText($p, $js, [System.Text.Encoding]::UTF8)
Write-Host "DONE"
