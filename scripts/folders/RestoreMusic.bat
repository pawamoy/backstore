TITLE RESTORE MUSIC FOLDER
FOR /F "tokens=3* delims= " %%A IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "My Music"') DO (
	SET MUSIC=%%B
)

"%TOOLS%\scripts\BackstoreFolder.bat" "%DATA%\folders\music" "%MUSIC%"
