.class public final Lie;
.super Lif;
.source "IflyMediaPlayer.java"


# static fields
.field private static volatile d:Lie;


# instance fields
.field a:Landroid/media/MediaPlayer$OnCompletionListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field c:Landroid/media/MediaPlayer$OnErrorListener;

.field private e:Landroid/media/MediaPlayer;

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Lic;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Lif;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lie;->f:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lie;->g:Z

    .line 315
    new-instance v0, Lie$2;

    invoke-direct {v0, p0}, Lie$2;-><init>(Lie;)V

    iput-object v0, p0, Lie;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 324
    new-instance v0, Lie$3;

    invoke-direct {v0, p0}, Lie$3;-><init>(Lie;)V

    iput-object v0, p0, Lie;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 333
    new-instance v0, Lie$4;

    invoke-direct {v0, p0}, Lie$4;-><init>(Lie;)V

    iput-object v0, p0, Lie;->c:Landroid/media/MediaPlayer$OnErrorListener;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lie;->h:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    .line 37
    return-void
.end method

.method static synthetic a(Lie;)Lic;
    .locals 1
    .param p0, "x0"    # Lie;

    .prologue
    .line 19
    iget-object v0, p0, Lie;->i:Lic;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lie;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lie;->d:Lie;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lie;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lie;->d:Lie;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lie;

    invoke-direct {v0, p0}, Lie;-><init>(Landroid/content/Context;)V

    sput-object v0, Lie;->d:Lie;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lie;->d:Lie;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lie;Z)Z
    .locals 0
    .param p0, "x0"    # Lie;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lie;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    sget-object v1, Lie;->d:Lie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 86
    :try_start_1
    iget-object v1, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 93
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IflyMediaPlayer"

    const-string/jumbo v3, "start error"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lie;->e()V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public a(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 60
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 63
    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/AssetFileDescriptor;)V
    .locals 10
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 214
    iget-object v9, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v9

    .line 216
    :try_start_0
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 217
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 218
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 219
    const/4 v8, 0x3

    .line 221
    .local v8, "stream":I
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "playFlag":Ljava/lang/String;
    iget-object v0, p0, Lie;->h:Landroid/content/Context;

    invoke-static {v0}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v0

    invoke-virtual {v0}, Lgs;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "2"

    .line 223
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const/4 v8, 0x0

    .line 226
    :cond_0
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 227
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lie;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 228
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lie;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 239
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lie;->c:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lie;->g:Z

    .line 242
    monitor-exit v9

    .line 243
    .end local v7    # "playFlag":Ljava/lang/String;
    .end local v8    # "stream":I
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v6

    .line 230
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lie;->g:Z

    .line 232
    monitor-exit v9

    goto :goto_0

    .line 242
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 233
    :catch_1
    move-exception v6

    .line 234
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lie;->g:Z

    .line 236
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Lic;)V
    .locals 0
    .param p1, "listener"    # Lic;

    .prologue
    .line 51
    iput-object p1, p0, Lie;->i:Lic;

    .line 52
    return-void
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 246
    iget-object v4, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 248
    :try_start_0
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 249
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 250
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 251
    const/4 v2, 0x3

    .line 253
    .local v2, "stream":I
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "playFlag":Ljava/lang/String;
    iget-object v3, p0, Lie;->h:Landroid/content/Context;

    invoke-static {v3}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v3

    invoke-virtual {v3}, Lgs;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "2"

    .line 255
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    const/4 v2, 0x0

    .line 258
    :cond_0
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 259
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lie;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 260
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :try_start_1
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lie;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 271
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lie;->c:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 273
    const/4 v3, 0x1

    iput-boolean v3, p0, Lie;->g:Z

    .line 274
    monitor-exit v4

    .line 275
    .end local v1    # "playFlag":Ljava/lang/String;
    .end local v2    # "stream":I
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    const/4 v3, 0x0

    iput-boolean v3, p0, Lie;->g:Z

    .line 264
    monitor-exit v4

    goto :goto_0

    .line 274
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v3, 0x0

    iput-boolean v3, p0, Lie;->g:Z

    .line 268
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v4, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 174
    :try_start_0
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 175
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x3

    .line 178
    .local v2, "stream":I
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "playFlag":Ljava/lang/String;
    iget-object v3, p0, Lie;->h:Landroid/content/Context;

    invoke-static {v3}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v3

    invoke-virtual {v3}, Lgs;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "2"

    .line 180
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    const/4 v2, 0x0

    .line 183
    :cond_0
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 184
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lie;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 185
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lie;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 194
    iget-object v3, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lie;->c:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 196
    const/4 v3, 0x1

    iput-boolean v3, p0, Lie;->g:Z

    .line 197
    monitor-exit v4

    .line 198
    .end local v1    # "playFlag":Ljava/lang/String;
    .end local v2    # "stream":I
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/io/IOException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lie;->g:Z

    .line 188
    monitor-exit v4

    goto :goto_0

    .line 197
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 189
    :catch_1
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lie;->g:Z

    .line 191
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lie;->d:Lie;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    monitor-exit v1

    .line 102
    :goto_0
    return v0

    .line 100
    :cond_0
    monitor-exit v1

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 278
    iget-object v5, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v5

    .line 280
    :try_start_0
    iget-object v6, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 281
    iget-object v6, p0, Lie;->e:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 282
    const-string/jumbo v6, "content://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 283
    :cond_0
    iget-object v6, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lie;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 287
    :goto_0
    const/4 v2, 0x3

    .line 289
    .local v2, "stream":I
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "playFlag":Ljava/lang/String;
    iget-object v6, p0, Lie;->h:Landroid/content/Context;

    invoke-static {v6}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v6

    invoke-virtual {v6}, Lgs;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "2"

    .line 291
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    const/4 v2, 0x0

    .line 294
    :cond_1
    iget-object v6, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 295
    iget-object v6, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lie;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 296
    iget-object v6, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v4, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lie;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 307
    iget-object v4, p0, Lie;->e:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lie;->c:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 309
    const/4 v4, 0x1

    iput-boolean v4, p0, Lie;->g:Z

    .line 311
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "playFlag":Ljava/lang/String;
    .end local v2    # "stream":I
    :goto_1
    return v3

    .line 285
    :cond_2
    :try_start_2
    iget-object v6, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Ljava/io/IOException;
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lie;->g:Z

    .line 299
    const-string/jumbo v3, "IflyMediaPlayer"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 301
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 302
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lie;->g:Z

    .line 303
    const-string/jumbo v3, "IflyMediaPlayer"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 312
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public c()I
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lie;->d:Lie;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    monitor-exit v1

    .line 112
    :goto_0
    return v0

    .line 110
    :cond_0
    monitor-exit v1

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 116
    const-string/jumbo v2, "IflyMediaPlayer"

    const-string/jumbo v3, "---------------->> stop()"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v3, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 118
    :try_start_0
    sget-object v2, Lie;->d:Lie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 120
    :try_start_1
    iget-object v1, p0, Lie;->e:Landroid/media/MediaPlayer;

    .line 121
    .local v1, "tmp":Landroid/media/MediaPlayer;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lie;->e:Landroid/media/MediaPlayer;

    .line 122
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lie$1;

    invoke-direct {v4, p0, v1}, Lie$1;-><init>(Lie;Landroid/media/MediaPlayer;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v1    # "tmp":Landroid/media/MediaPlayer;
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lie;->g:Z

    .line 138
    :cond_0
    monitor-exit v3

    .line 139
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "IflyMediaPlayer"

    const-string/jumbo v4, "stop error"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public e()V
    .locals 4

    .prologue
    .line 145
    const-string/jumbo v1, "IflyMediaPlayer"

    const-string/jumbo v2, "---------------->> release()"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    sget-object v1, Lie;->d:Lie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 149
    :try_start_1
    invoke-virtual {p0}, Lie;->d()V

    .line 150
    iget-object v1, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 151
    const/4 v1, 0x0

    sput-object v1, Lie;->d:Lie;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 157
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IflyMediaPlayer"

    const-string/jumbo v3, "stop error"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 162
    :try_start_0
    sget-object v1, Lie;->d:Lie;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 169
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IflyMediaPlayer"

    const-string/jumbo v3, "stop error"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lie;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_0
    sget-object v1, Lie;->d:Lie;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lie;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 209
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IflyMediaPlayer"

    const-string/jumbo v3, "stop error"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 347
    invoke-super {p0}, Lif;->h()V

    .line 348
    invoke-virtual {p0}, Lie;->d()V

    .line 349
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Lif;->i()V

    .line 354
    invoke-virtual {p0}, Lie;->d()V

    .line 355
    return-void
.end method
