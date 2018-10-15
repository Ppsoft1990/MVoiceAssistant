.class public Lcom/iflytek/viafly/smarthome/base/SmartDefine;
.super Ljava/lang/Object;
.source "SmartDefine.java"


# static fields
.field public static final APP_CTRL_REQUEST:Ljava/lang/String; = "GetAppCtrlRequest"

.field public static final APP_CTRL_RESPONSE:Ljava/lang/String; = "GetAppCtrlResponse"

.field public static final APP_START_REQUEST:Ljava/lang/String; = "AppStartRequest"

.field public static final APP_START_RESPONSE:Ljava/lang/String; = "AppStartResponse"

.field public static BC_ACTION_REQ:Ljava/lang/String; = null

.field public static BC_ACTION_RESP:Ljava/lang/String; = null

.field public static BC_TV_ACTION:Ljava/lang/String; = null

.field public static BC_VBOX_ACTION:Ljava/lang/String; = null

.field public static BROADLINK_AIR:Ljava/lang/String; = null

.field public static BROADLINK_CURTAIN:Ljava/lang/String; = null

.field public static BROADLINK_SWITCH:Ljava/lang/String; = null

.field public static CONNECT_DEVICE:Ljava/lang/String; = null

.field public static FOUND_ACTION_REQ:Ljava/lang/String; = null

.field public static FOUND_ACTION_RESP:Ljava/lang/String; = null

.field public static final GET_SUPPORT_DEVICE_REQUEST:Ljava/lang/String; = "GetSupportDeviceRequest"

.field public static final GET_SUPPORT_DEVICE_RESPONSE:Ljava/lang/String; = "GetSupportDeviceResponse"

.field public static HAIER_COMMERCIAL_AIRCONDITION:Ljava/lang/String; = null

.field public static HAIER_FRIDGE:Ljava/lang/String; = null

.field public static HAIER_WASHER:Ljava/lang/String; = null

.field public static HAIER_WATERHEATER:Ljava/lang/String; = null

.field public static IFLY_SMARTHOME_APP:Ljava/lang/String; = null

.field public static IFLY_SMART_TV:Ljava/lang/String; = null

.field public static IFLY_VOICE_BOX:Ljava/lang/String; = null

.field public static JD_SLOT:Ljava/lang/String; = null

.field public static JD_SWITCH:Ljava/lang/String; = null

.field public static MIDEA_AIR_CONDITIONER:Ljava/lang/String; = null

.field public static MIDEA_AIR_DRYER:Ljava/lang/String; = null

.field public static MIDEA_AIR_PURIFIER:Ljava/lang/String; = null

.field public static MIDEA_ELECTRIC_FAN:Ljava/lang/String; = null

.field public static MIDEA_HUMIDIFIER:Ljava/lang/String; = null

.field public static MIDEA_SECRET_KEY:Ljava/lang/String; = null

.field public static PHILIPS_HUE:Ljava/lang/String; = null

.field public static REMOTE_CONTROL:Ljava/lang/String; = null

.field public static final RENAME_REQUEST:Ljava/lang/String; = "RenameRequest"

.field public static final RENAME_RESPONSE:Ljava/lang/String; = "RenameResponse"

.field public static REQUEST:Ljava/lang/String; = null

.field public static RESPONSE:Ljava/lang/String; = null

.field public static SCAN_REQUEST:Ljava/lang/String; = null

.field public static SCAN_RESPONSE:Ljava/lang/String; = null

.field public static SMART_PLUG:Ljava/lang/String; = null

.field public static STOP_SCAN_REQUEST:Ljava/lang/String; = null

.field public static STOP_SCAN_RESPONSE:Ljava/lang/String; = null

.field public static VOICE_COMMAND:Ljava/lang/String; = null

.field public static final VOICE_REQUEST:Ljava/lang/String; = "VoiceRequest"

.field public static final VOICE_RESPONSE:Ljava/lang/String; = "VoiceResponse"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "com.iflytek.lingxi.smarthome.request"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BC_ACTION_REQ:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "com.iflytek.lingxi.smarthome.response"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BC_ACTION_RESP:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "com.iflytek.lingxi.smarthome.tv.request"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BC_TV_ACTION:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "com.iflytek.lingxi.smarthome.voicebox.request"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BC_VBOX_ACTION:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "request"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->REQUEST:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "response"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->RESPONSE:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "ScanDevices"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->FOUND_ACTION_REQ:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "ScanResponse"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->FOUND_ACTION_RESP:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "ScanRequest"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SCAN_REQUEST:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "ScanResponse"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SCAN_RESPONSE:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "voiceCommand"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->VOICE_COMMAND:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "connectDevice"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->CONNECT_DEVICE:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "smarthome_app"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMARTHOME_APP:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "voicebox"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_VOICE_BOX:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "smarttv"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMART_TV:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "jdslot"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->JD_SLOT:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, "jdswitch"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->JD_SWITCH:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "philipshue"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->PHILIPS_HUE:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "airConditioner"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BROADLINK_AIR:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "curtain"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BROADLINK_CURTAIN:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "broadlinkSwitch"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BROADLINK_SWITCH:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "haier_commercial_aircondition"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_COMMERCIAL_AIRCONDITION:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "haier_fridge"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_FRIDGE:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "haier_washer"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_WASHER:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "haier_waterheater"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_WATERHEATER:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "StopScanRequest"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_REQUEST:Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "StopScanResponse"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_RESPONSE:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "RemoteControl"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->REMOTE_CONTROL:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "SmartPlug"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SMART_PLUG:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "midea_air_purifier"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_AIR_PURIFIER:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "midea_electric_fan"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_ELECTRIC_FAN:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, "midea_humidifier"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_HUMIDIFIER:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "midea_air_dryer"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_AIR_DRYER:Ljava/lang/String;

    .line 215
    const-string/jumbo v0, "midea_air_conditioner"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_AIR_CONDITIONER:Ljava/lang/String;

    .line 217
    const-string/jumbo v0, "ifly"

    sput-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_SECRET_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
