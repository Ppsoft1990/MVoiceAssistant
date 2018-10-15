.class public Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
.super Ljava/lang/Object;
.source "StopScanResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StopScanResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_RESPONSE:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->action:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 1
    .param p1, "cmdId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 29
    sget-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_RESPONSE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "cmdId"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_RESPONSE:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->action:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->action:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->cmdId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 37
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    .locals 9
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    const/4 v4, 0x0

    .line 59
    :goto_0
    return-object v4

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 46
    .local v4, "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "action"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "cmdId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "cmdId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 51
    .local v6, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    const-string/jumbo v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 52
    const-string/jumbo v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/smarthome/base/Status;->parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v6

    .line 54
    :cond_1
    new-instance v5, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;

    invoke-direct {v5, v0, v1, v6}, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v4    # "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    .local v5, "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    :try_start_1
    invoke-virtual {v5, v0}, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->setAction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 58
    .end local v5    # "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    .restart local v4    # "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    goto :goto_0

    .line 56
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cmdId":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v6    # "status":Lcom/iflytek/viafly/smarthome/base/Status;
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v7, "StopScanResponse"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "cmdId":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v5    # "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    .restart local v6    # "status":Lcom/iflytek/viafly/smarthome/base/Status;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    .restart local v4    # "resp":Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->action:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->cmdId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 84
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    const-string/jumbo v2, ""

    .line 89
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v3, :cond_0

    .line 93
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/StopScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "StopScanResponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
