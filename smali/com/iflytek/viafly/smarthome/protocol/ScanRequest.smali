.class public Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;
.super Ljava/lang/Object;
.source "ScanRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private devicesIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SCAN_REQUEST:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->action:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->cmdId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v5, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SCAN_REQUEST:Ljava/lang/String;

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->action:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "action"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->setAction(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v5, "deviceIds"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 31
    .local v4, "jsonArr":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    .line 35
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 36
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "deviceId":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    invoke-interface {v5, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "cmdId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->setCmdId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ScanRequest"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "devicesIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SCAN_REQUEST:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->action:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicesIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->action:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->cmdId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDevicesIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "devicesIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    .line 55
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    const-string/jumbo v3, ""

    .line 76
    .local v3, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->action:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    const-string/jumbo v4, "action"

    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->action:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->devicesIds:Ljava/util/List;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 82
    .local v2, "jsonArr":Lorg/json/JSONArray;
    const-string/jumbo v4, "deviceIds"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .end local v2    # "jsonArr":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v4, "cmdId"

    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 90
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ScanRequest"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
