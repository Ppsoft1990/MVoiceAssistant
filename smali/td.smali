.class public final Ltd;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Lgq$a;
.implements Lhe$a;


# static fields
.field private static volatile f:Ltd;

.field private static l:Z

.field private static final n:Ljava/lang/String;

.field private static final t:Ljava/util/concurrent/locks/Lock;


# instance fields
.field a:[B

.field private b:Landroid/content/Context;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lgs;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lhl;

.field private m:Lcom/iflytek/common/speech/test/SpeechTestReceiver;

.field private o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

.field private p:Z

.field private q:I

.field private volatile r:Z

.field private s:Laxm;

.field private u:Landroid/content/BroadcastReceiver;

.field private v:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Ltd;->l:Z

    .line 166
    sget-object v0, Lnj;->a:Ljava/lang/String;

    sput-object v0, Ltd;->n:Ljava/lang/String;

    .line 759
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ltd;->t:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Ltd;->q:I

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltd;->r:Z

    .line 177
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ltd;->a:[B

    .line 960
    new-instance v0, Ltd$5;

    invoke-direct {v0, p0}, Ltd$5;-><init>(Ltd;)V

    iput-object v0, p0, Ltd;->u:Landroid/content/BroadcastReceiver;

    .line 1022
    new-instance v0, Ltd$6;

    invoke-direct {v0, p0}, Ltd$6;-><init>(Ltd;)V

    iput-object v0, p0, Ltd;->v:Landroid/telephony/PhoneStateListener;

    .line 198
    iput-object p1, p0, Ltd;->b:Landroid/content/Context;

    .line 199
    invoke-direct {p0}, Ltd;->r()V

    .line 200
    return-void

    .line 177
    :array_0
    .array-data 1
        0x32t
        0x30t
        0x31t
        0x35t
        0x31t
        0x31t
        0x31t
        0x36t
        -0x58t
        0x9t
        0x15t
        0x5et
        -0x48t
        0x6at
        0x37t
        -0x6et
        0x77t
        -0x76t
        -0x7bt
        0x3ft
        -0x41t
        -0x5ct
        0x41t
        0x52t
        0x8t
        -0x3t
        -0x5t
        -0x49t
        0x50t
        0x5bt
        0x10t
        0x19t
        -0x17t
        0x3at
        0x45t
        0xbt
        0x6dt
        -0x49t
        -0x4ft
        0x33t
        -0x16t
        0x1at
        -0xbt
        0x9t
        0x4at
        -0x25t
        0x4ft
        -0xct
        0x31t
        0x35t
        0x31t
        0x31t
        0x31t
        0x36t
        0x30t
        0x39t
    .end array-data
.end method

.method static synthetic a(Ltd;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ltd;Laxm;)Laxm;
    .locals 0
    .param p0, "x0"    # Ltd;
    .param p1, "x1"    # Laxm;

    .prologue
    .line 135
    iput-object p1, p0, Ltd;->s:Laxm;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Ltd;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    sget-object v0, Ltd;->f:Ltd;

    if-nez v0, :cond_1

    .line 188
    const-class v1, Ltd;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Ltd;->f:Ltd;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ltd;

    invoke-direct {v0, p0}, Ltd;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltd;->f:Ltd;

    .line 192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    sget-object v0, Ltd;->f:Ltd;

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ltd;Z)Z
    .locals 0
    .param p0, "x0"    # Ltd;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Ltd;->i:Z

    return p1
.end method

.method private a([B)[Ljava/lang/String;
    .locals 16
    .param p1, "content"    # [B

    .prologue
    .line 555
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    const/16 v14, 0x10

    if-ge v13, v14, :cond_1

    .line 556
    :cond_0
    const-string/jumbo v13, "ApplicationLoader"

    const-string/jumbo v14, "decryptHost(): decrpt content is illegal"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v3, 0x0

    .line 609
    :goto_0
    return-object v3

    .line 561
    :cond_1
    const/16 v13, 0x8

    :try_start_0
    new-array v8, v13, [B

    .line 562
    .local v8, "key1":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v13, 0x8

    if-ge v5, v13, :cond_2

    .line 563
    aget-byte v13, p1, v5

    aput-byte v13, v8, v5

    .line 562
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 566
    :cond_2
    const/16 v13, 0x8

    new-array v9, v13, [B

    .line 567
    .local v9, "key2":[B
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    const/16 v13, 0x8

    if-ge v6, v13, :cond_3

    .line 568
    move-object/from16 v0, p1

    array-length v13, v0

    rsub-int/lit8 v14, v6, 0x8

    sub-int/2addr v13, v14

    aget-byte v13, p1, v13

    aput-byte v13, v9, v6

    .line 567
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 571
    :cond_3
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v13, v13, -0x10

    new-array v12, v13, [B

    .line 573
    .local v12, "xorC":[B
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v13, v13, -0x10

    if-ge v7, v13, :cond_4

    .line 574
    add-int/lit8 v13, v7, 0x8

    aget-byte v13, p1, v13

    aput-byte v13, v12, v7

    .line 573
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 577
    :cond_4
    invoke-static {v12, v9}, Lwb;->a([B[B)[B

    move-result-object v1

    .line 579
    .local v1, "desC":[B
    if-eqz v1, :cond_5

    array-length v13, v1

    const/4 v14, 0x1

    if-ge v13, v14, :cond_6

    .line 580
    :cond_5
    const-string/jumbo v13, "ApplicationLoader"

    const-string/jumbo v14, "decryptHost(): host url decypt-xor fail"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v3, 0x0

    goto :goto_0

    .line 584
    :cond_6
    invoke-static {v1, v8}, Lcom/iflytek/yd/util/security/DESEncrypter;->desDecrypt([B[B)[B

    move-result-object v10

    .line 586
    .local v10, "orignC":[B
    if-eqz v10, :cond_7

    array-length v13, v10

    const/4 v14, 0x1

    if-ge v13, v14, :cond_8

    .line 587
    :cond_7
    const-string/jumbo v13, "ApplicationLoader"

    const-string/jumbo v14, "decryptHost(): host url decypt-des fail"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v3, 0x0

    goto :goto_0

    .line 591
    :cond_8
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 593
    .local v11, "orignText":Ljava/lang/String;
    const-string/jumbo v13, "\\|"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "hostArr":[Ljava/lang/String;
    const-string/jumbo v4, "["

    .line 596
    .local v4, "hostRes":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_4
    array-length v13, v3

    if-ge v5, v13, :cond_a

    .line 597
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v3, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    array-length v13, v3

    add-int/lit8 v13, v13, -0x1

    if-ge v5, v13, :cond_9

    .line 599
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 602
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 604
    const-string/jumbo v13, "ApplicationLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "decryptHost(): orignal host url is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 607
    .end local v1    # "desC":[B
    .end local v3    # "hostArr":[Ljava/lang/String;
    .end local v4    # "hostRes":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "key1":[B
    .end local v9    # "key2":[B
    .end local v10    # "orignC":[B
    .end local v11    # "orignText":Ljava/lang/String;
    .end local v12    # "xorC":[B
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "ApplicationLoader"

    const-string/jumbo v14, "decryptHost(): host url decypt fail"

    invoke-static {v13, v14, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 766
    sget-object v5, Ltd;->t:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 768
    :try_start_0
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 770
    const-string/jumbo v5, "tg"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 771
    .local v4, "skinClazz":Ljava/lang/Class;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 772
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 773
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/ISkin;

    .line 775
    .local v3, "skin":Lcom/iflytek/base/skin/ISkin;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 776
    invoke-static {}, Lcom/iflytek/base/skin/ThemeConstants;->getDefaultThemeDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "def_path":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/iflytek/base/skin/ResourceType;->RES_TYPE_ASSETS:Lcom/iflytek/base/skin/ResourceType;

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/iflytek/base/skin/ThemeManager;->loadTheme(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z

    .line 779
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccskin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/iflytek/base/skin/ResourceType;->RES_TYPE_ASSETS:Lcom/iflytek/base/skin/ResourceType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string/jumbo v5, "ApplicationLoader"

    const-string/jumbo v6, "loadSkin end"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    sget-object v5, Ltd;->t:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 788
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v1    # "def_path":Ljava/lang/String;
    .end local v3    # "skin":Lcom/iflytek/base/skin/ISkin;
    .end local v4    # "skinClazz":Ljava/lang/Class;
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v2

    .line 784
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "ApplicationLoader"

    const-string/jumbo v6, "loadSkin()"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    sget-object v5, Ltd;->t:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sget-object v6, Ltd;->t:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method static synthetic b(Ltd;)V
    .locals 0
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    invoke-direct {p0}, Ltd;->i()V

    return-void
.end method

.method static synthetic b(Ltd;Z)Z
    .locals 0
    .param p0, "x0"    # Ltd;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Ltd;->j:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 135
    sput-boolean p0, Ltd;->l:Z

    return p0
.end method

.method static synthetic c(Ltd;)V
    .locals 0
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    invoke-direct {p0}, Ltd;->m()V

    return-void
.end method

.method private c(Z)V
    .locals 5
    .param p1, "isOpen"    # Z

    .prologue
    .line 1002
    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    .line 1003
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1004
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1006
    if-eqz p1, :cond_1

    .line 1008
    :try_start_0
    iget-object v2, p0, Ltd;->v:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x120

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v2, p0, Ltd;->v:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ApplicationLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listenPhoneState e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Ltd;)V
    .locals 0
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    invoke-direct {p0}, Ltd;->n()V

    return-void
.end method

.method static synthetic e(Ltd;)Laxm;
    .locals 1
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    iget-object v0, p0, Ltd;->s:Laxm;

    return-object v0
.end method

.method static synthetic f(Ltd;)V
    .locals 0
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    invoke-direct {p0}, Ltd;->q()V

    return-void
.end method

.method static synthetic g(Ltd;)V
    .locals 0
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    invoke-direct {p0}, Ltd;->l()V

    return-void
.end method

.method static synthetic h(Ltd;)Z
    .locals 1
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    iget-boolean v0, p0, Ltd;->p:Z

    return v0
.end method

.method static synthetic i(Ltd;)Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .locals 1
    .param p0, "x0"    # Ltd;

    .prologue
    .line 135
    iget-object v0, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 220
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v2, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v2, "com.iflytek.cmcc.action_test_record_file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v2, "com.iflytek.cmcc.action_manual_test_mode"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.ALARM_ALERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v2

    iget-object v3, p0, Ltd;->b:Landroid/content/Context;

    iget-object v4, p0, Ltd;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v4, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 232
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v1, "speechFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/iflytek/common/speech/test/SpeechTestReceiver;

    invoke-direct {v2}, Lcom/iflytek/common/speech/test/SpeechTestReceiver;-><init>()V

    iput-object v2, p0, Ltd;->m:Lcom/iflytek/common/speech/test/SpeechTestReceiver;

    .line 234
    const-string/jumbo v2, "com.iflytek.speechtest.action"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v2, "com.iflytek.speechtest.action.listen"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v2

    iget-object v3, p0, Ltd;->b:Landroid/content/Context;

    iget-object v4, p0, Ltd;->m:Lcom/iflytek/common/speech/test/SpeechTestReceiver;

    invoke-virtual {v2, v3, v4, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 238
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ltd;->c(Z)V

    .line 239
    const-string/jumbo v2, "ApplicationLoader"

    const-string/jumbo v3, "registReceiver end"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    .line 257
    iget-boolean v4, p0, Ltd;->h:Z

    if-eqz v4, :cond_0

    .line 279
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/util/TestHelper;->getMscLogFlag()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    const-string/jumbo v0, "config/msc.cfg"

    .line 263
    .local v0, "assetPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/msc/msc.cfg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "descPath":Ljava/lang/String;
    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v4, v2, v0}, Lcom/iflytek/yd/util/FileManager;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    .end local v0    # "assetPath":Ljava/lang/String;
    .end local v2    # "descPath":Ljava/lang/String;
    :cond_1
    new-instance v1, Lpo;

    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    check-cast v4, Lcom/iflytek/viafly/ViaFlyApp;

    invoke-direct {v1, v4}, Lpo;-><init>(Lcom/iflytek/viafly/ViaFlyApp;)V

    .line 268
    .local v1, "cfg":Ljo;
    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v4}, Lxn;->a(Landroid/content/Context;)Lxn;

    move-result-object v3

    .line 269
    .local v3, "log":Ljq;
    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Landroid/content/Context;Ljo;)Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v4

    iput-object v4, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 270
    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    iget-object v5, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4, v5}, Lcom/iflytek/common/speech/asr/MscManager;->a(Landroid/content/Context;Ljr;)Lcom/iflytek/common/speech/asr/MscManager;

    .line 271
    iget-object v4, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v4, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljq;)V

    .line 272
    iget-object v4, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v5, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v5}, Lzl;->a(Landroid/content/Context;)Lzl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljp;)V

    .line 273
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltd;->h:Z

    .line 274
    iget-boolean v4, p0, Ltd;->p:Z

    if-eqz v4, :cond_2

    .line 275
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->APP_CREATE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    invoke-virtual {v4, v5}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;)V

    .line 278
    :cond_2
    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Ljo;)V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 296
    iget-boolean v0, p0, Ltd;->i:Z

    if-eqz v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Ltd;->d:Landroid/os/Handler;

    new-instance v1, Ltd$2;

    invoke-direct {v1, p0}, Ltd$2;-><init>(Ltd;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 392
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, "shortcut":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v5, "\u7075\u7280\u4e8c\u7ef4\u7801"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CaptureActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 398
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    const-string/jumbo v4, "ApplicationLoader"

    const-string/jumbo v5, "removeCodeScanShortCut"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "shortcut":Landroid/content/Intent;
    .end local v3    # "shortcutIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ApplicationLoader"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.schedule.CHECK_DATED_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.schedule.REGISTER_AVAILABLE_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.schedule.CHECK_ALL_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lawn;->a(Landroid/content/Context;)V

    .line 464
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->init(Landroid/content/Context;)V

    .line 465
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 469
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "handleWeatherCacheShedule"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 615
    :try_start_0
    iget-object v1, p0, Ltd;->a:[B

    invoke-direct {p0, v1}, Ltd;->a([B)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lagv;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ApplicationLoader"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$a;)V

    .line 625
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 628
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    .line 629
    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v1

    .line 628
    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 632
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    new-instance v1, Lob;

    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lob;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 635
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-static {}, Laqs;->a()Laqs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 638
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    new-instance v1, Laoq;

    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Laoq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 641
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1}, Lna;->a(Landroid/content/Context;)Lna;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 648
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    .line 649
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v1

    .line 648
    invoke-virtual {v0, v1}, Lvp;->a(Lvp$e;)V

    .line 652
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-static {}, Lvl;->a()Lvl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$c;)V

    .line 655
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-static {}, Laof;->a()Laof;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 658
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-static {}, Laoh;->a()Laoh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 661
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-static {}, Lape;->a()Lape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 664
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1}, Ltu;->a(Landroid/content/Context;)Ltu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp;->a(Lvp$d;)V

    .line 665
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LOCKSCREEN"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Ltd;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 792
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "app_init"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltd;->c:Landroid/os/HandlerThread;

    .line 793
    iget-object v0, p0, Ltd;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 794
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltd;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltd;->d:Landroid/os/Handler;

    .line 796
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 1039
    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    .line 1040
    .local v0, "scheduleManager":Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->init()V

    .line 1042
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .param p1, "screenState"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 909
    const-string/jumbo v0, "ApplicationLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleScreenCha nged | screen state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    if-ne p1, v4, :cond_1

    .line 911
    invoke-direct {p0, v3}, Ltd;->c(Z)V

    .line 912
    iget-object v0, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3, v3, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 916
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_SCREEN_OFF"

    .line 917
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 920
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->d()V

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 922
    invoke-direct {p0, v4}, Ltd;->c(Z)V

    .line 923
    iget-object v0, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3, v3, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 925
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->handleEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 941
    iget-object v3, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v3}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v3

    invoke-virtual {v3, p0}, Lgq;->a(Lgq$a;)V

    .line 942
    if-eqz p1, :cond_0

    .line 943
    const-string/jumbo v3, "com.iflytek.cmccKEY_PACKAGE"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 944
    .local v0, "action":I
    const-string/jumbo v3, "com.iflytek.cmccKEY_PACKAGE_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "package:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "names":[Ljava/lang/String;
    const-string/jumbo v3, "ApplicationLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppStateChanged names"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v6, :cond_0

    .line 949
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-interface {v3, v0, v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->handleAppChanged(ILjava/lang/String;)V

    .line 950
    invoke-static {}, Lon;->a()Lok;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-interface {v3, v0, v4}, Lok;->a(ILjava/lang/String;)V

    .line 951
    iget-object v3, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v3}, Lui;->a(Landroid/content/Context;)Lui;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v3, v0, v4}, Lui;->a(ILjava/lang/String;)V

    .line 952
    iget-object v3, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v3}, Lagh;->a(Landroid/content/Context;)Lagh;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v3, v0, v4}, Lagh;->a(ILjava/lang/String;)V

    .line 953
    iget-object v3, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v3}, Luo;->a(Landroid/content/Context;)Luo;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v3, v0, v4}, Luo;->a(ILjava/lang/String;)V

    .line 957
    .end local v0    # "action":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Ltd;->d:Landroid/os/Handler;

    new-instance v1, Ltd$1;

    invoke-direct {v1, p0, p1}, Ltd$1;-><init>(Ltd;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 3
    .param p1, "appNames"    # [Ljava/lang/String;
    .param p2, "isChange"    # Z

    .prologue
    .line 803
    const-string/jumbo v0, "ApplicationLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppQueryFinish | changeFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const-string/jumbo v1, "apps"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 805
    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;ZLcom/iflytek/common/speech/asr/MscManager$UploadEntry;Z)V
    .locals 6
    .param p1, "contactNames"    # [Ljava/lang/String;
    .param p2, "splitedNames"    # [Ljava/lang/String;
    .param p3, "changeFlag"    # Z
    .param p4, "entry"    # Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
    .param p5, "isContactChanged"    # Z

    .prologue
    .line 819
    const-string/jumbo v3, "ApplicationLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "afterContactQuery | changeFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz p2, :cond_1

    .line 821
    const-string/jumbo v3, "ApplicationLoader"

    const-string/jumbo v4, "update aitalk Lexicon by splited contact names"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v3, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const-string/jumbo v4, "contact"

    invoke-virtual {v3, v4, p2, p3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 830
    :goto_0
    if-eqz p3, :cond_0

    .line 831
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/common/speech/asr/MscManager;->j()V

    .line 834
    :cond_0
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/iflytek/common/speech/asr/MscManager;->a([Ljava/lang/String;)V

    .line 836
    if-eqz p1, :cond_3

    .line 837
    const/4 v2, 0x0

    .line 838
    .local v2, "p":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v0, "allName":Ljava/lang/StringBuilder;
    const/16 v1, 0x32

    .line 841
    .local v1, "count":I
    :goto_2
    if-lez v1, :cond_2

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 842
    add-int/lit8 v1, v1, -0x1

    .line 843
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 825
    .end local v0    # "allName":Ljava/lang/StringBuilder;
    .end local v1    # "count":I
    .end local v2    # "p":I
    :cond_1
    const-string/jumbo v3, "ApplicationLoader"

    const-string/jumbo v4, "update aitalk Lexicon by original contact names"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v3, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const-string/jumbo v4, "contact"

    invoke-virtual {v3, v4, p1, p3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 848
    .restart local v0    # "allName":Ljava/lang/StringBuilder;
    .restart local v1    # "count":I
    .restart local v2    # "p":I
    :cond_2
    const-string/jumbo v3, "end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string/jumbo v3, "ApplicationLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upload contact list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 852
    .end local v0    # "allName":Ljava/lang/StringBuilder;
    .end local v1    # "count":I
    .end local v2    # "p":I
    :cond_3
    const-string/jumbo v3, "ApplicationLoader"

    const-string/jumbo v4, "upload contact list ,all shown"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;)V

    .line 857
    if-eqz p5, :cond_4

    .line 858
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->c()V

    .line 860
    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Ltd;->r:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d()V

    .line 209
    iget-object v0, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d()V

    .line 211
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeManager;->clearThemeImagePool()V

    .line 213
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 214
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Ltd;->l:Z

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    invoke-virtual {v0}, Lgx;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 412
    iget-boolean v0, p0, Ltd;->j:Z

    if-eqz v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Ltd;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 417
    invoke-direct {p0}, Ltd;->r()V

    .line 420
    :cond_1
    iget-object v0, p0, Ltd;->d:Landroid/os/Handler;

    new-instance v1, Ltd$3;

    invoke-direct {v1, p0}, Ltd$3;-><init>(Ltd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 477
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 479
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "initApp start"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_FLAG_AUTO_RESTART"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltd;->p:Z

    .line 485
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lhj;->d(Landroid/content/Context;)V

    .line 488
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Loa;->a(Landroid/content/Context;)Loa;

    .line 494
    invoke-virtual {p0}, Ltd;->f()V

    .line 497
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lpd;->a(Landroid/content/Context;)V

    .line 500
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Ltd;->b(Landroid/content/Context;)V

    .line 503
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v0

    iput-object v0, p0, Ltd;->e:Lgs;

    .line 504
    iget-object v0, p0, Ltd;->e:Lgs;

    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1}, Lzl;->a(Landroid/content/Context;)Lzl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgs;->a(Lgs$a;)V

    .line 507
    invoke-direct {p0}, Ltd;->j()V

    .line 510
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->createInstance()V

    .line 513
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->createInstance(Landroid/content/Context;)V

    .line 514
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->loadAllPlugins(Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 515
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->registObservers(Landroid/content/Context;)V

    .line 518
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lari;->a(Landroid/content/Context;)Lari;

    .line 521
    invoke-direct {p0}, Ltd;->k()V

    .line 524
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lon;->a(Landroid/content/Context;)V

    .line 525
    invoke-static {}, Lon;->a()Lok;

    move-result-object v0

    new-instance v1, Ltd$4;

    invoke-direct {v1, p0}, Ltd$4;-><init>(Ltd;)V

    invoke-interface {v0, v1}, Lok;->a(Lol;)V

    .line 535
    invoke-direct {p0}, Ltd;->s()V

    .line 538
    invoke-direct {p0}, Ltd;->p()V

    .line 541
    invoke-direct {p0}, Ltd;->o()V

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltd;->r:Z

    .line 545
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "initApp end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v0, "ApplicationLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initApp end timeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void
.end method

.method public f()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 686
    iget-boolean v0, p0, Ltd;->g:Z

    if-nez v0, :cond_2

    .line 687
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 690
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {}, Laax;->a()Laax;

    move-result-object v1

    invoke-static {v0, v1}, Ladh;->a(Landroid/content/Context;Ladi;)V

    .line 692
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/AdaptationManager;->createInstance(Landroid/content/Context;)Lcom/iflytek/common/adaptation/AdaptationManager;

    .line 694
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Laad;->a(Landroid/content/Context;)Laad;

    .line 696
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lagl;->a(Landroid/content/Context;)Lagl;

    .line 699
    invoke-static {}, Lcom/iflytek/common/adaptation/AdaptationManager;->getInstance()Lcom/iflytek/common/adaptation/AdaptationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/AdaptationManager;->init()V

    .line 701
    invoke-static {}, Laad;->a()Laad;

    move-result-object v0

    invoke-virtual {v0}, Laad;->b()V

    .line 703
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v0

    invoke-virtual {v0}, Lagl;->b()V

    .line 706
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Ltd;->k:Lhl;

    .line 707
    iget-object v0, p0, Ltd;->k:Lhl;

    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lhl;->a(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 709
    iget-object v0, p0, Ltd;->k:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    const-string/jumbo v1, "108ViaFly"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/business/AppConfig;->setBlcAppId(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Ltd;->k:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/business/AppConfig;->setMscAppId(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Ltd;->k:Lhl;

    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v2}, Lhz;->a(Landroid/content/Context;)Lhz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhl;->a(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    .line 713
    iget-object v0, p0, Ltd;->k:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/business/AppConfig;->setIMSI(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Ltd;->k:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v11

    .line 717
    .local v11, "userAgent":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    invoke-virtual {v0}, Lhy;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x2

    .line 719
    .local v8, "doubleCard":I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 720
    iget-object v0, p0, Ltd;->k:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/iflytek/yd/business/AppConfig;->setUserAgent(Ljava/lang/String;)V

    .line 725
    .end local v8    # "doubleCard":I
    :cond_0
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    sget-object v1, Ltd;->n:Ljava/lang/String;

    iget-object v2, p0, Ltd;->k:Lhl;

    .line 726
    invoke-virtual {v2}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltd;->k:Lhl;

    .line 727
    invoke-virtual {v3}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltd;->b:Landroid/content/Context;

    .line 728
    invoke-static {v4}, Lhl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "http://ydossp.voicecloud.cn/do"

    const-string/jumbo v6, "http://ydlog.voicecloud.cn/log"

    const-string/jumbo v7, "http://ydnotice.voicecloud.cn/do"

    .line 725
    invoke-virtual/range {v0 .. v7}, Lvk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iput-boolean v12, p0, Ltd;->g:Z

    .line 734
    iget-boolean v0, p0, Ltd;->p:Z

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->c()V

    .line 740
    :cond_1
    invoke-static {}, Lmz;->c()V

    .line 743
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/base/newalarm/AlarmFactory;->createInstance(Landroid/content/Context;)V

    .line 744
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/base/newalarm/AlarmFactory;->setAlarmDebug(Z)V

    .line 750
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    const-class v1, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "userAgent":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .restart local v11    # "userAgent":Ljava/lang/String;
    :cond_3
    move v8, v12

    .line 718
    goto :goto_0

    .line 752
    :catch_0
    move-exception v9

    .line 753
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "initEnviroment"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public g()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 866
    const-string/jumbo v1, "ApplicationLoader"

    const-string/jumbo v2, "handleConnectionChanged"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 868
    .local v0, "cm":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/entities/SystemEvent;->network_changed:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 869
    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/entities/SystemEvent;->network_changed:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->handleEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 870
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v1

    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Landroid/content/Context;)V

    .line 874
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->i()V

    .line 876
    :cond_1
    iget-object v1, p0, Ltd;->k:Lhl;

    iget-object v2, p0, Ltd;->b:Landroid/content/Context;

    iget-object v3, p0, Ltd;->b:Landroid/content/Context;

    .line 877
    invoke-static {v3}, Lhz;->a(Landroid/content/Context;)Lhz;

    move-result-object v3

    .line 876
    invoke-virtual {v1, v2, v3}, Lhl;->a(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    .line 878
    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c()V

    .line 879
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 880
    iget-object v1, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4, v4, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 882
    iget-object v1, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v1}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v1

    invoke-virtual {v1}, Lvr;->d()V

    .line 889
    :goto_0
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Ltd;->q:I

    .line 890
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 891
    const-string/jumbo v1, "ApplicationLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceiver || isNetworkAvailable netType WIFI last net type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltd;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->g()V

    .line 895
    :cond_2
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v1

    iput v1, p0, Ltd;->q:I

    .line 896
    return-void

    .line 884
    :cond_3
    iget-object v1, p0, Ltd;->o:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v4, v4, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Ltd;->b:Landroid/content/Context;

    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhe;->a(Lhe$a;)V

    .line 935
    return-void
.end method

.method public onContactQueryFinish([Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "contactNames"    # [Ljava/lang/String;
    .param p2, "splitedNames"    # [Ljava/lang/String;
    .param p3, "changeFlag"    # Z
    .param p4, "isContactChanged"    # Z

    .prologue
    .line 809
    sget-object v4, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->CONTACT_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ltd;->a([Ljava/lang/String;[Ljava/lang/String;ZLcom/iflytek/common/speech/asr/MscManager$UploadEntry;Z)V

    .line 810
    return-void
.end method
