Add-Type -AssemblyName System.Drawing
$src = 'c:\Users\earle\pepvô\WhatsApp Image 2026-01-11 at 17.51.48.jpeg'
$dst = 'c:\Users\earle\pepvô\emblem-small.jpg'
$img = [System.Drawing.Image]::FromFile($src)
$width = 240
$height = 240
$ratio = [math]::Min($width / $img.Width, $height / $img.Height)
$newW = [int]($img.Width * $ratio)
$newH = [int]($img.Height * $ratio)
$bmp = New-Object System.Drawing.Bitmap $width, $height
$graphics = [System.Drawing.Graphics]::FromImage($bmp)
$graphics.Clear([System.Drawing.Color]::FromArgb(0, 255, 255, 255))
$graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$x = [int](($width - $newW) / 2)
$y = [int](($height - $newH) / 2)
$graphics.DrawImage($img, $x, $y, $newW, $newH)
$bmp.Save($dst, [System.Drawing.Imaging.ImageFormat]::Jpeg)
$graphics.Dispose()
$bmp.Dispose()
$img.Dispose()
Write-Output "Created $dst"
