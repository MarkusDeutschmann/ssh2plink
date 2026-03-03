# Create build directory if it doesn't exist
if (-not (Test-Path -Path 'build' -PathType Container)) {
	New-Item -ItemType Directory -Path 'build'
}

# Build 64-bit version
$env:GOOS = "windows"
$env:GOARCH = "amd64"
go build -o build/ssh2plink_64bit.exe
Write-Host "created: build/ssh2plink_64bit.exe"

# Build 32-bit version
$env:GOOS = "windows"
$env:GOARCH = "386"
go build -o build/ssh2plink_32bit.exe
Write-Host "created: build/ssh2plink_32bit.exe"
