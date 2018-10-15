.class public Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
.super Ljava/lang/Object;
.source "VoiceRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Command;",
            ">;"
        }
    .end annotation
.end field

.field private equipment:Ljava/lang/String;

.field private jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

.field private rawcommand:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "VoiceRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->action:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "equipment"    # Ljava/lang/String;
    .param p2, "cmdId"    # Ljava/lang/String;
    .param p3, "rawcommand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p4, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "VoiceRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->action:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->equipment:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->cmdId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->rawcommand:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static genCmdId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
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

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .locals 10
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    const/4 v6, 0x0

    .line 76
    :goto_0
    return-object v6

    .line 49
    :cond_0
    const/4 v6, 0x0

    .line 51
    .local v6, "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v7, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-direct {v7}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v6    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .local v7, "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :try_start_1
    const-string/jumbo v8, "action"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setAction(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v8, "equipment"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v8, "cmdId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setCmdId(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v8, "rawcommand"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setRawcommand(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v8, "commands"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 58
    const-string/jumbo v8, "commands"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 59
    .local v4, "jsonArr":Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/base/Command;->parseCommands(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    invoke-virtual {v7, v0}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setCommands(Ljava/util/List;)V

    .line 63
    .end local v0    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v8, "jdVoiceModel"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 64
    const-string/jumbo v8, "jdVoiceModel"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 65
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-direct {v2}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;-><init>()V

    .line 66
    .local v2, "jdVoiceModel":Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;
    const-string/jumbo v8, "feeId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setFeeId(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v8, "streamId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setStreamId(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v8, "currentValue"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setCurrentValue(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v8, "info"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setInfo(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v7, v2}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setJdVoiceModel(Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "jdVoiceModel":Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object v6, v7

    .line 75
    .end local v7    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .restart local v6    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    goto/16 :goto_0

    .line 73
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v8, "VoiceRequest"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v7    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .restart local v6    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    goto :goto_1
.end method


# virtual methods
.method public addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V
    .locals 1
    .param p1, "command"    # Lcom/iflytek/viafly/smarthome/base/Command;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getEquipment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->equipment:Ljava/lang/String;

    return-object v0
.end method

.method public getJdVoiceModel()Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    return-object v0
.end method

.method public getRawcommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->rawcommand:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->action:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->cmdId:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setCommands(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    .line 125
    return-void
.end method

.method public setEquipment(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipment"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->equipment:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setJdVoiceModel(Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;)V
    .locals 0
    .param p1, "jdVoiceModel"    # Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    .line 85
    return-void
.end method

.method public setRawcommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawcommand"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->rawcommand:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 8

    .prologue
    .line 128
    const-string/jumbo v5, ""

    .line 130
    .local v5, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .local v2, "json":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->action:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 132
    const-string/jumbo v6, "action"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->action:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->equipment:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 135
    const-string/jumbo v6, "equipment"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->equipment:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->cmdId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 138
    const-string/jumbo v6, "cmdId"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->rawcommand:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 141
    const-string/jumbo v6, "rawcommand"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->rawcommand:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_3
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 145
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 146
    .local v3, "jsonArr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 147
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->commands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-virtual {v6}, Lcom/iflytek/viafly/smarthome/base/Command;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_4
    const-string/jumbo v6, "commands"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .end local v1    # "i":I
    .end local v3    # "jsonArr":Lorg/json/JSONArray;
    :cond_5
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    if-eqz v6, :cond_a

    .line 153
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v4, "jsonObject":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v6}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getFeeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 156
    const-string/jumbo v6, "feeId"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getFeeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_6
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v6}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getStreamId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 160
    const-string/jumbo v6, "streamId"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getStreamId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_7
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v6}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getCurrentValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 164
    const-string/jumbo v6, "currentValue"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getCurrentValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_8
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v6}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 168
    const-string/jumbo v6, "info"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->jdVoiceModel:Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_9
    const-string/jumbo v6, "jdVoiceModel"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 178
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_1
    return-object v5

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "VoiceRequest"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
