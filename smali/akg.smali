.class public Lakg;
.super Lvx;
.source "CmccCardRequestHelper.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lvx;-><init>(Landroid/content/Context;)V

    .line 17
    const-string/jumbo v0, "CmccCardRequestHelper"

    iput-object v0, p0, Lakg;->a:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1007"

    invoke-virtual {p0, v0}, Lakg;->setServerUrl(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lakg;->setOperationListener(Lyn;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 5
    .param p1, "version"    # I

    .prologue
    .line 26
    iget-object v2, p0, Lakg;->a:Ljava/lang/String;

    const-string/jumbo v3, "sendRequest()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v1, "param":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "fee_transfer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v2, "version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lakg;->setNeedGZip(Z)V

    .line 35
    const-string/jumbo v2, "1007"

    const/16 v3, 0x55

    invoke-virtual {p0, v2, v3, v1}, Lakg;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lakg;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
