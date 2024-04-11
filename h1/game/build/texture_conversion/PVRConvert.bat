
rmdir dest /S/Q
mkdir dest
cd dest

REM pvr_textures
mkdir assets\models\aircraft\textures
mkdir assets\models\fx\textures
mkdir assets\textures\skies

REM pvr_textures_mipmapped
mkdir assets\models\buildings\textures
mkdir assets\models\props\textures
mkdir assets\models\props_special\textures
mkdir assets\sprites
mkdir assets\textures\detail
mkdir assets\models\gates\textures
mkdir assets\models\targets\textures
mkdir assets\models\collectables\textures

REM pvr_textures
mkdir assets\levels\1\textures
mkdir assets\levels\2\textures
mkdir assets\levels\3\textures
mkdir assets\levels\4\textures
mkdir assets\levels\5\textures
mkdir assets\levels\6\textures
mkdir assets\levels\7\textures
mkdir assets\levels\8\textures

cd ..

for /f %%a in (pvr_textures.txt) do (
PVRTexToolCLI.exe -f pvrtc1_4,UB,lRGB -q pvrtcbest -legacypvr -flip y -i src%%a.png -o dest%%a.pvr
)

for /f %%a in (pvr_textures_mipmapped.txt) do (
PVRTexToolCLI.exe -f pvrtc1_4,UB,lRGB -q pvrtcbest -legacypvr -flip y -m -i src%%a.png -o dest%%a.pvr
)

REM for /f %%a in (pvr_textures_sky.txt) do (
REM PVRTexToolCLI.exe -f r8g8b8a8,UB,lRGB -q pvrtcbest -flip y -i src%%a.png -o dest%%a.pvr
REM )

for /f %%a in (pvr_textures_terrain.txt) do (
PVRTexToolCLI.exe -f pvrtc1_4,UB,lRGB -q pvrtcbest -legacypvr -flip y -m -i src%%a.png -o dest%%a.pvr
)

