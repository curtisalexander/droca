:: Example of DELETING and then linking files in Windows
:: %userprofile% ==> C:\Users\username
pushd "%userprofile%"

:: file
:: BEWARE - this will DELETE an existing file
if exist .gitconfig del .gitconfig
mklink .gitconfig "%userprofile%\code\droca\common\.gitconfig"

:: directory
if exist ".ssh\*" (
    del /f /s /q ".ssh"
    rmdir /s /q ".ssh"
)
mklink /D .ssh "%userprofile%\code\droca\common\.ssh"

:: reset
popd
