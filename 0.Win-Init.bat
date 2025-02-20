REG ADD HKEY_CURRENT_USER\Environment /f /v "REPOSITORY" /t REG_EXPAND_SZ /d "C:\repository"
REG ADD HKEY_CURRENT_USER\Environment /f /v "REPOSITORY_BACKUP" /t REG_EXPAND_SZ /d "D:\repository_backup"
REG ADD HKEY_CURRENT_USER\Environment /f /v "MSYS_REPOSITORY" /t REG_EXPAND_SZ /d "/c/repository"
REG ADD HKEY_CURRENT_USER\Environment /f /v "MSYS_REPOSITORY_BACKUP" /t REG_EXPAND_SZ /d "/d/repository_backup"