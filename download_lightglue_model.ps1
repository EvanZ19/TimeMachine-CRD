$ErrorActionPreference = "Stop"
$dest = Join-Path $PSScriptRoot "app\src\main\assets\superpoint_lightglue_pipeline.ort.onnx"
$url = "https://github.com/fabio-sim/LightGlue-ONNX/releases/download/v2.0/superpoint_lightglue_pipeline.ort.onnx"
Write-Host "Downloading SuperPoint + LightGlue ONNX model..."
Invoke-WebRequest -Uri $url -OutFile $dest
Write-Host "Saved to $dest"
Write-Host "Now reopen/sync Android Studio and Run the app."
