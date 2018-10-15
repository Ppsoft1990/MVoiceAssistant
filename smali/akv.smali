.class public Lakv;
.super Lvx;
.source "LifeCardBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 25
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1024"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 22
    const-string/jumbo v0, "LifeCardBizHelper"

    iput-object v0, p0, Lakv;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lakv;->setNeedGZip(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5
    .param p1, "lastEditTime"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string/jumbo v2, "LifeCardBizHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRequest() , lastEditTime is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "lastEditTime"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    const-string/jumbo v2, "1024"

    const/16 v3, 0x54

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lakv;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "LifeCardBizHelper"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
