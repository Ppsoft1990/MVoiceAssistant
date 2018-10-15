.class public Lalw;
.super Lvx;
.source "SignInfoBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "CMD"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://yd.voicecloud.cn/lx-interface-thirdparty/do?c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 21
    const-string/jumbo v0, "SignInfoBizHelper"

    iput-object v0, p0, Lalw;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 47
    const-string/jumbo v1, "SignInfoBizHelper"

    const-string/jumbo v2, "requestSignInfo"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v0, "paramElement":Lorg/json/JSONObject;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lalw;->setNeedGZip(Z)V

    .line 50
    const-string/jumbo v1, "getsigninfo2"

    const/16 v2, 0x5a

    const-string/jumbo v3, "3.0"

    invoke-virtual {p0, v1, v2, v0, v3}, Lalw;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public a(Ljava/lang/String;)J
    .locals 5
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string/jumbo v2, "SignInfoBizHelper"

    const-string/jumbo v3, "requestAddSign"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "opcode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lalw;->setNeedGZip(Z)V

    .line 40
    const-string/jumbo v2, "addscore2"

    const/16 v3, 0x5a

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lalw;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "SignInfoBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 58
    const-string/jumbo v1, "SignInfoBizHelper"

    const-string/jumbo v2, "requestOpCodes"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v0, "paramElement":Lorg/json/JSONObject;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lalw;->setNeedGZip(Z)V

    .line 61
    const-string/jumbo v1, "getopcodesofscore"

    const/16 v2, 0x5a

    const-string/jumbo v3, "3.0"

    invoke-virtual {p0, v1, v2, v0, v3}, Lalw;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method
