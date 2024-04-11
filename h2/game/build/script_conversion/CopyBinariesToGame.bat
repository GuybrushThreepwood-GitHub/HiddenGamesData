
REM ** copy all lua binaries to the final directories **

REM copy asset data
xcopy /S binary\common\assets ..\assets\

REM copy boot/common
xcopy /S binary\common\lua ..\..\full\lua\
REM xcopy /S binary\common\lua ..\..\lite\lua\
REM xcopy /S binary\common\lua ..\..\free\lua\

REM copy to each game folder the luas
xcopy /S binary\full\lua ..\..\full\lua\
REM xcopy /S binary\lite\lua  ..\..\lite\lua\
REM xcopy /S binary\free\lua  ..\..\free\lua\
