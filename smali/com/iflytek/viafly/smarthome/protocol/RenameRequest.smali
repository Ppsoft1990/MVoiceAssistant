.class public Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
.super Ljava/lang/Object;
.source "RenameRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RenameRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private deviceIdentifier:Ljava/lang/String;

.field private newName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdentifier"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->init()V

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->deviceIdentifier:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->newName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 36
    const-string/jumbo v0, "RenameRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->action:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->cmdId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
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
    .local v2, "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;

    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    .local v3, "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    :try_start_1
    const-string/jumbo v4, "action"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->setAction(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v4, "cmdId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->setCmdId(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v4, "deviceIdentifier"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v4, "newName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->setNewName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 55
    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    goto :goto_0

    .line 53
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v4, "RenameRequest"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    .restart local v2    # "request":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->deviceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getNewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->newName:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->action:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->cmdId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDeviceIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdentifier"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->deviceIdentifier:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 0
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->newName:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v3, "deviceIdentifier"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->deviceIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v3, "newName"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->newName:Ljava/lang/String;

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
    const-string/jumbo v3, "RenameRequest"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
