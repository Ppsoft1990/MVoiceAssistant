.class public Lais;
.super Lvx;
.source "HomeAudioResourceBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 32
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1027"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 24
    const-string/jumbo v0, "HomeAudioResourceBizHelper"

    iput-object v0, p0, Lais;->a:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "slotwidth"

    iput-object v0, p0, Lais;->b:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "slotheight"

    iput-object v0, p0, Lais;->c:Ljava/lang/String;

    .line 28
    const/16 v0, 0x100

    iput v0, p0, Lais;->d:I

    .line 29
    const/16 v0, 0x2a2

    iput v0, p0, Lais;->e:I

    .line 33
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 36
    const-string/jumbo v2, "HomeAudioResourceBizHelper"

    const-string/jumbo v3, "sendAudioResourceRequest() begin"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "slotwidth"

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x2a2

    invoke-static {v3, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v2, "slotheight"

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    const-string/jumbo v2, "1027"

    const/16 v3, 0x62

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lais;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HomeAudioResourceBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
