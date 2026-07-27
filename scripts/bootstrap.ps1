$Root = "powerchain"

New-Item -ItemType Directory -Force -Path $Root | Out-Null

$Packages = @(
"web3.js","rpc","providers","transport","wallet","signer","accounts",
"transaction","contract","abi","events","token","crypto","utils",
"types","cli","react","vue","angular","node","python","go","rust",
"flutter"
)

foreach ($pkg in $Packages) {
    $base = Join-Path $Root "packages\$pkg"

    New-Item -ItemType Directory -Force "$base\src" | Out-Null
    New-Item -ItemType Directory -Force "$base\examples" | Out-Null
    New-Item -ItemType Directory -Force "$base\test" | Out-Null

    @(
        "README.md",
        "CHANGELOG.md",
        "LICENSE",
        "package.json",
        "tsconfig.json",
        "tsup.config.ts",
        "vitest.config.ts"
    ) | ForEach-Object {
        New-Item -ItemType File -Force (Join-Path $base $_) | Out-Null
    }

    New-Item -ItemType File -Force "$base\src\index.ts" | Out-Null
}

Write-Host "PowerChain repository created."