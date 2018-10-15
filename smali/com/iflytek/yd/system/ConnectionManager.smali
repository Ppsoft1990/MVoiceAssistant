.class public Lcom/iflytek/yd/system/ConnectionManager;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "ConnectionMgr"


# instance fields
.field private mConMgr:Landroid/net/ConnectivityManager;

.field private mNetworkInfo:Landroid/net/NetworkInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mConMgr:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mConMgr:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mConMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mConMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentNetworkType()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getNetworkExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkSubtypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/system/ConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
