.class Larb;
.super Ljava/lang/Object;
.source "PlayerHandler.java"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Laqx;

.field private c:Laqz;

.field private volatile d:Z

.field private e:Landroid/content/ServiceConnection;

.field private f:Laqw;


# direct methods
.method constructor <init>(Landroid/content/Context;Laqz;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventListener"    # Laqz;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Larb$1;

    invoke-direct {v0, p0}, Larb$1;-><init>(Larb;)V

    iput-object v0, p0, Larb;->e:Landroid/content/ServiceConnection;

    .line 113
    new-instance v0, Larb$2;

    invoke-direct {v0, p0}, Larb$2;-><init>(Larb;)V

    iput-object v0, p0, Larb;->f:Laqw;

    .line 36
    iput-object p1, p0, Larb;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Larb;->c:Laqz;

    .line 38
    invoke-direct {p0}, Larb;->j()V

    .line 39
    return-void
.end method

.method static synthetic a(Larb;)Laqw;
    .locals 1
    .param p0, "x0"    # Larb;

    .prologue
    .line 23
    iget-object v0, p0, Larb;->f:Laqw;

    return-object v0
.end method

.method static synthetic a(Larb;Laqx;)Laqx;
    .locals 0
    .param p0, "x0"    # Larb;
    .param p1, "x1"    # Laqx;

    .prologue
    .line 23
    iput-object p1, p0, Larb;->b:Laqx;

    return-object p1
.end method

.method static synthetic a(Larb;Z)Z
    .locals 0
    .param p0, "x0"    # Larb;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Larb;->d:Z

    return p1
.end method

.method static synthetic b(Larb;)Laqx;
    .locals 1
    .param p0, "x0"    # Larb;

    .prologue
    .line 23
    iget-object v0, p0, Larb;->b:Laqx;

    return-object v0
.end method

.method static synthetic c(Larb;)Laqz;
    .locals 1
    .param p0, "x0"    # Larb;

    .prologue
    .line 23
    iget-object v0, p0, Larb;->c:Laqz;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Larb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-direct {p0}, Larb;->k()Z

    move-result v0

    .line 44
    .local v0, "isSuccess":Z
    const-string/jumbo v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindPlaybackService isSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "isSuccess":Z
    :cond_0
    return-void
.end method

.method private k()Z
    .locals 5

    .prologue
    .line 75
    const-string/jumbo v1, "PlayerHandler"

    const-string/jumbo v2, "bindPlaybackService "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    iget-object v1, p0, Larb;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Larb;->a:Landroid/content/Context;

    const-class v4, Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Larb;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindPlaybackService error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 88
    const-string/jumbo v1, "PlayerHandler"

    const-string/jumbo v2, "unbindPlaybackService "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v1, p0, Larb;->d:Z

    if-eqz v1, :cond_1

    .line 91
    :try_start_0
    iget-object v1, p0, Larb;->b:Laqx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Larb;->b:Laqx;

    invoke-interface {v1}, Laqx;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Larb;->b:Laqx;

    iget-object v2, p0, Larb;->f:Laqw;

    invoke-interface {v1, v2}, Laqx;->b(Laqw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    iget-object v1, p0, Larb;->a:Landroid/content/Context;

    iget-object v2, p0, Larb;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Larb;->d:Z

    .line 101
    :cond_1
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PlayerHandler"

    const-string/jumbo v2, "unregisterCallback "

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Larb;->d:Z

    return v0
.end method

.method public a(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 255
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return v1

    .line 259
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2, p1}, Laqx;->a(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "seekTo"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/player/entity/Audio;)Z
    .locals 4
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 170
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return v1

    .line 174
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2, p1}, Laqx;->a(Lcom/iflytek/viafly/player/entity/Audio;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "play"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Larb;->l()V

    .line 111
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 156
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return v1

    .line 160
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2}, Laqx;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "play"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 184
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return v1

    .line 188
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2}, Laqx;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "stop"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 198
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return v1

    .line 202
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2}, Laqx;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isPlaying"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 212
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return v1

    .line 216
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2}, Laqx;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "pause"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 225
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 226
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return v1

    .line 230
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2}, Laqx;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "getProgress"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public h()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 239
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 240
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return v1

    .line 244
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2}, Laqx;->g()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "getDuration"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public i()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-boolean v2, p0, Larb;->d:Z

    if-nez v2, :cond_0

    .line 270
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "isServiceBound is false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-object v1

    .line 274
    :cond_0
    :try_start_0
    iget-object v2, p0, Larb;->b:Laqx;

    invoke-interface {v2}, Laqx;->b()Lcom/iflytek/viafly/player/entity/Audio;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerHandler"

    const-string/jumbo v3, "getPlayingPlayList"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
