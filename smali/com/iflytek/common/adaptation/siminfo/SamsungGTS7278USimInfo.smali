.class public Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "SamsungGTS7278USimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private tm1:Landroid/telephony/TelephonyManager;

.field private tm2:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 15
    const-string/jumbo v0, "SamsungGTS7278USimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm1:Landroid/telephony/TelephonyManager;

    .line 24
    const-string/jumbo v0, "phone2"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm2:Landroid/telephony/TelephonyManager;

    .line 25
    return-void
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "imei":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 33
    .end local v0    # "imei":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "imei":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "netWorkType":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 62
    const-string/jumbo v0, ""

    .line 63
    .local v0, "hni":Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "state":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 40
    const-string/jumbo v0, ""

    .line 41
    .local v0, "imsi":Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
