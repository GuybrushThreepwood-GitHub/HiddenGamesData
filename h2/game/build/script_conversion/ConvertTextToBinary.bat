
del lua_files.txt

xcopy /S text binary

cd binary
dir /b /s *.hui *.dat *.b2d *.lua >> ../lua_files.txt

cd ..

for /f %%a in (lua_files.txt) do (
luac.exe -s -o %%a %%a
)
