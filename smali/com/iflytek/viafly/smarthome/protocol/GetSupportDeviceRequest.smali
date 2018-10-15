.class public Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
.super Ljava/lang/Object;
.source "GetSupportDeviceRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAppCtrlRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 26
    const-string/jumbo v0, "GetSupportDeviceRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->action:Ljava/lang/String;

    .line 27
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->cmdId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    .locals 6
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    const/4 v2, 0x0

    .line 44
    :goto_0
    return-object v2

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 37
    .local v2, "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;

    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    .local v3, "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    :try_start_1
    const-string/jumbo v4, "action"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->setAction(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v4, "cmdId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->setCmdId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 43
    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    goto :goto_0

    .line 41
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v4, "GetAppCtrlRequest"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->action:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->cmdId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    const-string/jumbo v2, ""

    .line 66
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "GetAppCtrlRequest"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
