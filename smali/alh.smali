.class public Lalh;
.super Lvx;
.source "MoviesBizHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 21
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1014"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 28
    const-string/jumbo v2, "MoviesBizHelper"

    const-string/jumbo v3, "\u7535\u5f71\u6570\u636e\u8bf7\u6c42"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "pageLength"

    const-string/jumbo v3, "3"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "NOWPLAYING"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    const-string/jumbo v2, "1014"

    const/16 v3, 0x27

    invoke-virtual {p0, v2, v3, v1}, Lalh;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "MoviesBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
