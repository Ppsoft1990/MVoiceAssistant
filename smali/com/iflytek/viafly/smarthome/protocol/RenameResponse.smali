.class public Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
.super Ljava/lang/Object;
.source "RenameResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RenameResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private cmdId:Ljava/lang/String;

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->init()V

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->cmdId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 33
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "RenameResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->action:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    .locals 7
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    const/4 v2, 0x0

    .line 55
    :goto_0
    return-object v2

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 42
    .local v2, "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;

    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    .local v3, "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    :try_start_1
    const-string/jumbo v5, "action"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->setAction(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v5, "cmdId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->setCmdId(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/smarthome/base/Status;->parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v4

    .line 49
    .local v4, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "status":Lcom/iflytek/viafly/smarthome/base/Status;
    :cond_1
    move-object v2, v3

    .line 53
    .end local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    .restart local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    goto :goto_0

    .line 51
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v5, "RenameResponse"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    .restart local v2    # "response":Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->cmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->action:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->cmdId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 84
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    const-string/jumbo v2, ""

    .line 89
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v3, "cmdId"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->cmdId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v3, :cond_0

    .line 93
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/RenameResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RenameResponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
