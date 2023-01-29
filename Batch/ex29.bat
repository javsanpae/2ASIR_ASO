@echo off

net user > listing.txt

for /F "tokens=1,3,5 skip=4" %%i in (listing.txt) do (
    if not "%%i"=="Se" (
        echo %%i >> users.txt        
    )
)


type users.txt