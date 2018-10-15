.class public Lazf;
.super Ljava/lang/Object;
.source "ComponentsHelper.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 27
    const-string/jumbo v1, "none"

    .line 29
    .local v1, "netType":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v2

    .line 32
    .local v2, "networkType":I
    const-string/jumbo v3, "ComponentsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GET_NETWORKTYPE networkType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 34
    const-string/jumbo v3, "ComponentsHelper"

    const-string/jumbo v4, "GET_NETWORKTYPE networkType is wifi"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string/jumbo v1, "wifi"

    .line 42
    .end local v0    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .end local v2    # "networkType":I
    :cond_0
    :goto_0
    return-object v1

    .line 36
    .restart local v0    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .restart local v2    # "networkType":I
    :cond_1
    if-nez v2, :cond_0

    .line 37
    const-string/jumbo v3, "ComponentsHelper"

    const-string/jumbo v4, "GET_NETWORKTYPE networkType is mobile"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v1, "mobile"

    goto :goto_0
.end method
