.class public Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;
.super Ljava/lang/Object;
.source "JdLoginResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JdLoginResponse"


# instance fields
.field private final LOGIN_FAIL:I

.field private final LOGIN_SUCCESS:I

.field private action:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->LOGIN_SUCCESS:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->LOGIN_FAIL:I

    .line 26
    const-string/jumbo v0, "JdLoginResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->action:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->LOGIN_SUCCESS:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->LOGIN_FAIL:I

    .line 30
    const-string/jumbo v0, "JdLoginResponse"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->action:Ljava/lang/String;

    .line 31
    iput p1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->state:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v2, 0x1

    iput v2, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->LOGIN_SUCCESS:I

    .line 22
    const/4 v2, 0x2

    iput v2, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->LOGIN_FAIL:I

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->action:Ljava/lang/String;

    .line 42
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "JdLoginResponse"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->state:I

    return v0
.end method

.method public isLoginSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    iget v1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->state:I

    if-ne v0, v1, :cond_0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->action:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->state:I

    .line 66
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const-string/jumbo v2, ""

    .line 75
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_0
    const-string/jumbo v3, "state"

    iget v4, p0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->state:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "JdLoginResponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
