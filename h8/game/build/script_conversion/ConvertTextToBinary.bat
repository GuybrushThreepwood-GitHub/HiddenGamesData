
del lua_files.txt

xcopy /S text binary

cd binary
dir /b /s *.hui *.dat *.lua *.b2d >> ../lua_files.txt

cd ..

for /f %%a in (lua_files.txt) do (
luac.exe -s -o %%a %%a
)
