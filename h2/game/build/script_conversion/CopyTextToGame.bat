
REM ** copy all lua text to the final directories **

xcopy /S text\common ..\..\full\
REM xcopy /S text\common ..\..\lite\
REM xcopy /S text\common ..\..\free\

xcopy /S text\full\lua ..\..\full\lua\
xcopy /S text\full\assets ..\..\full\assets\

REM xcopy /S text\lite\lua  ..\..\lite\lua\

REM xcopy /S text\free\lua  ..\..\free\lua\
