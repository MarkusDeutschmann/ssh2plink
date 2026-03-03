# Create build directory if it doesn't exist
if (-not (Test-Path -Path 'build' -PathType Container)) {
	New-Item -ItemType Directory -Path 'build'
}

$env:GOOS = "windows"

# Define architectures to build for
$archBitArray = @(
	@{goarch='amd64'; bit='64'},
	@{goarch='386'; bit='32'}
)

# Loop through architectures and build
foreach ($archBit in $archBitArray) {
	$env:GOARCH = $archBit.goarch
	$dest = "build/ssh2plink_$($archBit.bit)bit.exe"

	go build -o $dest
	Write-Host "created: $dest"
}
