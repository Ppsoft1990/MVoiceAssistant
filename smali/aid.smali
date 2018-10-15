.class public Laid;
.super Lvx;
.source "HomeCardTypeBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/contentservice/do?c=2002"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 23
    const-string/jumbo v0, "HomeCardTypeBizHelper"

    iput-object v0, p0, Laid;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laid;->setNeedGZip(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5
    .param p1, "bfocus"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "bfocus"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    const-string/jumbo v2, "2002"

    const/16 v3, 0x7a

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Laid;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "HomeCardTypeBizHelper"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
