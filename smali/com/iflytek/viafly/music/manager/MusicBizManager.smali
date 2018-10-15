.class public Lcom/iflytek/viafly/music/manager/MusicBizManager;
.super Ljava/lang/Object;
.source "MusicBizManager.java"

# interfaces
.implements Laqy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/music/manager/MusicBizManager$a;,
        Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/iflytek/viafly/music/manager/MusicBizManager;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lapy;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Laqy;",
            ">;"
        }
    .end annotation
.end field

.field private e:Larc;

.field private f:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

.field private volatile g:Lcom/iflytek/viafly/listenbook/base/PlayList;

.field private h:Lapz;

.field private i:Lapf;

.field private j:Z

.field private k:Lafn;

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->j:Z

    .line 147
    new-instance v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager$1;-><init>(Lcom/iflytek/viafly/music/manager/MusicBizManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->n:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    .line 155
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v2, p0}, Larc;->e(Laqy;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    const-string/jumbo v2, "MusicBizManager"

    const-string/jumbo v3, "start same song "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v2, p0}, Larc;->a(Laqy;)Z

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string/jumbo v2, "MusicBizManager"

    const-string/jumbo v3, "start not same song "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->s()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 163
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-nez v0, :cond_2

    .line 164
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->f(I)V

    .line 165
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->s()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 168
    :cond_2
    if-eqz v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v2}, Larc;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    const-string/jumbo v2, "MusicBizManager"

    const-string/jumbo v3, "start song isServiceBound : true"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    goto :goto_0

    .line 175
    :cond_3
    const-string/jumbo v2, "MusicBizManager"

    const-string/jumbo v3, "start song isServiceBound : false"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-object v1, v0

    .line 177
    .local v1, "finalAudio":Lcom/iflytek/viafly/player/entity/Audio;
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->m:Landroid/os/Handler;

    new-instance v3, Lcom/iflytek/viafly/music/manager/MusicBizManager$2;

    invoke-direct {v3, p0, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager$2;-><init>(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/player/entity/Audio;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private B()V
    .locals 4

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->s()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 632
    .local v0, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "keyAndType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_MUSIC_PLAY_LAST_MUSIC"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v1    # "keyAndType":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "keyAndType":Ljava/lang/String;
    goto :goto_1
.end method

.method public static a()Lcom/iflytek/viafly/music/manager/MusicBizManager;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/iflytek/viafly/music/manager/MusicBizManager;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-direct {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/manager/MusicBizManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->A()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;
    .param p1, "x1"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 4
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    const/4 v3, 0x1

    .line 188
    instance-of v0, p1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    if-nez v0, :cond_0

    .line 211
    .end local p1    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :goto_0
    return-void

    .line 191
    .restart local p1    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_0
    iput-boolean v3, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->l:Z

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->i:Lapf;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->i:Lapf;

    invoke-interface {v0, v3}, Lapf;->a(Z)V

    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->i:Lapf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lapf;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 196
    :cond_1
    const-string/jumbo v0, "MusicBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play audio audio.getType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->r()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h:Lapz;

    invoke-interface {v0}, Lapz;->a()V

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c:Lapy;

    const-string/jumbo v1, "http://ydclient.voicecloud.cn/music"

    invoke-interface {v0, v1}, Lapy;->a(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h:Lapz;

    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lapz;->a(Ljava/lang/String;)J

    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h:Lapz;

    new-instance v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;

    check-cast p1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .end local p1    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;-><init>(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    invoke-interface {v0, v1}, Lapz;->a(Laqa;)V

    goto :goto_0

    .line 205
    .restart local p1    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e(I)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Lcom/iflytek/viafly/player/entity/Audio;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Larc;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aFileName"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    const-string/jumbo p1, ""

    .line 371
    .end local p1    # "aFileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 366
    .restart local p1    # "aFileName":Ljava/lang/String;
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v2, ".mp3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".aac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "retString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;
    .param p1, "x1"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Lcom/iflytek/viafly/player/entity/Audio;)V

    return-void
.end method

.method private b(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 4
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 214
    instance-of v1, p1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string/jumbo v1, "MusicBizManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playImpl audio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->i:Lapf;

    if-eqz v1, :cond_1

    .line 219
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->i:Lapf;

    move-object v1, p1

    check-cast v1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-interface {v2, v1}, Lapf;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->B()V

    .line 222
    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->r()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 224
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    instance-of v1, p1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    if-eqz v1, :cond_2

    .line 226
    new-instance v0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    move-object v1, p1

    check-cast v1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;-><init>(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 227
    .local v0, "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-static {}, Laqh;->a()Laqh;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqh;->a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    .line 229
    .end local v0    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v1, p1, p0}, Larc;->a(Lcom/iflytek/viafly/player/entity/Audio;Laqy;)Z

    goto :goto_0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 232
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e(I)V

    goto :goto_0

    .line 236
    :cond_4
    instance-of v1, p1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    if-eqz v1, :cond_5

    .line 237
    new-instance v0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    move-object v1, p1

    check-cast v1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;-><init>(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 238
    .restart local v0    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-static {}, Laqh;->a()Laqh;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqh;->a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    .line 240
    .end local v0    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v1, p1, p0}, Larc;->a(Lcom/iflytek/viafly/player/entity/Audio;Laqy;)Z

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private h(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    if-ltz p1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 425
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "singerKey"    # Ljava/lang/String;
    .param p3, "songKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v12, "songList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    invoke-static/range {p2 .. p2}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 312
    const-string/jumbo v14, "MusicBizManager"

    const-string/jumbo v15, "queryMediaStore null key"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string/jumbo p3, "_"

    .line 315
    :cond_0
    const-string/jumbo v14, "MusicBizManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "queryMediaStore song="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " singer="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v14, Lqg;

    invoke-direct {v14}, Lqg;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v14, v0, v1, v2}, Lqg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 318
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 319
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 321
    :cond_1
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "path":Ljava/lang/String;
    const/4 v14, 0x1

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "name":Ljava/lang/String;
    const/4 v14, 0x2

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, "singer":Ljava/lang/String;
    const-string/jumbo v14, "<unknown>"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v11, "\u672a\u77e5"

    .line 326
    :cond_2
    const/4 v14, 0x3

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v14, "<unknown>"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v13, "\u672a\u77e5"

    .line 328
    :cond_3
    const/4 v14, 0x4

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 329
    .local v5, "duration":I
    const/4 v14, 0x5

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "album":Ljava/lang/String;
    const-string/jumbo v14, "<unknown>"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v3, "\u672a\u77e5"

    .line 332
    :cond_4
    new-instance v8, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct {v8}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 333
    .local v8, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v8, v13}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->m(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->n(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v8, v11}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b(Ljava/lang/String;)V

    .line 337
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(I)V

    .line 338
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->l(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v8, v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v14, "MusicBizManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "queryMediaStore name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " title="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " path="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " duration="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " singer="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const v14, 0xea60

    if-ge v5, v14, :cond_6

    .line 344
    const-string/jumbo v14, "MusicBizManager"

    const-string/jumbo v15, "queryMediaStore < LOCAL_MIN_DURATION "

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 354
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 357
    .end local v3    # "album":Ljava/lang/String;
    .end local v5    # "duration":I
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "singer":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :cond_5
    const-string/jumbo v14, "MusicBizManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "queryMediaStore finish, list size is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-object v12

    .line 347
    .restart local v3    # "album":Ljava/lang/String;
    .restart local v5    # "duration":I
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "singer":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_6
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "ext_name":Ljava/lang/String;
    const-string/jumbo v14, "mp3"

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string/jumbo v14, "wma"

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 349
    const-string/jumbo v14, "MusicBizManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "queryMediaStore  ignore type path="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_7
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->f(I)V

    .line 132
    const-string/jumbo v0, "MusicBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ready play song :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->x()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    const-string/jumbo v0, "MusicBizManager"

    const-string/jumbo v1, "play not same song ,first stop and then start "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0, p0}, Larc;->b(Laqy;)Z

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v0, "MusicBizManager"

    const-string/jumbo v1, "play same song "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->A()V

    goto :goto_0
.end method

.method public a(Lafn;)V
    .locals 0
    .param p1, "musicFilterResult"    # Lafn;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->k:Lafn;

    .line 115
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a:Landroid/content/Context;

    .line 89
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Landroid/content/Context;)Lapy;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c:Lapy;

    .line 90
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c:Lapy;

    invoke-static {p1, v1}, Lapv;->a(Landroid/content/Context;Lapy;)Lapz;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h:Lapz;

    .line 91
    invoke-static {}, Larc;->a()Larc;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    .line 92
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    sget-object v2, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-virtual {v1, v2, p0}, Larc;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;Laqy;)I

    move-result v0

    .line 93
    .local v0, "resultCode":I
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->m:Landroid/os/Handler;

    .line 94
    const-string/jumbo v1, "MusicBizManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public a(Lapf;)V
    .locals 0
    .param p1, "listener"    # Lapf;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->i:Lapf;

    .line 111
    return-void
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/listenbook/base/PlayList;)V
    .locals 3
    .param p1, "list"    # Lcom/iflytek/viafly/listenbook/base/PlayList;

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MusicBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayList list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz p1, :cond_0

    .line 378
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_0
    monitor-exit p0

    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;)V
    .locals 1
    .param p1, "playType"    # Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->f:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_0
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Laqy;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Laqy;

    .prologue
    .line 286
    if-nez p2, :cond_0

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lafn;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->k:Lafn;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lapy;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c:Lapy;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lapi;

    invoke-direct {v0, p1}, Lapi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c:Lapy;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c:Lapy;

    return-object v0
.end method

.method public b(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0, p1}, Larc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->j()I

    move-result v0

    .line 123
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(I)V

    .line 124
    return-void
.end method

.method public c(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 450
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 451
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->l:Z

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 454
    .local v0, "listener":Laqy;
    invoke-interface {v0, p1}, Laqy;->c(I)V

    goto :goto_0

    .line 456
    .end local v0    # "listener":Laqy;
    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 248
    const-string/jumbo v0, "MusicBizManager"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager$3;-><init>(Lcom/iflytek/viafly/music/manager/MusicBizManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 257
    return-void
.end method

.method public d(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 460
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 461
    .local v0, "listener":Laqy;
    invoke-interface {v0, p1}, Laqy;->d(I)V

    goto :goto_0

    .line 463
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0, p0}, Larc;->d(Laqy;)V

    .line 263
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 474
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->l:Z

    .line 475
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 476
    .local v0, "listener":Laqy;
    invoke-interface {v0, p1}, Laqy;->e(I)V

    goto :goto_0

    .line 478
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public declared-synchronized f(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MusicBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayingIndex index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0}, Larc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(I)V

    .line 595
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_MUSIC_PLAY_LOOPER_MODE"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 597
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0, p0}, Larc;->e(Laqy;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized h()Lcom/iflytek/viafly/listenbook/base/PlayList;
    .locals 1

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    .locals 1

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->f:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()I
    .locals 2

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MusicBizManager"

    const-string/jumbo v1, "getPlayingIndex index "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 405
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 444
    .local v0, "listener":Laqy;
    invoke-interface {v0}, Laqy;->k()V

    goto :goto_0

    .line 446
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 467
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 468
    .local v0, "listener":Laqy;
    invoke-interface {v0}, Laqy;->l()V

    goto :goto_0

    .line 470
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 3

    .prologue
    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->j:Z

    .line 488
    invoke-static {}, Laio;->b()Laio;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-virtual {v1, v2}, Laio;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;)V

    .line 489
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 490
    .local v0, "listener":Laqy;
    invoke-interface {v0}, Laqy;->n()V

    goto :goto_0

    .line 492
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 496
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->j:Z

    .line 497
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 498
    .local v0, "listener":Laqy;
    invoke-interface {v0}, Laqy;->o()V

    goto :goto_0

    .line 500
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    .prologue
    .line 504
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 505
    .local v0, "listener":Laqy;
    invoke-interface {v0}, Laqy;->p()V

    goto :goto_0

    .line 507
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    .prologue
    .line 511
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 512
    .local v0, "listener":Laqy;
    invoke-interface {v0}, Laqy;->q()V

    goto :goto_0

    .line 514
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    .line 518
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    .line 519
    .local v0, "listener":Laqy;
    invoke-interface {v0}, Laqy;->r()V

    goto :goto_0

    .line 521
    .end local v0    # "listener":Laqy;
    :cond_0
    return-void
.end method

.method public declared-synchronized s()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 412
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->f()Lcom/iflytek/viafly/player/entity/Audio;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0}, Larc;->g()I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0}, Larc;->c()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e:Larc;

    invoke-virtual {v0}, Larc;->d()I

    move-result v0

    return v0
.end method

.method public w()I
    .locals 4

    .prologue
    .line 600
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MUSIC_PLAY_LOOPER_MODE"

    invoke-static {}, Lamj;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 601
    .local v0, "mode":I
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(I)V

    .line 604
    :cond_0
    return v0
.end method

.method public x()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 613
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_MUSIC_PLAY_LAST_MUSIC"

    invoke-virtual {v5, v6}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "lastKeyAndType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->s()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 616
    .local v0, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-nez v0, :cond_0

    .line 624
    :goto_0
    return v4

    .line 619
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "keyAndType":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->t()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->t()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    :cond_1
    :goto_2
    move v4, v3

    goto :goto_0

    .line 622
    .end local v1    # "keyAndType":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "keyAndType":Ljava/lang/String;
    goto :goto_1

    :cond_3
    move v3, v4

    .line 624
    goto :goto_2
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->l:Z

    return v0
.end method

.method public z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 651
    :cond_0
    iput-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g:Lcom/iflytek/viafly/listenbook/base/PlayList;

    .line 652
    iput-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager;->k:Lafn;

    .line 653
    return-void
.end method
