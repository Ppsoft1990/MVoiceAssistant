.class public Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
.super Ljava/lang/Object;
.source "AppStartRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStartRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private deviceId:I

.field private equipment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "equipment"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->deviceId:I

    .line 31
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->equipment:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 36
    const-string/jumbo v0, "AppStartRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->action:Ljava/lang/String;

    .line 37
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->cmdId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    .locals 6
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const/4 v2, 0x0

    .line 56
    :goto_0
    return-object v2

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 47
    .local v2, "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;

    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    .local v3, "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    :try_start_1
    const-string/jumbo v4, "action"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->setAction(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v4, "cmdId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->setCmdId(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v4, "deviceId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->setDeviceId(I)V

    .line 52
    const-string/jumbo v4, "equipment"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->setEquipment(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 55
    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    goto :goto_0

    .line 53
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v4, "AppStartRequest"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->deviceId:I

    return v0
.end method

.method public getEquipment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->equipment:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->action:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->cmdId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->deviceId:I

    .line 81
    return-void
.end method

.method public setEquipment(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipment"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->equipment:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    const-string/jumbo v2, ""

    .line 94
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v3, "deviceId"

    iget v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->deviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v3, "equipment"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->equipment:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppStartRequest"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
