.class public Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "AsusDualSimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private tm1:Landroid/telephony/TelephonyManager;

.field private tm2:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 17
    const-string/jumbo v0, "AsusDualSimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->TAG:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    .line 27
    const-string/jumbo v0, "phone2"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    .line 29
    const-string/jumbo v0, "AsusDualSimInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AsusDualSimInfo | tm1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tm2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 73
    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    .line 74
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    .line 64
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/AsusDualSimInfo;->tm2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
