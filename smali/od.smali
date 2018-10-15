.class public Lod;
.super Ljava/lang/Object;
.source "IflyRingToneManager.java"

# interfaces
.implements Lcom/iflytek/yd/base/IRingToneManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lod$a;,
        Lod$b;
    }
.end annotation


# static fields
.field private static c:Landroid/content/Context;


# instance fields
.field a:Landroid/media/MediaPlayer$OnCompletionListener;

.field b:Landroid/media/MediaPlayer$OnErrorListener;

.field private d:Landroid/os/Vibrator;

.field private e:Landroid/media/MediaPlayer;

.field private f:Landroid/media/AudioManager;

.field private g:Ljava/lang/Object;

.field private volatile h:Z

.field private i:Lod$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lod;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lod;->d:Landroid/os/Vibrator;

    .line 36
    iput-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 37
    iput-object v1, p0, Lod;->f:Landroid/media/AudioManager;

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lod;->g:Ljava/lang/Object;

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lod;->h:Z

    .line 714
    new-instance v1, Lod$2;

    invoke-direct {v1, p0}, Lod$2;-><init>(Lod;)V

    iput-object v1, p0, Lod;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 750
    new-instance v1, Lod$3;

    invoke-direct {v1, p0}, Lod$3;-><init>(Lod;)V

    iput-object v1, p0, Lod;->b:Landroid/media/MediaPlayer$OnErrorListener;

    .line 84
    :try_start_0
    sget-object v1, Lod;->c:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lod;->d:Landroid/os/Vibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    :try_start_1
    sget-object v1, Lod;->c:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lod;->f:Landroid/media/AudioManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "get Vibrator service error!"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "get AudioManager service error!"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method synthetic constructor <init>(Lod$1;)V
    .locals 0
    .param p1, "x0"    # Lod$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lod;-><init>()V

    return-void
.end method

.method static synthetic a(Lod;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lod;

    .prologue
    .line 31
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lod;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lod;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 31
    iput-object p1, p0, Lod;->e:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lod;Lod$a;)Lod$a;
    .locals 0
    .param p0, "x0"    # Lod;
    .param p1, "x1"    # Lod$a;

    .prologue
    .line 31
    iput-object p1, p0, Lod;->i:Lod$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lod;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lod;->c:Landroid/content/Context;

    .line 79
    sget-object v0, Lod$b;->a:Lod;

    return-object v0
.end method

.method static synthetic b(Lod;)Lod$a;
    .locals 1
    .param p0, "x0"    # Lod;

    .prologue
    .line 31
    iget-object v0, p0, Lod;->i:Lod$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lod$a;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "onRemindCustomListener"    # Lod$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const-string/jumbo v4, "RingToneManager"

    const-string/jumbo v5, "playRemindRingTone()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lod;->a()V

    .line 373
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-nez v4, :cond_0

    .line 374
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 377
    :cond_0
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 378
    const/4 v2, 0x0

    .line 380
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 383
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 392
    :goto_0
    if-eqz v3, :cond_1

    .line 393
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v2, v3

    .line 400
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 401
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 402
    const-string/jumbo v4, "RingToneManager"

    const-string/jumbo v5, "playRemindRingTone() | loop = false"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 404
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lod;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 405
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lod;->b:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 406
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 408
    iput-object p2, p0, Lod;->i:Lod$a;

    .line 410
    const/4 v4, 0x1

    iput-boolean v4, p0, Lod;->h:Z

    .line 411
    return-void

    .line 385
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_3
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 388
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    const-string/jumbo v4, "RingToneManager"

    const-string/jumbo v5, "playRemindRingTone setDataSource error"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v4, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 392
    if-eqz v2, :cond_2

    .line 393
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 395
    :catch_1
    move-exception v0

    .line 396
    const-string/jumbo v4, "RingToneManager"

    const-string/jumbo v5, "playRemindRingTone setDataSource error"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 396
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RingToneManager"

    const-string/jumbo v5, "playRemindRingTone setDataSource error"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 398
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v4

    .line 392
    :goto_3
    if-eqz v2, :cond_4

    .line 393
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 397
    :cond_4
    :goto_4
    throw v4

    .line 395
    :catch_3
    move-exception v0

    .line 396
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "RingToneManager"

    const-string/jumbo v6, "playRemindRingTone setDataSource error"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 387
    .end local v1    # "file":Ljava/io/File;
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private c(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 545
    :cond_0
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 546
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 547
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 548
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v0

    invoke-virtual {v0}, Lgs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "playFlag":Ljava/lang/String;
    const-string/jumbo v0, "2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 552
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v0

    invoke-virtual {v0}, Lgs;->g()Z

    .line 556
    .end local v6    # "playFlag":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 557
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lod;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 558
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lod;->b:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 559
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 560
    return-void
.end method

.method private c(Ljava/lang/String;Lod$a;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "onRemindCustomListener"    # Lod$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    const-string/jumbo v1, "RingToneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playRemindRingTone() | uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lod;->a()V

    .line 424
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 425
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 428
    :cond_0
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 430
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 431
    .local v0, "playUri":Landroid/net/Uri;
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    sget-object v2, Lod;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 433
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 434
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 435
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "playRemindRingTone() | loop = false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 437
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lod;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 438
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lod;->b:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 439
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 441
    iput-object p2, p0, Lod;->i:Lod$a;

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lod;->h:Z

    .line 444
    return-void
.end method

.method private d(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 563
    const-string/jumbo v0, "RingToneManager"

    const-string/jumbo v1, "playRemindRingTone(Asset) | looping = true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0}, Lod;->b()V

    .line 565
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 568
    :cond_0
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 569
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 570
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 571
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 572
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 573
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lod;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 574
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lod;->b:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 575
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 577
    iput-boolean v6, p0, Lod;->h:Z

    .line 578
    return-void
.end method

.method private d(Ljava/lang/String;Lod$a;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "onRemindCustomListener"    # Lod$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const-string/jumbo v1, "RingToneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playRemindRingTone() | uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lod;->a()V

    .line 457
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 458
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 461
    :cond_0
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 463
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 464
    .local v0, "playUri":Landroid/net/Uri;
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    sget-object v2, Lod;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 466
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 467
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 468
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "playRemindRingTone() | loop = false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 470
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lod;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 471
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lod;->b:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 472
    iget-object v1, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 474
    iput-object p2, p0, Lod;->i:Lod$a;

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, p0, Lod;->h:Z

    .line 477
    return-void
.end method

.method private e(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    const-string/jumbo v0, "RingToneManager"

    const-string/jumbo v1, "playRemindRingTone(Asset) | looping = false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lod;->a()V

    .line 583
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 586
    :cond_0
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 587
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 588
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 589
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 590
    const-string/jumbo v0, "RingToneManager"

    const-string/jumbo v1, "playRemindRingToneOnce() | loop = false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 592
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lod;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 593
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lod;->b:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 594
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lod;->h:Z

    .line 597
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 172
    iget-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v3, "stopRingTone()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lod;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    :try_start_0
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "playFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->h()V

    .line 183
    .end local v1    # "playFlag":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 184
    iget-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 185
    const/4 v2, 0x0

    iput-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    .line 186
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v4, "stopRingTone success"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lod;->h:Z

    if-eqz v2, :cond_1

    .line 195
    const/4 v2, 0x0

    iput-boolean v2, p0, Lod;->h:Z

    .line 197
    :cond_1
    monitor-exit v3

    .line 201
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v4, "stopRingTone error"

    invoke-static {v2, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 199
    :cond_2
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v3, "stopRingTone() | mMediaPlayer is null or isPlaying = false"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "AssetFileDescriptor is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 314
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lod;->d(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "playRemindRingToneFromAssert error"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lod$a;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "onRemindCustomListener"    # Lod$a;

    .prologue
    .line 150
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "is recording"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "silent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    :cond_1
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "uri is null or silent"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_2
    iget-object v2, p0, Lod;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    invoke-direct {p0, p1, p2}, Lod;->d(Ljava/lang/String;Lod$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v3, "startRemindRingTone error"

    invoke-static {v1, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Lod$a;)V
    .locals 0
    .param p1, "mOnRemindCustomListener"    # Lod$a;

    .prologue
    .line 485
    iput-object p1, p0, Lod;->i:Lod$a;

    .line 486
    return-void
.end method

.method public a(ZLjava/lang/String;Lod$a;)V
    .locals 4
    .param p1, "isPersonal"    # Z
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "onRemindCustomListener"    # Lod$a;

    .prologue
    .line 123
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "is recording"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 127
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, "silent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    :cond_1
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "uri is null or silent"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    iget-object v2, p0, Lod;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    if-eqz p1, :cond_3

    .line 134
    :try_start_0
    invoke-direct {p0, p2, p3}, Lod;->b(Ljava/lang/String;Lod$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 136
    :cond_3
    :try_start_2
    invoke-direct {p0, p2, p3}, Lod;->c(Ljava/lang/String;Lod$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v3, "startRemindRingTone error"

    invoke-static {v1, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 206
    iget-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v3, "stopRingTone()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lod;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_0
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "playFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->h()V

    .line 216
    .end local v1    # "playFlag":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lod;->e:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lod;->h:Z

    if-eqz v2, :cond_1

    .line 226
    const/4 v2, 0x0

    iput-boolean v2, p0, Lod;->h:Z

    .line 228
    :cond_1
    monitor-exit v3

    .line 230
    :cond_2
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v4, "stopRingToneLS error"

    invoke-static {v2, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public b(Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "AssetFileDescriptor is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lod;->e(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "playRemindRingToneFromAssertOnce error"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lod;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 533
    iget-boolean v0, p0, Lod;->h:Z

    if-eqz v0, :cond_0

    .line 534
    const-string/jumbo v0, "RingToneManager"

    const-string/jumbo v1, "stopPlayRemindRingTone()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lod;->a()V

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    const-string/jumbo v0, "RingToneManager"

    const-string/jumbo v1, "stopPlayRemindRingTone | mFlagIsPlayingRemindRing = false-->return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 689
    iget-object v0, p0, Lod;->d:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lod;->d:Landroid/os/Vibrator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 692
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lod;->d:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lod;->d:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 712
    :cond_0
    return-void
.end method

.method public playRingToneFromAssert(Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "AssetFileDescriptor is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lod;->c(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "playRingToneFromAssert error"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
