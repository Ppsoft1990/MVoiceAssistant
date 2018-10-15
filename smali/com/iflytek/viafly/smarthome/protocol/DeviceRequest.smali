.class public Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;
.super Ljava/lang/Object;
.source "DeviceRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceRequest"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private command:Lcom/iflytek/viafly/smarthome/base/Command;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private rawcommand:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
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

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->setCmdId(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "voiceCommand"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->setAction(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Command;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "command"    # Lcom/iflytek/viafly/smarthome/base/Command;
    .param p4, "rawcommand"    # Ljava/lang/String;
    .param p5, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    .line 34
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    .line 37
    iput-object p5, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    if-ne p0, p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 111
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;

    .line 113
    .local v0, "other":Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 114
    iget-object v3, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 119
    iget-object v3, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_6
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 122
    goto :goto_0

    .line 123
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    if-nez v3, :cond_8

    .line 124
    iget-object v3, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    if-eqz v3, :cond_9

    move v1, v2

    .line 125
    goto :goto_0

    .line 126
    :cond_8
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    iget-object v4, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 127
    goto :goto_0

    .line 128
    :cond_9
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 129
    iget-object v3, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 130
    goto :goto_0

    .line 131
    :cond_a
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 132
    goto :goto_0

    .line 133
    :cond_b
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 134
    iget-object v3, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_c
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 137
    goto/16 :goto_0

    .line 138
    :cond_d
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 139
    iget-object v3, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 140
    goto/16 :goto_0

    .line 141
    :cond_e
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 142
    goto/16 :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Lcom/iflytek/viafly/smarthome/base/Command;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getRawcommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 90
    const/16 v0, 0x1f

    .line 91
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 92
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 93
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 94
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 95
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    .line 96
    :goto_3
    add-int v1, v4, v2

    .line 97
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    .line 98
    :goto_4
    add-int v1, v4, v2

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 100
    :goto_5
    add-int v1, v2, v3

    .line 101
    return v1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 99
    :cond_5
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V
    .locals 0
    .param p1, "command"    # Lcom/iflytek/viafly/smarthome/base/Command;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    .line 78
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRawcommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawcommand"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 10

    .prologue
    .line 147
    const-string/jumbo v7, ""

    .line 149
    .local v7, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 151
    const-string/jumbo v8, "action"

    iget-object v9, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->action:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_0
    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 154
    const-string/jumbo v8, "deviceId"

    iget-object v9, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_1
    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 157
    const-string/jumbo v8, "cmdId"

    iget-object v9, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->cmdId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_2
    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 160
    const-string/jumbo v8, "rawcommand"

    iget-object v9, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->rawcommand:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_3
    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    if-eqz v8, :cond_6

    .line 164
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 165
    .local v4, "jsonCmd":Lorg/json/JSONObject;
    const-string/jumbo v8, "cmd"

    iget-object v9, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/base/Command;->getCmd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->command:Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-virtual {v8}, Lcom/iflytek/viafly/smarthome/base/Command;->getParams()Ljava/util/Map;

    move-result-object v6

    .line 167
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 168
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 169
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 171
    .local v5, "jsonParams":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonCmd":Lorg/json/JSONObject;
    .end local v5    # "jsonParams":Lorg/json/JSONObject;
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "DeviceRequest"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v7

    .line 175
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "jsonCmd":Lorg/json/JSONObject;
    .restart local v5    # "jsonParams":Lorg/json/JSONObject;
    .restart local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    const-string/jumbo v8, "params"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "jsonParams":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v8, "command"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    .end local v4    # "jsonCmd":Lorg/json/JSONObject;
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1
.end method
