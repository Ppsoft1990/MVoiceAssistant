.class public Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
.super Ljava/lang/Object;
.source "GetSupportDeviceResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetSupportDeviceResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;

.field private supportDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/SupportDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->init()V

    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/SupportDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "supportDevices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/SupportDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->supportDevices:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 46
    const-string/jumbo v0, "GetSupportDeviceResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->action:Ljava/lang/String;

    .line 47
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

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->cmdId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    .locals 8
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    const/4 v4, 0x0

    .line 71
    :goto_0
    return-object v4

    .line 55
    :cond_0
    const/4 v4, 0x0

    .line 57
    .local v4, "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v5, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;

    invoke-direct {v5}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v4    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    .local v5, "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    :try_start_1
    const-string/jumbo v6, "action"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->setAction(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v6, "cmdId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->setCmdId(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v6, "supportDevices"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    const-string/jumbo v6, "supportDevices"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 64
    .local v2, "jsonArr":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->parse(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/SupportDevice;>;"
    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->setSupportDevices(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "jsonArr":Lorg/json/JSONArray;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/SupportDevice;>;"
    :cond_1
    move-object v4, v5

    .line 69
    .end local v5    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    .restart local v4    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    goto :goto_0

    .line 67
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v6, "GetSupportDeviceResponse"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v5    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    .restart local v4    # "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public getSupportDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/SupportDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->supportDevices:Ljava/util/List;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->action:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->cmdId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 104
    return-void
.end method

.method public setSupportDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/SupportDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "supportDevices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/SupportDevice;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->supportDevices:Ljava/util/List;

    .line 96
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 9

    .prologue
    .line 107
    const-string/jumbo v6, ""

    .line 109
    .local v6, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "action"

    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->action:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v7, "cmdId"

    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->cmdId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->supportDevices:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 114
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 115
    .local v4, "jsonArr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->supportDevices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 116
    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->supportDevices:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;

    .line 117
    .local v0, "device":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 118
    .local v5, "jsonDevice":Lorg/json/JSONObject;
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "device":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    .end local v5    # "jsonDevice":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v7, "supportDevices"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .end local v2    # "i":I
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    :cond_1
    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v7, :cond_2

    .line 125
    const-string/jumbo v7, "status"

    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v8}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 131
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_1
    return-object v6

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GetSupportDeviceResponse"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
