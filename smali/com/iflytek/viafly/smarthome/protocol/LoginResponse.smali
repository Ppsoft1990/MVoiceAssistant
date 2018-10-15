.class public Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "LoginResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->action:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 1
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "LoginResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->action:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "action"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->action:Ljava/lang/String;

    .line 41
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    .local v4, "jsonStatus":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 43
    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "code":I
    const-string/jumbo v5, "info"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "info":Ljava/lang/String;
    new-instance v5, Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-direct {v5, v0, v2}, Lcom/iflytek/viafly/smarthome/base/Status;-><init>(ILjava/lang/String;)V

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v0    # "code":I
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonStatus":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "LoginResponse"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->action:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 66
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    const-string/jumbo v2, ""

    .line 71
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v3, :cond_1

    .line 76
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 83
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LoginResponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
