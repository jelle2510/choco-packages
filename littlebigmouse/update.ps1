import-module au

$domain = 'https://github.com'
$releases = "$domain/mgth/LittleBigMouse/releases/latest"

function global:au_SearchReplace {
    @{
        "./tools/chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')" = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
        }
        "./littlebigmouse.nuspec" = @{
            "\<version\>.+" = "<version>$($Latest.Version)</version>"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -UseBasicParsing -Uri $releases

    $url = $download_page.links | ? href -match '^\/.*LittleBigMouse.*\.exe$' | select -First 1 -expand href
    $version = $url -split '/' | select -Last 1 -Skip 1

    @{
        URL32 = $domain + $url
        Version = $version
    }
}

update -ChecksumFor 32