# Active Directory User & Group Automation
### اتوماسیون مدیریت کاربران و گروه‌ها در اکتیو دایرکتوری

---

## 🇬🇧 English Description

An enterprise-grade, practical PowerShell automation script designed to streamline User Account Management, Organizational Unit (OU) structuring, Security Group assignment, and Active Directory administration on Windows Server.

### 📌 Project Workflow
1. **OU Creation:** Automatically provisions the `IT-Dept` Organizational Unit.
2. **Security Group Creation:** Creates the `GRP-IT` global security group inside `IT-Dept`.
3. **User Account Provisioning:** Creates a new user account for **Ali Rezaei** (`arezaei`) with a secure password and enables the account.
4. **Group Assignment:** Adds `arezaei` to the `GRP-IT` security group.
5. **Verification:** Displays user details and department information in the PowerShell console in green.

### 🛠️ Prerequisites
* Windows Server with **Active Directory Domain Services (AD DS)** installed
* PowerShell with the `ActiveDirectory` module

### 🚀 How to Run
Open PowerShell as Administrator on your Domain Controller and execute:
.\User-Provisioning.ps1

---

## 🇮🇷 توضیحات فارسی

این پروژه یک اسکریپت کاربردی و عملیاتی پاورشل (PowerShell) برای اتوماسیون فرآیند تعریف کارمندان جدید (Onboarding)، ساخت واحد‌های سازمانی (OU)، گروه‌های دسترسی و مدیریت حساب‌های کاربری در ویندوز سرور است.

### 📌 سناریو و مراحل اجرای اسکریپت
1. **ساخت واحد سازمانی (OU):** ایجاد یک Organizational Unit جدید به نام `IT-Dept` برای تفکیک دپارتمان فناوری اطلاعات.
2. **ساخت گروه امنیتی (Security Group):** ایجاد یک گروه دسترسی به نام `GRP-IT` داخل پوشه `IT-Dept` جهت مدیریت دسترسی‌های شبکه.
3. **ساخت حساب کاربر جدید:** ایجاد اکانت کاربری برای **علی رضایی** با نام کاربری `arezaei` و تنظیم رمز عبور امن و فعال‌سازی حساب.
4. **عضویت در گروه:** افزودن کاربر `arezaei` به گروه دسترسی `GRP-IT`.
5. **تایید و نمایش اطلاعات:** بررسی و چاپ مشخصات کاربر ساخته شده در محیط پاورشل به رنگ سبز برای اطمینان ادمین.

### 🛠️ پیش‌نیازها
* ویندوز سرور (دارای سرویس Active Directory Domain Services)
* دسترسی به پاورشل با ماژول `ActiveDirectory`

### 🚀 نحوه اجرا
پاورشل را به صورت **Run as Administrator** روی دامین کنترلر باز کرده و دستور زیر را اجرا کنید:
.\User-Provisioning.ps1

---

## 👤 Author / سازنده

* **GitHub:** [@cyrusnet](https://github.com/cyrusnet)
