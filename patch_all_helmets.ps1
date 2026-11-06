$root = Split-Path $MyInvocation.MyCommand.Path -Parent
$files = @("offbrand-main.js", "offbrand-android.js", "offbrand-05.js")

foreach ($f in $files) {
    $p = Join-Path (Join-Path $root "js") $f
    if (-not (Test-Path $p)) { Write-Host "$f : not found"; continue }
    $js = [System.IO.File]::ReadAllText($p)
    
    $marker = "hoverAnimation("
    $idx = $js.IndexOf($marker)
    if ($idx -lt 0) { Write-Host "$f : marker not found"; continue }
    
    # Find function start - look for the pattern hoverAnimation(J,Q=...){
    # Search for the actual function definition
    $patterns = @("hoverAnimation(J,Q=!1){", "hoverAnimation(A,Q=!1){", "hoverAnimation(Q,Z=!1){")
    $found = $false
    foreach ($pat in $patterns) {
        $idx = $js.IndexOf($pat)
        if ($idx -ge 0) { $found = $true; break }
    }
    if (-not $found) { Write-Host "$f : function pattern not found"; continue }
    
    $marker = $pat
    $depth = 0
    $start = $idx + $marker.Length - 1
    $i = $start
    while ($i -lt $js.Length) {
        if ($js[$i] -eq '{') { $depth++ }
        if ($js[$i] -eq '}') { $depth--; if ($depth -eq 0) { break } }
        $i++
    }
    $end = $i + 1
    
    $param = $marker.Substring(16, 1)  # J, A, or Q
    $newFunc = "hoverAnimation($param,Q=!1){const term=document.getElementById('code-terminal');if(term){if($param==1){term.classList.add('visible')}else{term.classList.remove('visible')}}}"
    
    $js = $js.Remove($idx, $end - $idx).Insert($idx, $newFunc)
    [System.IO.File]::WriteAllText($p, $js, [System.Text.Encoding]::UTF8)
    Write-Host "$f : DONE"
}
