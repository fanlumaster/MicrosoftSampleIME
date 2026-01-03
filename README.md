# SampleIME

## Build

```powershell
.\scripts\lcompile32.ps1
.\scripts\lcompile64.ps1
```

## Installation

Copy the dll files to the following locations:

```powershell
Copy-Item -Path ".\build32\Debug\SampleIME.dll" -Destination "C:\Program Files (x86)\SampleIME"
Copy-Item -Path ".\build64\Debug\SampleIME.dll" -Destination "C:\Program Files\SampleIME"
```

Register the dll files:

```powershell
sudo regsvr32 "C:\Program Files\SampleIME\SampleIME.dll"
sudo regsvr32 "C:\Program Files (x86)\SampleIME\SampleIME.dll"
```

## Uninstallation

```powershell
sudo regsvr32 /u "C:\Program Files\SampleIME\SampleIME.dll"
sudo regsvr32 /u "C:\Program Files (x86)\SampleIME\SampleIME.dll"
```
