.class public final Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;
.super Ljava/lang/Object;
.source "SmartHomeConstants.java"


# static fields
.field public static final LIGHT_NAME:Ljava/lang/String; = "\u706f"

.field public static final POWER:I = 0x1

.field public static final POWER_ALL:I = 0x4

.field public static final POWER_LEFT:I = 0x2

.field public static final POWER_RIGHT:I = 0x3

.field public static final SLOT_NAME:Ljava/lang/String; = "\u63d2\u5ea7"

.field public static final SWITCH_NAME:Ljava/lang/String; = "\u5f00\u5173"

.field private static mDevicesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPluginHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPlugintype2DeviceNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResultHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSpeechNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xcc

    const/16 v3, 0xc8

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mSpeechNameMap:Ljava/util/HashMap;

    .line 37
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mSpeechNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tv"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mSpeechNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "voicebox"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    .line 41
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tv"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMART_TV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "voicebox"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_VOICE_BOX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "aircondition"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_COMMERCIAL_AIRCONDITION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fridge"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_FRIDGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "washer"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_WASHER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "waterheater"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_WATERHEATER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "light"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->PHILIPS_HUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "slot"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->JD_SLOT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "switch"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->JD_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "curtain"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->REMOTE_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "coffeemaker"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SMART_PLUG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "humidifier"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SMART_PLUG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "airdryer"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_AIR_DRYER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "airpurifier"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_AIR_PURIFIER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "electricfan"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_ELECTRIC_FAN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mideahumidifier"

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_HUMIDIFIER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tv"

    const-string/jumbo v2, "\u7535\u89c6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "voicebox"

    const-string/jumbo v2, "\u97f3\u7bb1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "aircondition"

    const-string/jumbo v2, "\u7a7a\u8c03"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fridge"

    const-string/jumbo v2, "\u51b0\u7bb1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "washer"

    const-string/jumbo v2, "\u6d17\u8863\u673a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "waterheater"

    const-string/jumbo v2, "\u70ed\u6c34\u5668"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "light"

    const-string/jumbo v2, "\u7535\u706f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "slot"

    const-string/jumbo v2, "\u63d2\u5ea7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "switch"

    const-string/jumbo v2, "\u5f00\u5173"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "curtain"

    const-string/jumbo v2, "\u7a97\u5e18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fishbo"

    const-string/jumbo v2, "\u7a7a\u6c14\u76d2\u5b50"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "coffeemaker"

    const-string/jumbo v2, "\u5496\u5561\u673a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "airdryer"

    const-string/jumbo v2, "\u9664\u6e7f\u673a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "airpurifier"

    const-string/jumbo v2, "\u7a7a\u6c14\u51c0\u5316\u5668"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "electricfan"

    const-string/jumbo v2, "\u98ce\u6247"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mideahumidifier"

    const-string/jumbo v2, "\u52a0\u6e7f\u5668"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "humidifier"

    const-string/jumbo v2, "\u52a0\u6e7f\u5668"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPluginHashMap:Ljava/util/HashMap;

    .line 79
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPluginHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMART_TV:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPluginHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_VOICE_BOX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPlugintype2DeviceNameMap:Ljava/util/HashMap;

    .line 83
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPlugintype2DeviceNameMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMART_TV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPlugintype2DeviceNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_VOICE_BOX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "pluginType"    # Ljava/lang/Integer;

    .prologue
    .line 104
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPlugintype2DeviceNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDevicesMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mDevicesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getPluginHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mPluginHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getResultMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mResultHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getSpeechNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->mSpeechNameMap:Ljava/util/HashMap;

    return-object v0
.end method
