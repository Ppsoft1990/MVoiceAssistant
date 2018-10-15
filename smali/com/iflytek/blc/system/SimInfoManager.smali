.class public Lcom/iflytek/blc/system/SimInfoManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SimInfoManager"

    iput-object v0, p0, Lcom/iflytek/blc/system/SimInfoManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SimInfoManager"

    iput-object v0, p0, Lcom/iflytek/blc/system/SimInfoManager;->a:Ljava/lang/String;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIMSINumber()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMCCNumber()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/iflytek/blc/system/SimInfoManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMNCNumber()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/iflytek/blc/system/SimInfoManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileNetworkType()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPhoneType()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    const/4 v0, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/system/SimInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SimInfoManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimType()Lcom/iflytek/blc/system/SimType;
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/blc/system/SimInfoManager;->getMNCNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/iflytek/blc/system/SimType;->Null:Lcom/iflytek/blc/system/SimType;

    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_6

    const-string/jumbo v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v0, Lcom/iflytek/blc/system/SimType;->China_Mobile:Lcom/iflytek/blc/system/SimType;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/iflytek/blc/system/SimType;->China_Unicom:Lcom/iflytek/blc/system/SimType;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/iflytek/blc/system/SimType;->China_Telecom:Lcom/iflytek/blc/system/SimType;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/iflytek/blc/system/SimType;->Unknown:Lcom/iflytek/blc/system/SimType;

    goto :goto_0
.end method
