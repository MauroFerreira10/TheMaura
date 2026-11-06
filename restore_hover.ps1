$root = Split-Path $MyInvocation.MyCommand.Path -Parent
$dir = Join-Path $root "js"
$files = @("offbrand-main.js", "offbrand-android.js", "offbrand-05.js")
$q = [char]34

foreach ($f in $files) {
    $p = Join-Path $dir $f
    $js = [System.IO.File]::ReadAllText($p)
    
    $old = "hoverAnimation(J,Q=!1){const term=document.getElementById('code-terminal');if(term){if(J==1){term.classList.add('visible')}else{term.classList.remove('visible')}}}"
    $idx = $js.IndexOf($old)
    if ($idx -ge 0) {
        $new = "hoverAnimation(J,Q=!1){m.to(this.renderPlane.mesh.material.uniforms.uHelmetHover,{value:J,duration:J==1?1.5:1,ease:${q}expo.inOut${q},overwrite:!0,onUpdate:()=>{this.headDefault.uniforms.uHelmetHover.value=this.renderPlane.mesh.material.uniforms.uHelmetHover.value}});const term=document.getElementById(${q}code-terminal${q});if(term){if(J==1){term.classList.add(${q}visible${q})}else{term.classList.remove(${q}visible${q})}}}"
        $js = $js.Remove($idx, $old.Length).Insert($idx, $new)
        [System.IO.File]::WriteAllText($p, $js, [System.Text.Encoding]::UTF8)
        Write-Host "$f : DONE"
    } else {
        Write-Host "$f : pattern not found"
    }
}
