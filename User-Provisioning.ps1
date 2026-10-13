# ========================================================
# Active Directory User & Group Management Script
# Author: cyrusnet
# Description: Create OU, Department Group, and User (Ali Rezaei)
# ========================================================

# 1. Create Organizational Unit (OU) for IT Department
Write-Host "Creating IT Department OU..." -ForegroundColor Cyan
New-ADOrganizationalUnit -Name "IT-Dept" -Path "DC=domain,DC=local"

# 2. Create Security Group for IT Staff
Write-Host "Creating Security Group..." -ForegroundColor Cyan
New-ADGroup -Name "GRP-IT" -GroupScope Global -GroupCategory Security -Path "OU=IT-Dept,DC=domain,DC=local"

# 3. Create User Account for Ali Rezaei
Write-Host "Creating User Account for Ali Rezaei..." -ForegroundColor Cyan
$Password = ConvertTo-SecureString "P@ssw0rd2026!" -AsPlainText -Force
New-ADUser -Name "Ali Rezaei" -SamAccountName "arezaei" -UserPrincipalName "arezaei@domain.local" -GivenName "Ali" -Surname "Rezaei" -Department "IT" -Path "OU=IT-Dept,DC=domain,DC=local" -AccountPassword $Password -Enabled $true

# 4. Add User to IT Security Group
Write-Host "Adding Ali Rezaei to GRP-IT group..." -ForegroundColor Cyan
Add-ADGroupMember -Identity "GRP-IT" -Members "arezaei"

# 5. Verify Created User
Write-Host "`nUser Created Successfully! Verification:" -ForegroundColor Green
Get-ADUser -Identity "arezaei" -Properties Department | Select-Object Name, SamAccountName, Department, Enabled
