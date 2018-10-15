.class public Laog;
.super Lvx;
.source "MiguThridBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1120"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 21
    const-string/jumbo v0, "99"

    iput-object v0, p0, Laog;->a:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "MiguThridBizHelper"

    iput-object v0, p0, Laog;->b:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laog;->setNeedGZip(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "99"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v2, "MiguThridBizHelper"

    const-string/jumbo v3, "start thrid token request,cmd is: 1120,param is type: 99"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const-string/jumbo v2, "1120"

    const/16 v3, 0x56

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Laog;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "MiguThridBizHelper"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
