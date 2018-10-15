.class public Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;
.super Ljava/lang/Object;
.source "StopScanRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StopScanRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private scanId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_REQUEST:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->action:Ljava/lang/String;

    .line 24
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->cmdId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v2, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_REQUEST:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->action:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    :goto_0
    return-void

    .line 33
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->setAction(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "scanId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->setScanId(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v2, "cmdId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->setCmdId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "StopScanRequest"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getScanId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->scanId:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->action:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->cmdId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setScanId(Ljava/lang/String;)V
    .locals 0
    .param p1, "scanId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->scanId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    const-string/jumbo v2, ""

    .line 69
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v3, "scanId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->scanId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "StopScanRequest"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
