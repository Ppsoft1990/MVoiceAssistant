.class public Lanz;
.super Lvx;
.source "MiguAuthBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1119"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 23
    const-string/jumbo v0, "MiguAuthBizHelper"

    iput-object v0, p0, Lanz;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lanz;->setNeedGZip(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 7
    .param p1, "ttoken"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "tryCount"    # I

    .prologue
    .line 32
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v3, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string/jumbo v0, "ttoken"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v0, "MiguAuthBizHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start migu request,cmd is: 1119,param is ttoken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 41
    const-string/jumbo v0, "retrycount"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_1
    :goto_0
    const-string/jumbo v1, "1119"

    const/16 v2, 0x5e

    const-string/jumbo v4, "3.0"

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lanz;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 43
    :catch_0
    move-exception v6

    .line 44
    .local v6, "ex":Lorg/json/JSONException;
    const-string/jumbo v0, "MiguAuthBizHelper"

    const-string/jumbo v1, "add json exception"

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
