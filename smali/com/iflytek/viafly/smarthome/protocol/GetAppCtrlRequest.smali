.class public Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
.super Ljava/lang/Object;
.source "GetAppCtrlRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAppCtrlRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->deviceId:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 34
    const-string/jumbo v0, "GetAppCtrlRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->action:Ljava/lang/String;

    .line 35
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->cmdId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    .locals 6
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const/4 v2, 0x0

    .line 53
    :goto_0
    return-object v2

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 45
    .local v2, "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;

    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    .local v3, "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    :try_start_1
    const-string/jumbo v4, "action"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->setAction(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v4, "cmdId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->setCmdId(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v4, "deviceId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->setDeviceId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 52
    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    goto :goto_0

    .line 50
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v4, "GetAppCtrlRequest"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->action:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->cmdId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->deviceId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    const-string/jumbo v2, ""

    .line 83
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v3, "deviceId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "GetAppCtrlRequest"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
