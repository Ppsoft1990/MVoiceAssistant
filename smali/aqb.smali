.class public Laqb;
.super Lvx;
.source "MusicBizHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqb$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:Laqb$a;

.field private f:Lyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "listener"    # Laqb$a;

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://ydclient.voicecloud.cn/vaclient/do?c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 39
    iput-wide v2, p0, Laqb;->a:J

    .line 40
    iput-wide v2, p0, Laqb;->b:J

    .line 41
    iput-wide v2, p0, Laqb;->c:J

    .line 42
    iput-wide v2, p0, Laqb;->d:J

    .line 181
    new-instance v0, Laqb$1;

    invoke-direct {v0, p0}, Laqb$1;-><init>(Laqb;)V

    iput-object v0, p0, Laqb;->f:Lyn;

    .line 64
    iget-object v0, p0, Laqb;->f:Lyn;

    invoke-super {p0, v0}, Lvx;->setOperationListener(Lyn;)V

    .line 65
    iput-object p3, p0, Laqb;->e:Laqb$a;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://ydclient.voicecloud.cn/vaclient/do?c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 39
    iput-wide v2, p0, Laqb;->a:J

    .line 40
    iput-wide v2, p0, Laqb;->b:J

    .line 41
    iput-wide v2, p0, Laqb;->c:J

    .line 42
    iput-wide v2, p0, Laqb;->d:J

    .line 181
    new-instance v0, Laqb$1;

    invoke-direct {v0, p0}, Laqb$1;-><init>(Laqb;)V

    iput-object v0, p0, Laqb;->f:Lyn;

    .line 54
    return-void
.end method

.method static synthetic a(Laqb;)Laqb$a;
    .locals 1
    .param p0, "x0"    # Laqb;

    .prologue
    .line 35
    iget-object v0, p0, Laqb;->e:Laqb$a;

    return-object v0
.end method

.method static synthetic a(Laqb;Lorg/json/JSONObject;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .locals 1
    .param p0, "x0"    # Laqb;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Laqb;->a(Lorg/json/JSONObject;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .locals 9
    .param p1, "collect"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 302
    new-instance v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    invoke-direct {v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;-><init>()V

    .line 303
    .local v0, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    const-string/jumbo v5, "addtime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(J)V

    .line 304
    const-string/jumbo v5, "offline"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    const v5, 0x9ba3c1

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(I)V

    .line 307
    :cond_0
    const-string/jumbo v5, "albumname"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v5, "lxsongid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->k(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v5, "pictures"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 310
    .local v2, "picArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 311
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->f(Ljava/lang/String;)V

    .line 313
    :cond_1
    const-string/jumbo v5, "singernames"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 314
    .local v3, "singerArray":Lorg/json/JSONArray;
    const-string/jumbo v4, ""

    .line 315
    .local v4, "singerName":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 320
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b(Ljava/lang/String;)V

    .line 323
    .end local v1    # "i":I
    :cond_3
    const-string/jumbo v5, "songid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->l(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v5, "songname"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->m(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v5, "source"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->i(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v5, "shareurl"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->h(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->j(Ljava/lang/String;)V

    .line 328
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c(I)V

    .line 329
    return-object v0
.end method

.method static synthetic b(Laqb;)J
    .locals 2
    .param p0, "x0"    # Laqb;

    .prologue
    .line 35
    iget-wide v0, p0, Laqb;->a:J

    return-wide v0
.end method

.method static synthetic c(Laqb;)J
    .locals 2
    .param p0, "x0"    # Laqb;

    .prologue
    .line 35
    iget-wide v0, p0, Laqb;->b:J

    return-wide v0
.end method

.method static synthetic d(Laqb;)J
    .locals 2
    .param p0, "x0"    # Laqb;

    .prologue
    .line 35
    iget-wide v0, p0, Laqb;->c:J

    return-wide v0
.end method

.method static synthetic e(Laqb;)J
    .locals 2
    .param p0, "x0"    # Laqb;

    .prologue
    .line 35
    iget-wide v0, p0, Laqb;->d:J

    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const-wide/16 v2, 0x0

    .line 83
    :goto_0
    return-wide v2

    .line 74
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "since_time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v2, "count"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Laqb;->setNeedGZip(Z)V

    .line 82
    const-string/jumbo v2, "1134"

    const/16 v3, 0x68

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Laqb;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Laqb;->d:J

    .line 83
    iget-wide v2, p0, Laqb;->d:J

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)J
    .locals 9
    .param p1, "song"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 106
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v5, "songItem":Lorg/json/JSONObject;
    const-string/jumbo v6, "songid"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v6, "source"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v6, "songname"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .local v4, "singerNames":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    const-string/jumbo v6, "singernames"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v6, "albumname"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .local v3, "pictures":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    const-string/jumbo v6, "pictures"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    const-string/jumbo v6, "collectmusic"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "pictures":Lorg/json/JSONArray;
    .end local v4    # "singerNames":Lorg/json/JSONArray;
    .end local v5    # "songItem":Lorg/json/JSONObject;
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Laqb;->setNeedGZip(Z)V

    .line 126
    const-string/jumbo v6, "1135"

    const/16 v7, 0x68

    const-string/jumbo v8, "3.0"

    invoke-virtual {p0, v6, v7, v2, v8}, Laqb;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Laqb;->b:J

    .line 127
    iget-wide v6, p0, Laqb;->b:J

    return-wide v6

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "songid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Laqb;->setNeedGZip(Z)V

    .line 98
    const-string/jumbo v2, "1137"

    const/16 v3, 0x68

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Laqb;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Laqb;->a:J

    .line 99
    iget-wide v2, p0, Laqb;->a:J

    return-wide v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v3, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 156
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Laqb;->setNeedGZip(Z)V

    .line 164
    const-string/jumbo v4, "1136"

    const/16 v5, 0x68

    const-string/jumbo v6, "3.0"

    invoke-virtual {p0, v4, v5, v3, v6}, Laqb;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Laqb;->c:J

    .line 165
    iget-wide v4, p0, Laqb;->c:J

    return-wide v4

    .line 159
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "lxsongids"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a([Ljava/lang/String;)J
    .locals 7
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 134
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v3, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 137
    .local v0, "array":Lorg/json/JSONArray;
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, p1, v4

    .line 138
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "lxsongids"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Laqb;->setNeedGZip(Z)V

    .line 145
    const-string/jumbo v4, "1136"

    const/16 v5, 0x68

    const-string/jumbo v6, "3.0"

    invoke-virtual {p0, v4, v5, v3, v6}, Laqb;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Laqb;->c:J

    .line 146
    iget-wide v4, p0, Laqb;->c:J

    return-wide v4

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public b()J
    .locals 7

    .prologue
    .line 169
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b()Lafn;

    move-result-object v3

    .line 170
    .local v3, "playResult":Lafn;
    invoke-virtual {v3}, Lafn;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "currentIndex":I
    new-instance v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v4, "param"

    invoke-direct {v2, v4}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v4, "page_index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v5}, Laqb;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v4, "cache_id"

    invoke-virtual {v3}, Lafn;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v5}, Laqb;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v4, "data_source"

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 175
    .local v1, "dataSrcElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v4, "id"

    invoke-virtual {v1, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    invoke-virtual {v3}, Lafn;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v4, "name"

    invoke-virtual {v1, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    invoke-virtual {v3}, Lafn;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 177
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Laqb;->setNeedGZip(Z)V

    .line 178
    const-string/jumbo v4, "music_query_more"

    const/16 v5, 0x35

    const-string/jumbo v6, "1"

    invoke-virtual {p0, v4, v5, v2, v6}, Laqb;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method
