
del lua_files.txt
cd scripts

xcopy /S text binary

cd binary
dir /b /s *.b2d *.lua >> ../../lua_files.txt

cd ..
cd ..

for /f %%a in (lua_files.txt) do (
luac.exe -s -o %%a %%a
)
