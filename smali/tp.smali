.class public Ltp;
.super Lvx;
.source "BindMobileBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1139"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 23
    const-string/jumbo v0, "BindMobileBizHelper"

    iput-object v0, p0, Ltp;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltp;->setNeedGZip(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)J
    .locals 5
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "bindType"    # I
    .param p3, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "bindtype"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v2, "caller"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const/4 v2, 0x1

    if-ne v2, p2, :cond_0

    .line 36
    const-string/jumbo v2, "verifycode"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    const-string/jumbo v2, "1139"

    const/16 v3, 0x78

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Ltp;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "BindMobileBizHelper"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
