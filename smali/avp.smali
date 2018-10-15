.class public Lavp;
.super Lvx;
.source "AlarmNewsRequester.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lvx;-><init>(Landroid/content/Context;)V

    .line 32
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1103"

    invoke-virtual {p0, v0}, Lavp;->setServerUrl(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lavp;->setNeedGZip(Z)V

    .line 34
    new-instance v0, Lavp$1;

    invoke-direct {v0, p0, p2}, Lavp$1;-><init>(Lavp;Lwd;)V

    invoke-virtual {p0, v0}, Lavp;->setOperationListener(Lyn;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "since_time"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v2, "from_page"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v2, "business_type"

    const-string/jumbo v3, "getup_alarm"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    const-string/jumbo v2, "1103"

    const/16 v3, 0x46

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lavp;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "AlarmNewsRequester"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
