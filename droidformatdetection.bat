@echo off
set /p inputfolder= Ordner :
for /r "%inputfolder%\" %%X in (*.*) do (
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V1.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig1.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V2.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig2.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V3.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig3.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V4.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig4.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V5.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig5.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V6.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig6.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V7.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig7.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V8.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig8.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V9.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig9.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V10.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig10.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V11.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig11.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V12.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig12.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V15.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig15.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V16.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig16.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V17.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig17.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V18.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig18.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V19.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig19.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V20.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig20.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V21.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig21.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V22.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig22.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V23.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig23.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V24.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig24.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V25.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig25.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V27.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig27.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V28.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig28.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V30.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig30.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V31.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig31.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V32.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig32.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V33.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig33.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V34.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig34.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V35.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig35.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V36.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig36.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V37.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig37.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V38.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig38.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V39.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig39.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V40.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig40.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V41.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig41.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V42.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig42.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V43.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig43.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V44.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig44.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V45.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig45.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V46.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig46.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V47.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig47.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V48.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig48.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V49.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig49.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V50.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig50.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V51.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig51.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V54.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig54.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V57.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig57.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V58.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig58.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V59.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig59.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V60.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig60.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V61.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig61.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V62.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig62.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V64.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig64.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V65.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig65.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V66.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig66.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V67.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig67.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V68.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig68.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V69.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig69.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V71.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig71.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V72.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig72.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V73.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig73.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V74.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig74.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V76.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig76.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V77.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig77.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V78.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig78.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V80.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig80.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V81.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig81.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V82.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig82.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V83.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig83.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V84.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig84.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V85.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig85.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V87.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig87.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V89.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig89.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V90.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig90.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V91.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig91.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V92.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig92.txt
droid -Ns D:\droid-binary-6.3-bin\\signature_files\\DROID_SignatureFile_V93.xml\ -Nr "%%X" >>log\log_DROID_%%~nXsig93.txt
)
pause

