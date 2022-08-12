# Windows

## link
Utilize cmd

### link a file
```batch
:: cd into directory where we want the file to be located
cd "%userprofile%

:: make the link
mklink .somefile "%userprofile%\code\droca\common\.somefile"
```

### link a directory
```batch
:: cd into directory where we want the file to be located
cd %userprofile%

:: make the link
mklink /D somedir "%userprofile%\code\droca\somedir"
```


## delete

### delete a file
```batch
:: be very careful when deleting!
cd "%userprofile%

:: remove the link and not the underlying file
del .somefile
```

### delete a directory
```batch
:: be very careful when deleting!
cd "%userprofile%"

:: remove the link and not the underlying file
:: first remove all files in the directory and then remove the directory
:: /f ==> force
:: /s ==> delete all files in subdirectories
:: /q ==> quiet
del /f /s /q somedir

:: /s ==> remove all directories and files in the directory in addition to the directory
:: /q ==> quiet
rmdir /s /q somedir
```
