.class public Larc;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Laqz;


# static fields
.field private static b:Larc;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Larb;

.field private d:Laqy;

.field private e:Lcom/iflytek/viafly/player/base/PlayerBizType;

.field private f:Landroid/media/AudioManager;

.field private g:Landroid/content/ComponentName;

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "PlayerManager"

    iput-object v0, p0, Larc;->a:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_DEFAULT:Lcom/iflytek/viafly/player/base/PlayerBizType;

    iput-object v0, p0, Larc;->e:Lcom/iflytek/viafly/player/base/PlayerBizType;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Larc;->h:I

    .line 42
    return-void
.end method

.method public static a()Larc;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Larc;->b:Larc;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Larc;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Larc;->b:Larc;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Larc;

    invoke-direct {v0}, Larc;-><init>()V

    sput-object v0, Larc;->b:Larc;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Larc;->b:Larc;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/iflytek/viafly/player/base/PlayerBizType;)Z
    .locals 1
    .param p1, "businessType"    # Lcom/iflytek/viafly/player/base/PlayerBizType;

    .prologue
    .line 127
    sget-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_AUDIO_RESOURCE:Lcom/iflytek/viafly/player/base/PlayerBizType;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b(I)V
    .locals 1
    .param p1, "playbackState"    # I

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iput p1, p0, Larc;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Larc;->f:Landroid/media/AudioManager;

    .line 120
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Larc;->g:Landroid/content/ComponentName;

    .line 122
    iget-object v0, p0, Larc;->f:Landroid/media/AudioManager;

    iget-object v1, p0, Larc;->g:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 123
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/iflytek/viafly/player/base/PlayerBizType;Laqy;)I
    .locals 3
    .param p1, "businessType"    # Lcom/iflytek/viafly/player/base/PlayerBizType;
    .param p2, "playerListener"    # Laqy;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verify businessType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, p1}, Larc;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "verify unsurpport type "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const/16 v0, 0x3e9

    .line 115
    :goto_0
    monitor-exit p0

    return v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    :try_start_1
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "verify playerListener is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v0, 0x3eb

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Larc;->e:Lcom/iflytek/viafly/player/base/PlayerBizType;

    sget-object v1, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_DEFAULT:Lcom/iflytek/viafly/player/base/PlayerBizType;

    if-eq v0, v1, :cond_6

    .line 72
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "verify current type is not default "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Larc;->e:Lcom/iflytek/viafly/player/base/PlayerBizType;

    if-eq v0, p1, :cond_3

    .line 76
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100123"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "verify biz type request change "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-virtual {p0, v0}, Larc;->e(Laqy;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-virtual {p0, v0}, Larc;->b(Laqy;)Z

    .line 86
    :cond_2
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->o()V

    .line 88
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "verify current biz type agree change, change type "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    :goto_1
    iput-object p1, p0, Larc;->e:Lcom/iflytek/viafly/player/base/PlayerBizType;

    .line 104
    iput-object p2, p0, Larc;->d:Laqy;

    .line 107
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->n()V

    .line 110
    iget-object v0, p0, Larc;->c:Larb;

    if-nez v0, :cond_4

    .line 111
    new-instance v0, Larb;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Larb;-><init>(Landroid/content/Context;Laqz;)V

    iput-object v0, p0, Larc;->c:Larb;

    .line 112
    invoke-direct {p0}, Larc;->j()V

    .line 115
    :cond_4
    const/16 v0, 0x3e8

    goto :goto_0

    .line 90
    :cond_5
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "verify current biz type disagree change, return "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/16 v0, 0x3ea

    goto/16 :goto_0

    .line 97
    :cond_6
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100123"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string/jumbo v0, "PlayerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleResult, command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, "com.iflytek.viafly.player.playstart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->r()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string/jumbo v0, "com.iflytek.viafly.player.playnext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->p()V

    goto :goto_0

    .line 249
    :cond_2
    const-string/jumbo v0, "com.iflytek.viafly.player.playlast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->q()V

    goto :goto_0

    .line 253
    :cond_3
    const-string/jumbo v0, "com.iflytek.viafly.player.playpause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Larc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-virtual {p0, v0}, Larc;->c(Laqy;)Z

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 200
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0, p1}, Larb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Laqy;)Z
    .locals 1
    .param p1, "listener"    # Laqy;

    .prologue
    .line 168
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->d:Laqy;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/player/entity/Audio;Laqy;)Z
    .locals 1
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;
    .param p2, "listener"    # Laqy;

    .prologue
    .line 172
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->d:Laqy;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0, p1}, Larb;->a(Lcom/iflytek/viafly/player/entity/Audio;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Laqy;)Z
    .locals 1
    .param p1, "listener"    # Laqy;

    .prologue
    .line 176
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->d:Laqy;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Larc;->b(I)V

    .line 140
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0, p1}, Laqy;->c(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public c(Laqy;)Z
    .locals 1
    .param p1, "listener"    # Laqy;

    .prologue
    .line 184
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->d:Laqy;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 147
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0, p1}, Laqy;->d(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public d(Laqy;)V
    .locals 3
    .param p1, "listener"    # Laqy;

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Larc;->c:Larb;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Larc;->d:Laqy;

    if-ne p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->o()V

    .line 218
    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->b()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Larc;->h:I

    .line 222
    iput-object v2, p0, Larc;->c:Larb;

    .line 224
    iget-object v0, p0, Larc;->f:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Larc;->f:Landroid/media/AudioManager;

    iget-object v1, p0, Larc;->g:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 229
    :cond_2
    iput-object v2, p0, Larc;->f:Landroid/media/AudioManager;

    .line 230
    sget-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_DEFAULT:Lcom/iflytek/viafly/player/base/PlayerBizType;

    iput-object v0, p0, Larc;->e:Lcom/iflytek/viafly/player/base/PlayerBizType;

    goto :goto_0
.end method

.method public e()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->i()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 161
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0, p1}, Laqy;->e(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public e(Laqy;)Z
    .locals 2
    .param p1, "listener"    # Laqy;

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Larc;->c:Larb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Larc;->d:Laqy;

    if-ne p1, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Larc;->g()I

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Larc;->g()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Larc;->c:Larb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larc;->c:Larb;

    invoke-virtual {v0}, Larb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized g()I
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget v0, p0, Larc;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 284
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "interrupter "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Larc;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-virtual {p0, v0}, Larc;->e(Laqy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string/jumbo v0, "PlayerManager"

    const-string/jumbo v1, "interrupter pause"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-virtual {p0, v0}, Larc;->c(Laqy;)Z

    goto :goto_0
.end method

.method public i()Lcom/iflytek/viafly/player/base/PlayerBizType;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Larc;->e:Lcom/iflytek/viafly/player/base/PlayerBizType;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->k()V

    .line 135
    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Larc;->d:Laqy;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Larc;->d:Laqy;

    invoke-interface {v0}, Laqy;->l()V

    .line 157
    :cond_0
    return-void
.end method
