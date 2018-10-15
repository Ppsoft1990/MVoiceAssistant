.class public Lhz;
.super Lcom/iflytek/yd/system/SimInfoManager;
.source "SimInfoManagerImpl.java"


# static fields
.field private static b:Lhz;


# instance fields
.field private a:Lhy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/yd/system/SimInfoManager;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    iput-object v0, p0, Lhz;->a:Lhy;

    .line 25
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lhz;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v1, Lhz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhz;->b:Lhz;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lhz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lhz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhz;->b:Lhz;

    .line 31
    :cond_0
    sget-object v0, Lhz;->b:Lhz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const-string/jumbo v0, ""

    .line 67
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lhz;->a:Lhy;

    invoke-virtual {v2}, Lhy;->d()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIMSINumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LAST_IMSI"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "lastIMSI":Ljava/lang/String;
    iget-object v2, p0, Lhz;->a:Lhy;

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, v3}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "nowIMSI":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 39
    iget-object v2, p0, Lhz;->a:Lhy;

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, v3}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_IMSI_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;Z)V

    .line 47
    :goto_0
    return-object v1

    .line 45
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_IMSI_CHANGED"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->c(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "networkOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->c(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->e(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->e(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public getSimState()I
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->g(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 54
    .local v0, "simState":I
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lhz;->a:Lhy;

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lhy;->g(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 57
    :cond_0
    return v0
.end method
