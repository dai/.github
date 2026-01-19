if (!(Test-Path -Path $PROFILE)) {
  New-Item -ItemType File -Path $PROFILE -Force
}

# Add posh-git
Import-Module posh-git

# NerdFonts
Import-Module -Name NerdFonts

# posh Themes
# oh-my-posh init pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/jandedobbeleer.omp.json | Invoke-Expression
# oh-my-posh init pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/jonnychipz.omp.json | Invoke-Expression
# oh-my-posh init pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/kushal.omp.json | Invoke-Expression
# oh-my-posh init pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/patriksvensson.omp.json | Invoke-Expression
oh-my-posh init pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/mt.omp.json | Invoke-Expression

# タイトルを変更する
$a = (Get-Host).UI.RawUI 
$a.WindowTitle = "🛡 pwsh 🛡"

# 開始ディレクトリの指定
Set-Location C:\2026\github

# 日付
$Date = Get-Date -UFormat "%Y/%m/%d %H:%M:%S"
# 実行権限
$ExecutionPolicy = Get-ExecutionPolicy
# ログディレクトリ
#$Logdir = join-path ([Environment]::GetFolderPath("Documents")) "\PowerShell\logs"
$Logdir = "C:\2025\log"

# ログファイル
$FileName = (Get-Date).ToString("yyyyMMdd_HHmmss") + ".log"
$Logfiledir = join-path $logdir $filename


# ログ取得
if ( Test-Path $logdir ) {
    Start-Transcript $logfiledir -append | Out-Null
} else {
    Write-Host ("No Such Directory : " + $logdir)
}

## Windows Docker tab-completion
# Import-Module DockerCompletion

## Windows GitHub CLI tab-completion
#Invoke-Expression -Command $(gh completion -s powershell | Out-String)

## Scoop Tab completion
# Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"


# Show Terminal Icons
# Import-Module Terminal-Icons

# For zoxide v0.8.0+
# Invoke-Expression (& { (zoxide init powershell | Out-String) })

# JJ Completion
Invoke-Expression (& { (jj util completion power-shell | Out-String) })

# Codex auto-resume (latest session)
function Get-LatestCodexSessionId {
    $sessionsRoot = Join-Path $env:USERPROFILE ".codex\sessions"
    if (-not (Test-Path $sessionsRoot)) {
        return $null
    }

    $latest = Get-ChildItem -Path $sessionsRoot -Recurse -Filter "*.jsonl" |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1
    if (-not $latest) {
        return $null
    }

    if ($latest.Name -match '([0-9a-fA-F-]{36})\.jsonl$') {
        return $Matches[1]
    }

    return $null
}

if (-not $env:CODEX_AUTO_RESUME -or $env:CODEX_AUTO_RESUME -ne "0") {
    if (Get-Command codex -ErrorAction SilentlyContinue) {
        $latestSessionId = Get-LatestCodexSessionId
        if ($latestSessionId) {
            codex resume $latestSessionId
        }
    }
}

