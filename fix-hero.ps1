$p = "C:\Users\The Maurá\landonorris-clone\index.html"
$content = [System.IO.File]::ReadAllText($p)

# 1. Remove Store button
$storeStart = 'href="https://store.mauroferreira.com/" target="_blank" class="btn-w is-nav w-inline-block"'
$idx = $content.IndexOf($storeStart)
if ($idx -ge 0) {
    $aStart = $content.LastIndexOf('<a ', $idx)
    $aEnd = $content.IndexOf('</a>', $idx) + 4
    $content = $content.Remove($aStart, $aEnd - $aStart)
    Write-Host "1. Store button removed"
} else {
    Write-Host "1. Store not found"
}

# 2. Next Race -> Latest Build
$c2 = ([regex]::Matches($content, [regex]::Escape('>Next Race<'))).Count
$content = $content.Replace('>Next Race<', '>Latest Build<')
Write-Host "2. Next Race -> Latest Build ($c2)"

# 3. Austin gp -> Full Stack App
$c3a = ([regex]::Matches($content, [regex]::Escape('>Austin<'))).Count
$content = $content.Replace('>Austin<', '>Full Stack<')
$c3b = ([regex]::Matches($content, [regex]::Escape('>gp<'))).Count
$content = $content.Replace('>gp<', '>App<')
Write-Host "3. Austin=$c3a gp=$c3b"

# 4. mclaren f1 ... since 2019 -> coding since 2019
$pattern = 'mclaren f1.{0,6}since 2019'
$c4 = ([regex]::Matches($content, $pattern)).Count
$content = [regex]::Replace($content, $pattern, 'coding since 2019')
Write-Host "4. mclaren -> coding since 2019 ($c4)"

# 5. Screen reader
$c5 = ([regex]::Matches($content, [regex]::Escape('2025 Mclaren Formula 1 Driver'))).Count
$content = $content.Replace('2025 Mclaren Formula 1 Driver', 'Full-Stack Developer')
Write-Host "5. Screen reader ($c5)"

# 6. Impact text - find and replace the sentence
$impactOld = [regex]::Escape('Redefining</strong> limits, fighting for <strong>wins</strong>, bringing it all in all ways. Defining a <strong>legacy</strong> in Formula 1 on and off the track.')
$impactNew = 'Building</strong> products, shipping <strong>code</strong>, solving hard problems every day. Defining a <strong>career</strong> in software, frontend and backend.'
$c6 = ([regex]::Matches($content, $impactOld)).Count
$content = $content.Replace('Redefining</strong> limits, fighting for <strong>wins</strong>, bringing it all in all ways. Defining a <strong>legacy</strong> in Formula 1 on and off the track.', $impactNew)
Write-Host "6. Impact text ($c6)"

[System.IO.File]::WriteAllText($p, $content, [System.Text.Encoding]::UTF8)
Write-Host "DONE"
