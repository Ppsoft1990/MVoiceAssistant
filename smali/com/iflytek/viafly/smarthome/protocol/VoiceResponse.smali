.class public Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
.super Ljava/lang/Object;
.source "VoiceResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private equipment:Ljava/lang/String;

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "VoiceResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->action:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 1
    .param p1, "equipment"    # Ljava/lang/String;
    .param p2, "cmdId"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "VoiceResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->action:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->equipment:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->cmdId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 34
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    .locals 10
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 38
    const/4 v5, 0x0

    .line 56
    :goto_0
    return-object v5

    .line 41
    :cond_0
    const/4 v5, 0x0

    .line 43
    .local v5, "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "action"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "equipment"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "equipment":Ljava/lang/String;
    const-string/jumbo v8, "cmdId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "cmdId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 48
    .local v7, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    const-string/jumbo v8, "status"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 49
    const-string/jumbo v8, "status"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/base/Status;->parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v7

    .line 51
    :cond_1
    new-instance v6, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;

    invoke-direct {v6, v3, v1, v7}, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v5    # "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    .local v6, "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    :try_start_1
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->setAction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 55
    .end local v6    # "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    .restart local v5    # "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    goto :goto_0

    .line 53
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cmdId":Ljava/lang/String;
    .end local v3    # "equipment":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v7    # "status":Lcom/iflytek/viafly/smarthome/base/Status;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v8, "VoiceResponse"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "cmdId":Ljava/lang/String;
    .restart local v3    # "equipment":Ljava/lang/String;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v6    # "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    .restart local v7    # "status":Lcom/iflytek/viafly/smarthome/base/Status;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    .restart local v5    # "resp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getEquipment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->equipment:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->action:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->cmdId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setEquipment(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipment"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->equipment:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

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

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v3, "equipment"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->equipment:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v3, :cond_0

    .line 99
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 105
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "VoiceResponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
