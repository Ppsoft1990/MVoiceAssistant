.class public Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
.super Ljava/lang/Object;
.source "AppStartResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAppCtrlResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private deviceId:I

.field private equipment:Ljava/lang/String;

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "equipment"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->init()V

    .line 35
    iput p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->deviceId:I

    .line 36
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->equipment:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 38
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 66
    const-string/jumbo v0, "AppStartResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->action:Ljava/lang/String;

    .line 67
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->cmdId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    .locals 7
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    const/4 v2, 0x0

    .line 62
    :goto_0
    return-object v2

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 47
    .local v2, "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;

    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    .local v3, "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    :try_start_1
    const-string/jumbo v5, "action"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->setAction(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v5, "cmdId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->setCmdId(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v5, "deviceId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->setDeviceId(I)V

    .line 53
    const-string/jumbo v5, "equipment"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->setEquipment(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/smarthome/base/Status;->parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v4

    .line 56
    .local v4, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "status":Lcom/iflytek/viafly/smarthome/base/Status;
    :cond_1
    move-object v2, v3

    .line 60
    .end local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    .restart local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    goto :goto_0

    .line 58
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v5, "GetAppCtrlResponse"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    .restart local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->deviceId:I

    return v0
.end method

.method public getEquipment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->equipment:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->action:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->cmdId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->deviceId:I

    .line 92
    return-void
.end method

.method public setEquipment(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipment"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->equipment:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 108
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    const-string/jumbo v2, ""

    .line 113
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v3, "deviceId"

    iget v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->deviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v3, "equipment"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->equipment:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v3, :cond_0

    .line 119
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "GetAppCtrlResponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
