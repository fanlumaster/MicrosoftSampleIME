# generate and compile exe files

$currentDirectory = Get-Location
$cmakeListsPath = Join-Path -Path $currentDirectory -ChildPath "CMakeLists.txt"

if (-not (Test-Path $cmakeListsPath))
{
  Write-Host("No CMakeLists.txt in current directory, please check.")
  return
}

Write-Host "Start generating and compiling..."

$buildFolderPath = ".\build32"

if (-not (Test-Path $buildFolderPath))
{
  New-Item -ItemType Directory -Path $buildFolderPath | Out-Null
  Write-Host "build32 folder created."
}

cmake -G "Visual Studio 17 2022" -A Win32 -S . -B ./build32/

if ($LASTEXITCODE -eq 0)
{
  cmake --build ./build32/ --config DEBUG
}

