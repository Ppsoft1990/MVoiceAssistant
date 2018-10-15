.class public Laxa;
.super Ljava/lang/Object;
.source "ScheduleToneSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxa$a;
    }
.end annotation


# static fields
.field private static volatile b:Laxa;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/media/RingtoneManager;

.field private d:Landroid/media/MediaPlayer;

.field private e:Laxa$a;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Laxa;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laxa;->c:Landroid/media/RingtoneManager;

    .line 36
    iget-object v0, p0, Laxa;->c:Landroid/media/RingtoneManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 37
    return-void
.end method

.method static synthetic a(Laxa;I)I
    .locals 0
    .param p0, "x0"    # Laxa;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Laxa;->f:I

    return p1
.end method

.method static synthetic a(Laxa;)Landroid/media/RingtoneManager;
    .locals 1
    .param p0, "x0"    # Laxa;

    .prologue
    .line 17
    iget-object v0, p0, Laxa;->c:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Laxa;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Laxa;->b:Laxa;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Laxa;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Laxa;->b:Laxa;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Laxa;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Laxa;-><init>(Landroid/content/Context;)V

    sput-object v0, Laxa;->b:Laxa;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Laxa;->b:Laxa;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Laxa;)Laxa$a;
    .locals 1
    .param p0, "x0"    # Laxa;

    .prologue
    .line 17
    iget-object v0, p0, Laxa;->e:Laxa$a;

    return-object v0
.end method

.method static synthetic c(Laxa;)I
    .locals 1
    .param p0, "x0"    # Laxa;

    .prologue
    .line 17
    iget v0, p0, Laxa;->f:I

    return v0
.end method

.method static synthetic d(Laxa;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Laxa;

    .prologue
    .line 17
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Laxa;)I
    .locals 2
    .param p0, "x0"    # Laxa;

    .prologue
    .line 17
    iget v0, p0, Laxa;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laxa;->f:I

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/net/Uri;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Laxa;->c:Landroid/media/RingtoneManager;

    invoke-virtual {v0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laxa$1;

    invoke-direct {v1, p0}, Laxa$1;-><init>(Laxa;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/net/Uri;II)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "loop"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Laxa;->a(Landroid/net/Uri;IILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 132
    return-void
.end method

.method public a(Landroid/net/Uri;IILandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "loop"    # I
    .param p4, "onCompletionListener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 143
    invoke-virtual {p0}, Laxa;->b()V

    .line 144
    move-object v8, p1

    .line 145
    .local v8, "playUri":Landroid/net/Uri;
    iput p3, p0, Laxa;->f:I

    .line 146
    if-nez v8, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0}, Laxa;->e()V

    .line 150
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 152
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 154
    :try_start_0
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "uriStr":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string/jumbo v0, "android_asset://"

    .line 156
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const-string/jumbo v0, "android_asset://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 158
    .local v9, "start":I
    iget-object v0, p0, Laxa;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 159
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 160
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 161
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 165
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "start":I
    :goto_1
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v10    # "uriStr":Ljava/lang/String;
    :goto_2
    iget v0, p0, Laxa;->f:I

    if-lez v0, :cond_3

    .line 170
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 171
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    new-instance v1, Laxa$2;

    invoke-direct {v1, p0, p4}, Laxa$2;-><init>(Laxa;Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 189
    :goto_3
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 163
    .restart local v10    # "uriStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    iget-object v1, p0, Laxa;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 166
    .end local v10    # "uriStr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 167
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 187
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_3
.end method

.method public a(Laxa$a;)V
    .locals 0
    .param p1, "listener"    # Laxa$a;

    .prologue
    .line 52
    iput-object p1, p0, Laxa;->e:Laxa$a;

    .line 53
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, "isExist":Z
    :try_start_0
    iget-object v3, p0, Laxa;->c:Landroid/media/RingtoneManager;

    invoke-virtual {v3, p1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 106
    .local v2, "position":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 115
    .end local v2    # "position":I
    :goto_0
    return v1

    .line 109
    .restart local v2    # "position":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "position":I
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScheduleToneSetHelper"

    const-string/jumbo v4, "getRingTones() error"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Laxa;->d:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Laxa;->f:I

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleToneSetHelper"

    const-string/jumbo v2, "stopPlay"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Laxa;->b()V

    .line 209
    iget-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Laxa;->d:Landroid/media/MediaPlayer;

    .line 212
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Laxa;->f:I

    .line 213
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Laxa;->d:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Laxa;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 223
    :cond_0
    return v0
.end method
