.class public Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
.super Ljava/lang/Object;
.source "GetAppCtrlResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAppCtrlResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;
    .param p3, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->init()V

    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->deviceId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 47
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->downloadUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "cmdId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;
    .param p5, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->action:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->cmdId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->deviceId:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 38
    iput-object p5, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->downloadUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 76
    const-string/jumbo v0, "GetAppCtrlRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->action:Ljava/lang/String;

    .line 77
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->cmdId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    .locals 7
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;

    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    .local v3, "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    :try_start_1
    const-string/jumbo v5, "action"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->setAction(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v5, "cmdId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->setCmdId(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v5, "deviceId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->setDeviceId(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/smarthome/base/Status;->parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v4

    .line 65
    .local v4, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V

    .line 67
    .end local v4    # "status":Lcom/iflytek/viafly/smarthome/base/Status;
    :cond_1
    const-string/jumbo v5, "downloadUrl"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->setDeviceId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 70
    .end local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    .restart local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    goto :goto_0

    .line 68
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v5, "GetAppCtrlResponse"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    .restart local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->action:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->cmdId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->deviceId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->downloadUrl:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 110
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 121
    const-string/jumbo v2, ""

    .line 123
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v3, "deviceId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v3, :cond_0

    .line 128
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_0
    const-string/jumbo v3, "downloadUrl"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "GetAppCtrlResponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
