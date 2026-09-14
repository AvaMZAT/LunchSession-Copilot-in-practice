param(
    [switch]$Force
)

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$starterRef = "demo-starter"
$preservedPaths = @("demo/reset-demo.ps1", "demo/reset-demo.sh")

Push-Location $repoRoot

try {
    git rev-parse --verify "$starterRef^{commit}" *> $null
    if ($LASTEXITCODE -ne 0) {
        throw "Git reference '$starterRef' was not found."
    }

    if (-not $Force) {
        Write-Host "This resets tracked files to '$starterRef' and deletes untracked files."
        Write-Host "The reset scripts themselves are preserved."
        git status --short --untracked-files=all

        $confirmation = Read-Host "Type RESET to continue"
        if ($confirmation -cne "RESET") {
            Write-Host "Reset cancelled."
            exit 0
        }
    }

    git restore --source=$starterRef --staged --worktree -- . ":(exclude)$($preservedPaths[0])" ":(exclude)$($preservedPaths[1])"
    if ($LASTEXITCODE -ne 0) {
        throw "Failed to restore the starter files."
    }

    git clean -fd -e $preservedPaths[0] -e $preservedPaths[1]
    if ($LASTEXITCODE -ne 0) {
        throw "Failed to remove generated untracked files."
    }

    dotnet build GitHubCopilotDemo.sln
    if ($LASTEXITCODE -ne 0) {
        throw "The starter solution did not build successfully."
    }

    Write-Host "Demo reset to '$starterRef'."
}
finally {
    Pop-Location
}