.class public interface abstract Lcom/cmcc/migusso/auth/common/SsoConstants;
.super Ljava/lang/Object;
.source "SsoConstants.java"


# static fields
.field public static final AUTHN_ACCOUNT_PASSWORD:S = 0x2s

.field public static final AUTHN_ACCOUNT_PASSWORD_NO_RC:S = 0x4s

.field public static final AUTHN_ACCOUNT_SELECTED:S = 0x1s

.field public static final AUTHN_ACCOUNT_SMSCODE:S = 0x3s

.field public static final BUSI_TYPE_ABCUSER_UPGRADE:Ljava/lang/String; = "8"

.field public static final BUSI_TYPE_BIND_NEWPHONE:Ljava/lang/String; = "6"

.field public static final BUSI_TYPE_MIGU_THIRD_BIND:Ljava/lang/String; = "9"

.field public static final BUSI_TYPE_REGISTER:Ljava/lang/String; = "1"

.field public static final BUSI_TYPE_RESETPWD:Ljava/lang/String; = "2"

.field public static final BUSI_TYPE_SERVICE_THIRD_BIND:Ljava/lang/String; = "10"

.field public static final BUSI_TYPE_SMSLOGIN:Ljava/lang/String; = "3"

.field public static final BUSI_TYPE_VERRIFY_OLDPHONE:Ljava/lang/String; = "7"

.field public static final GET_SMSCODE_LOGIN:Ljava/lang/String; = "2"

.field public static final GET_SMSCODE_OTHER:Ljava/lang/String; = "99"

.field public static final GET_SMSCODE_REGISTER:Ljava/lang/String; = "0"

.field public static final GET_SMSCODE_RESETPASSWORD:Ljava/lang/String; = "1"

.field public static final LOGIN_STATE_IGNORE:I = 0xa

.field public static final LOGIN_STATE_NECESSARY:I = 0x0

.field public static final LOGIN_TYPE_DATASMS:Ljava/lang/String; = "datasms"

.field public static final LOGIN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final LOGIN_TYPE_GBA:Ljava/lang/String; = "gba"

.field public static final LOGIN_TYPE_MANNAL:Ljava/lang/String; = "mannal"

.field public static final LOGIN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final MESSAGE_DIALOG_SHOW:I = 0x3

.field public static final MESSAGE_PROGRESS_CANCEL:I = 0x2

.field public static final MESSAGE_PROGRESS_SHOW:I = 0x1

.field public static final PHONE_HTC:Ljava/lang/String; = ""

.field public static final PHONE_HUAWEI:Ljava/lang/String; = "huawei"

.field public static final PHONE_IMSI:Ljava/lang/String; = "IMSI"

.field public static final PHONE_SANXING:Ljava/lang/String; = "samsung"

.field public static final PHONE_TIANYU:Ljava/lang/String; = ""

.field public static final PHONE_YULONG:Ljava/lang/String; = ""

.field public static final QUERT_RESULT_KEY_OPENID:Ljava/lang/String; = "openid"

.field public static final RESULT_UPGRADE_SUCCESS_NO_PWD:I = 0xa

.field public static final SELECT_SIM_1:I = 0x1

.field public static final SELECT_SIM_2:I = 0x2

.field public static final SERVICE_ABCACCOUNTUPGRADE:I = 0x20

.field public static final SERVICE_AUTOLOGIN:I = 0x1

.field public static final SERVICE_BINDACCOUNT:I = 0x38

.field public static final SERVICE_BINDNEWPHONE:I = 0x14

.field public static final SERVICE_CANCELLOGIN:I = 0xe

.field public static final SERVICE_CHANGEACCOUNT:I = 0x8

.field public static final SERVICE_CHANGENICKNAME:I = 0x12

.field public static final SERVICE_CHANGEPASSWORD:I = 0xc

.field public static final SERVICE_CHECKABCTPHONE:I = 0x19

.field public static final SERVICE_CHECKAPPSIGN:I = 0x2

.field public static final SERVICE_CHECKCOMPATIBILITY:I = 0x22

.field public static final SERVICE_CLEANSSO:I = 0x9

.field public static final SERVICE_CLEAN_TOKEN:I = 0x35

.field public static final SERVICE_DATASMSFORSELECT:I = 0x10

.field public static final SERVICE_FIRST_CREATED:I = 0x23

.field public static final SERVICE_GETACCOUNTLIST:I = 0x7

.field public static final SERVICE_GETCUSTOMERID:I = 0x17

.field public static final SERVICE_GETSMSCODE:I = 0xd

.field public static final SERVICE_GETTOKEN:I = 0x3

.field public static final SERVICE_GETTOKENBYPWD:I = 0x5

.field public static final SERVICE_GETTOKENBYSELECTED:I = 0x4

.field public static final SERVICE_GETTOKENBYSMSCODE:I = 0x6

.field public static final SERVICE_GETTOKENBYTHIRD:I = 0x16

.field public static final SERVICE_GETTOKEN_AS_HOST:I = 0x30

.field public static final SERVICE_GETTOKEN_QRC:I = 0x32

.field public static final SERVICE_GETVOICEVALID:I = 0x24

.field public static final SERVICE_GET_QRIMG:I = 0x31

.field public static final SERVICE_IS_MIGU_ACCOUNT:I = 0x36

.field public static final SERVICE_QRCODE_LOGIN:I = 0x34

.field public static final SERVICE_QRCODE_SCANED:I = 0x33

.field public static final SERVICE_QUERYALLUSERINFO:I = 0x37

.field public static final SERVICE_QUERYUSERINFO:I = 0x11

.field public static final SERVICE_QUERY_THIRD_BIND_MESSAGE:I = 0x1b

.field public static final SERVICE_REGISTERUSER:I = 0xa

.field public static final SERVICE_RESETPASSWORD:I = 0xb

.field public static final SERVICE_SETCONNECTURL:I = 0x21

.field public static final SERVICE_SETLOGLEVEL:I = 0x40

.field public static final SERVICE_THIRD_BIND_PHONE:I = 0x1c

.field public static final SERVICE_THIRD_BIND_PHONE_FOR_SERVICE:I = 0x1d

.field public static final SERVICE_UNBINDACCOUNT:I = 0x39

.field public static final SERVICE_UPGRADEUSER:I = 0x1a

.field public static final SERVICE_UPLOADAVATAR:I = 0x15

.field public static final SERVICE_VALIDATECODE:I = 0xf

.field public static final SERVICE_VERIFYOLDPHONE:I = 0x13

.field public static final SMS_HTTP_TRY_COUNT:I = 0x5

.field public static final SMS_HTTP_TRY_DELAY:I = 0x5dc

.field public static final VALUES_ISSIPAPP_FALSE:Ljava/lang/String; = "1"

.field public static final VALUES_ISSIPAPP_TRUE:Ljava/lang/String; = "2"

.field public static final VALUES_KEY_ABC_ACCOUNT:Ljava/lang/String; = "abc_account"

.field public static final VALUES_KEY_ACCESSTOKEN:Ljava/lang/String; = "accesstoken"

.field public static final VALUES_KEY_ACCOUNTTYPE:Ljava/lang/String; = "accountType"

.field public static final VALUES_KEY_ACCOUNTTYPES:Ljava/lang/String; = "accountTypes"

.field public static final VALUES_KEY_AHTYTYPE:Ljava/lang/String; = "authType"

.field public static final VALUES_KEY_APPID:Ljava/lang/String; = "appid"

.field public static final VALUES_KEY_APPKEY:Ljava/lang/String; = "appkey"

.field public static final VALUES_KEY_AUTHNTYPE:Ljava/lang/String; = "authntype"

.field public static final VALUES_KEY_AVATARFILEPATH:Ljava/lang/String; = "avatarfilepath"

.field public static final VALUES_KEY_AVATARURL:Ljava/lang/String; = "avatar"

.field public static final VALUES_KEY_BINDACCOUNT:Ljava/lang/String; = "bindAccount"

.field public static final VALUES_KEY_BIND_MSG:Ljava/lang/String; = "bindmsg"

.field public static final VALUES_KEY_BIND_TYPE:Ljava/lang/String; = "bindType"

.field public static final VALUES_KEY_BUSINESS_TOKEN:Ljava/lang/String; = "businesstoken"

.field public static final VALUES_KEY_BUSITYPE:Ljava/lang/String; = "busitype"

.field public static final VALUES_KEY_CM:Ljava/lang/String; = "cm"

.field public static final VALUES_KEY_COMMANDID:Ljava/lang/String; = "commandid"

.field public static final VALUES_KEY_CONNECTSMSPORT:Ljava/lang/String; = "connectSmsPort"

.field public static final VALUES_KEY_CONNECTURL:Ljava/lang/String; = "connectUrl"

.field public static final VALUES_KEY_CONSUMERKEY:Ljava/lang/String; = "consumerkey"

.field public static final VALUES_KEY_CT:Ljava/lang/String; = "ct"

.field public static final VALUES_KEY_CU:Ljava/lang/String; = "cu"

.field public static final VALUES_KEY_CUSTOMERID:Ljava/lang/String; = "customerid"

.field public static final VALUES_KEY_DEVICEID:Ljava/lang/String; = "deviceid"

.field public static final VALUES_KEY_DEVICEIDTYPE:Ljava/lang/String; = "deviceidtype"

.field public static final VALUES_KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final VALUES_KEY_EPACKAGE:Ljava/lang/String; = "epackage"

.field public static final VALUES_KEY_ESIGN:Ljava/lang/String; = "esign"

.field public static final VALUES_KEY_HEADIMAGEURL:Ljava/lang/String; = "headImageUrl"

.field public static final VALUES_KEY_IMPLICIT:Ljava/lang/String; = "implicit"

.field public static final VALUES_KEY_ISDEFAULT:Ljava/lang/String; = "isdefault"

.field public static final VALUES_KEY_ISDOULSIM:Ljava/lang/String; = "isDoubleSim"

.field public static final VALUES_KEY_ISEMAILACCOUNT:Ljava/lang/String; = "isEmailAccount"

.field public static final VALUES_KEY_ISMASTERPHONE:Ljava/lang/String; = "isMasterPhone"

.field public static final VALUES_KEY_ISMIGUPASSPORT:Ljava/lang/String; = "isMiguPassport"

.field public static final VALUES_KEY_ISSIPAPP:Ljava/lang/String; = "issipapp"

.field public static final VALUES_KEY_ISTEST:Ljava/lang/String; = "istest"

.field public static final VALUES_KEY_LASTUSERNAME:Ljava/lang/String; = "lastusername"

.field public static final VALUES_KEY_LASTUSERPWD:Ljava/lang/String; = "lastuserpwd"

.field public static final VALUES_KEY_LAST_LOGIN_USER:Ljava/lang/String; = "lastloginusername"

.field public static final VALUES_KEY_LOGINTYPE:Ljava/lang/String; = "logintype"

.field public static final VALUES_KEY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final VALUES_KEY_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final VALUES_KEY_NEED_SET_PWD:Ljava/lang/String; = "setpwd"

.field public static final VALUES_KEY_NEWMSISDN:Ljava/lang/String; = "newmsisdn"

.field public static final VALUES_KEY_NEWPASSWORD:Ljava/lang/String; = "newpassword"

.field public static final VALUES_KEY_NEXTCOMMANDID:Ljava/lang/String; = "nextcommandid"

.field public static final VALUES_KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final VALUES_KEY_OLDMSISDN:Ljava/lang/String; = "oldmsisdn"

.field public static final VALUES_KEY_OPENID:Ljava/lang/String; = "openID"

.field public static final VALUES_KEY_OPENIDTYPE:Ljava/lang/String; = "openIDType"

.field public static final VALUES_KEY_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final VALUES_KEY_PASSID:Ljava/lang/String; = "passid"

.field public static final VALUES_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final VALUES_KEY_PIXEL:Ljava/lang/String; = "pixel"

.field public static final VALUES_KEY_QRCODE_URL:Ljava/lang/String; = "url"

.field public static final VALUES_KEY_QRIMG_PATH:Ljava/lang/String; = "path"

.field public static final VALUES_KEY_RANDOMSSO:Ljava/lang/String; = "randomsso"

.field public static final VALUES_KEY_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final VALUES_KEY_RESULT_INFO:Ljava/lang/String; = "resultInfo"

.field public static final VALUES_KEY_RESULT_STRING:Ljava/lang/String; = "resultString"

.field public static final VALUES_KEY_SDKVERSION:Ljava/lang/String; = "sdkVersion"

.field public static final VALUES_KEY_SESSIONID:Ljava/lang/String; = "sessionid"

.field public static final VALUES_KEY_SHOW_UNAME:Ljava/lang/String; = "showuname"

.field public static final VALUES_KEY_SIMNO:Ljava/lang/String; = "simno"

.field public static final VALUES_KEY_SMSCODE:Ljava/lang/String; = "smsCode"

.field public static final VALUES_KEY_SMS_DEST:Ljava/lang/String; = "sms_dest"

.field public static final VALUES_KEY_SMS_REQ_COUNT:Ljava/lang/String; = "count"

.field public static final VALUES_KEY_SOURCEID:Ljava/lang/String; = "sourceid"

.field public static final VALUES_KEY_SQN:Ljava/lang/String; = "sqn"

.field public static final VALUES_KEY_SSOLOGLEVEL:Ljava/lang/String; = "ssologlevel"

.field public static final VALUES_KEY_THIRDCOMMANDID:Ljava/lang/String; = "thirdcommandid"

.field public static final VALUES_KEY_THIRDPARTYACCOUNTS:Ljava/lang/String; = "thirdpartyaccounts"

.field public static final VALUES_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final VALUES_KEY_UID:Ljava/lang/String; = "uid"

.field public static final VALUES_KEY_UPGRADETYPE:Ljava/lang/String; = "upgradetype"

.field public static final VALUES_KEY_USERLIST:Ljava/lang/String; = "userlist"

.field public static final VALUES_KEY_USERNAME:Ljava/lang/String; = "username"

.field public static final VALUES_KEY_VALIDATE:Ljava/lang/String; = "validate"

.field public static final VALUES_KEY_VALIDCODE:Ljava/lang/String; = "validcode"

.field public static final VALUES_KEY_VALIDIDENTIFY:Ljava/lang/String; = "validIdentify"

.field public static final VALUES_KEY_VERSION_BASE:Ljava/lang/String; = "resultCode"

.field public static final VALUE_KEY_RCFLAG:Ljava/lang/String; = "rcflag"

.field public static final VALUE_KEY_URL:Ljava/lang/String; = "url"
