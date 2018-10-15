.class public Laye;
.super Lvx;
.source "TranslateEntryBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 25
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1033"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 22
    const-string/jumbo v0, "EntryBizHelper"

    iput-object v0, p0, Laye;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laye;->setNeedGZip(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 30
    const-string/jumbo v2, "EntryBizHelper"

    const-string/jumbo v3, "sendRequest() "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "materialid"

    const-string/jumbo v3, "translate"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    const-string/jumbo v2, "1033"

    const/16 v3, 0x66

    invoke-virtual {p0, v2, v3, v1}, Laye;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "EntryBizHelper"

    const-string/jumbo v3, " "

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
