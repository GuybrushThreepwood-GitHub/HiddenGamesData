
REM rmdir dest /S/Q
REM mkdir dest
REM cd dest

REM pvr_textures
REM mkdir assets\levels\1_1_easydoesit\textures
REM mkdir assets\levels\1_2_crossroadconfusion\textures
REM mkdir assets\levels\1_3_shortcircuit\textures
REM mkdir assets\levels\1_4_kamikaze\textures
REM mkdir assets\levels\1_5_asteroids\textures
REM mkdir assets\levels\2_1_skycaperscraper\textures
REM mkdir assets\levels\2_2_awellofatime\textures
REM mkdir assets\levels\2_3_spacecamp\textures
REM mkdir assets\levels\2_4_hiddencave\textures
REM mkdir assets\levels\2_5_breathin\textures
REM mkdir assets\levels\3_1_snaaaake\textures
REM mkdir assets\levels\3_2_ghostship\textures
REM mkdir assets\levels\3_3_meteorshower\textures
REM mkdir assets\levels\3_4_elephantdip\textures
REM mkdir assets\levels\3_5_dangercove\textures
REM mkdir assets\levels\special_ending\textures
REM mkdir assets\models\vehicles\textures
REM mkdir assets_common\models\enemies\textures
REM mkdir assets_common\models\objects\textures
REM mkdir assets_common\models\obstacles\textures
REM mkdir assets_common\models\pickups\textures
REM mkdir assets_common\models\ports\textures
REM mkdir assets_common\textures\bg
REM mkdir assets_common\textures\customers
REM mkdir assets_common\textures\fx

REM pvr_textures_mipmapped

REM cd ..

for /f %%a in (pvr_textures.txt) do (
PVRTexToolCLI.exe -f pvrtc1_4,UB,lRGB -q pvrtcbest -legacypvr -flip y -i src%%a.png -o dest%%a.pvr
)

