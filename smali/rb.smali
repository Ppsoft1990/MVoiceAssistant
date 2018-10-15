.class public Lrb;
.super Ljava/lang/Object;
.source "MicDiscoverTabCacheHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "MicDiscoverTabCacheHelper"

    iput-object v0, p0, Lrb;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Lrc;
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 73
    :goto_0
    return-object v0

    .line 64
    :cond_0
    :try_start_0
    new-instance v0, Lrc;

    invoke-direct {v0}, Lrc;-><init>()V

    .line 65
    .local v0, "data":Lrc;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v4, "des"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lrc;->b(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lrc;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "data":Lrc;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "MicDiscoverTabCacheHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 73
    goto :goto_0
.end method

.method private b(Lrc;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Lrc;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string/jumbo v2, ""

    .line 55
    :goto_0
    return-object v2

    .line 49
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v1, "result":Lorg/json/JSONObject;
    const-string/jumbo v2, "des"

    invoke-virtual {p1}, Lrc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v2, "url"

    invoke-virtual {p1}, Lrc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 53
    .end local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "MicDiscoverTabCacheHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const-string/jumbo v2, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Lrc;
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_DISCOVER_TAB_CACHE"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "json":Ljava/lang/String;
    invoke-direct {p0, v0}, Lrb;->a(Ljava/lang/String;)Lrc;

    move-result-object v1

    return-object v1
.end method

.method public a(Lrc;)V
    .locals 4
    .param p1, "data"    # Lrc;

    .prologue
    .line 24
    const-string/jumbo v1, "MicDiscoverTabCacheHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " saveTabCacheData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-direct {p0, p1}, Lrb;->b(Lrc;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_DISCOVER_TAB_CACHE"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local v0    # "jsonString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "MicDiscoverTabCacheHelper"

    const-string/jumbo v2, " transfer to json error"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
