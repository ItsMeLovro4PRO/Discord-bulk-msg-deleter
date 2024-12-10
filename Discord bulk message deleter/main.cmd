@echo off
color a

echo.
echo                               ######################################################
echo                                            Discord message bulk-deleter
echo                                                 Made by Lovro4
echo                               ######################################################
echo.
echo.

set /p botoken="Enter your bot token: "
set /p channelid="Enter your channel ID: "
set /p id1="Enter your 1st message ID: "
set /p id2="Enter your 2nd message ID: "
set /p id3="Enter your 3rd message ID: "

pause

curl -X POST "https://discord.com/api/v10/channels/%channelid%/messages/bulk-delete" ^
-H "Content-Type: application/json" ^
-H "Authorization: Bot %botoken%" ^
-d "{\"messages\":[\"%id1%\",\"%id2%\",\"%id3%\"]}"
