.class public Laob;
.super Ljava/lang/Object;
.source "MiguAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laob$a;
    }
.end annotation


# static fields
.field private static g:Laob;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private d:Lanz;

.field private e:J

.field private f:Laoa;

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:I

.field private m:Z

.field private final n:I

.field private o:Z

.field private p:Z

.field private q:Laob$a;

.field private final r:J

.field private final s:I

.field private final t:I

.field private final u:J

.field private v:Lyn;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "MiguAuthHelper"

    iput-object v0, p0, Laob;->a:Ljava/lang/String;

    .line 57
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Laob;->h:J

    .line 58
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Laob;->i:J

    .line 59
    const-wide/32 v0, 0x337f9800

    iput-wide v0, p0, Laob;->j:J

    .line 60
    iput-boolean v2, p0, Laob;->k:Z

    .line 62
    iput v2, p0, Laob;->l:I

    .line 63
    iput-boolean v2, p0, Laob;->m:Z

    .line 64
    iput v3, p0, Laob;->n:I

    .line 65
    iput-boolean v2, p0, Laob;->o:Z

    .line 67
    iput-boolean v2, p0, Laob;->p:Z

    .line 69
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Laob;->r:J

    .line 70
    iput v3, p0, Laob;->s:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Laob;->t:I

    .line 72
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Laob;->u:J

    .line 299
    new-instance v0, Laob$2;

    invoke-direct {v0, p0}, Laob$2;-><init>(Laob;)V

    iput-object v0, p0, Laob;->v:Lyn;

    .line 87
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laob;->b:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Laob;->e()V

    .line 89
    new-instance v0, Laob$a;

    invoke-direct {v0, p0}, Laob$a;-><init>(Laob;)V

    iput-object v0, p0, Laob;->q:Laob$a;

    .line 90
    return-void
.end method

.method static synthetic a(Laob;)Laob$a;
    .locals 1
    .param p0, "x0"    # Laob;

    .prologue
    .line 49
    iget-object v0, p0, Laob;->q:Laob$a;

    return-object v0
.end method

.method public static a()Laob;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Laob;->g:Laob;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Laob;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Laob;->g:Laob;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Laob;

    invoke-direct {v0}, Laob;-><init>()V

    sput-object v0, Laob;->g:Laob;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Laob;->g:Laob;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(I)V
    .locals 8
    .param p1, "errorCode"    # I

    .prologue
    const/16 v7, 0x7d7

    .line 242
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Laob;->a(Z)V

    .line 244
    iget-boolean v4, p0, Laob;->k:Z

    if-eqz v4, :cond_1

    if-eq p1, v7, :cond_1

    .line 246
    invoke-direct {p0}, Laob;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    const-string/jumbo v4, "MiguAuthHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "login: sendErrorBroadcast | errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",errorInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Laoc;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v4, p0, Laob;->f:Laoa;

    if-eqz v4, :cond_2

    .line 251
    const-string/jumbo v4, "MiguAuthHelper"

    const-string/jumbo v5, "login: sendErrorBroadcast"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v4, p0, Laob;->f:Laoa;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1}, Laoa;->a(II)V

    .line 255
    :cond_2
    if-eq p1, v7, :cond_4

    sget-boolean v4, Laoc;->a:Z

    if-eqz v4, :cond_4

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 258
    .local v0, "currTime":J
    sget-wide v4, Laoc;->b:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 259
    const-string/jumbo v4, "MiguAuthHelper"

    const-string/jumbo v5, "window show time < 20S"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_NOLOGIN_WINDOW_TIME"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 262
    .local v2, "lastShowTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v6, p0, Laob;->j:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 263
    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Laob;->b:Landroid/content/Context;

    .line 264
    invoke-static {v4}, Lahr;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Laok;

    const-string/jumbo v6, "NOT_LOGIN"

    invoke-direct {v5, v6}, Laok;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 242
    .end local v0    # "currTime":J
    .end local v2    # "lastShowTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 268
    .restart local v0    # "currTime":J
    :cond_3
    :try_start_2
    const-string/jumbo v4, "MiguAuthHelper"

    const-string/jumbo v5, "window show time > 20S"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    .end local v0    # "currTime":J
    :cond_4
    const-string/jumbo v4, "MiguAuthHelper"

    const-string/jumbo v5, "errorCode is Running Or splash not end,no Need show winow"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic a(Laob;I)V
    .locals 0
    .param p0, "x0"    # Laob;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Laob;->a(I)V

    return-void
.end method

.method static synthetic a(Laob;Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 0
    .param p0, "x0"    # Laob;
    .param p1, "x1"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Laob;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    return-void
.end method

.method static synthetic a(Laob;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laob;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Laob;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 276
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Laob;->a(Z)V

    .line 278
    iget-boolean v0, p0, Laob;->k:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MIGU_UPDATE_FLAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Laob;->k:Z

    .line 283
    :cond_0
    iget-object v0, p0, Laob;->f:Laoa;

    if-eqz v0, :cond_1

    .line 284
    const-string/jumbo v0, "MiguAuthHelper"

    const-string/jumbo v1, "login: sendResultBroadcast"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v0, "MiguAuthHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "login: AuthenticationInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Laob;->f:Laoa;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Laoa;->a(ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_1
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Laob;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Laob;Z)Z
    .locals 0
    .param p0, "x0"    # Laob;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Laob;->m:Z

    return p1
.end method

.method static synthetic b(Laob;)I
    .locals 1
    .param p0, "x0"    # Laob;

    .prologue
    .line 49
    iget v0, p0, Laob;->l:I

    return v0
.end method

.method static synthetic b(Laob;Z)V
    .locals 0
    .param p0, "x0"    # Laob;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Laob;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 486
    const-string/jumbo v4, "MiguAuthHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "record log,Code is:FT79001,key is:d_state,value is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v2, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_state"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-static {}, Loa;->a()Loa;

    move-result-object v4

    invoke-virtual {v4}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 490
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "province":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "city":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 494
    const-string/jumbo v4, "province"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 497
    const-string/jumbo v4, "city"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .end local v1    # "city":Ljava/lang/String;
    .end local v3    # "province":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Laob;->b:Landroid/content/Context;

    invoke-static {v4}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v4

    const-string/jumbo v5, "FT79001"

    .line 501
    invoke-virtual {v4, v5, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 504
    return-void
.end method

.method static synthetic c(Laob;)I
    .locals 2
    .param p0, "x0"    # Laob;

    .prologue
    .line 49
    iget v0, p0, Laob;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laob;->l:I

    return v0
.end method

.method static synthetic c(Laob;Z)Z
    .locals 0
    .param p0, "x0"    # Laob;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Laob;->o:Z

    return p1
.end method

.method static synthetic d(Laob;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
    .locals 1
    .param p0, "x0"    # Laob;

    .prologue
    .line 49
    iget-object v0, p0, Laob;->c:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    return-object v0
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Laob;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 438
    new-instance v1, Laoa;

    iget-object v2, p0, Laob;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Laoa;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laob;->f:Laoa;

    .line 439
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 440
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lanv;->a()Lanv;

    .line 445
    invoke-static {}, Laoe;->a()Laoe;

    .line 446
    return-void
.end method

.method static synthetic e(Laob;)Z
    .locals 1
    .param p0, "x0"    # Laob;

    .prologue
    .line 49
    iget-boolean v0, p0, Laob;->m:Z

    return v0
.end method

.method private f()V
    .locals 8

    .prologue
    .line 451
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_MIGU_UPDATE_FLAG"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lil;->a(Ljava/lang/String;Z)V

    .line 453
    invoke-static {}, Lmz;->p()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    .line 454
    .local v1, "oldVersionInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v1, :cond_0

    .line 455
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 457
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Laob;->i:J

    add-long v2, v4, v6

    .line 459
    .local v2, "validTime":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenType()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V

    .line 461
    const-string/jumbo v4, "01"

    invoke-virtual {v0, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setOperateType(Ljava/lang/String;)V

    .line 463
    const/4 v4, 0x0

    iput-boolean v4, p0, Laob;->k:Z

    .line 464
    invoke-direct {p0, v0}, Laob;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 466
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v2    # "validTime":J
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "loginidCaller"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-object v3

    .line 474
    :cond_1
    :try_start_0
    new-instance v2, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-static {p1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, "t1":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 477
    .local v1, "result":Ljava/lang/Long;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 478
    .end local v1    # "result":Ljava/lang/Long;
    .end local v2    # "t1":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MiguAuthHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttoken"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Laob;->d:Lanz;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lanz;

    iget-object v1, p0, Laob;->b:Landroid/content/Context;

    iget-object v2, p0, Laob;->v:Lyn;

    invoke-direct {v0, v1, v2}, Lanz;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Laob;->d:Lanz;

    .line 296
    :cond_0
    iget-object v0, p0, Laob;->d:Lanz;

    const-string/jumbo v1, "1"

    iget v2, p0, Laob;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lanz;->a(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Laob;->e:J

    .line 297
    return-void
.end method

.method public b()V
    .locals 12

    .prologue
    .line 94
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: try start Migu auth"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v5, p0, Laob;->o:Z

    if-eqz v5, :cond_0

    .line 99
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: kS retry fail limit"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/16 v5, 0x7dd

    invoke-direct {p0, v5}, Laob;->a(I)V

    .line 200
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Laob;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: auth is RUNING!!!"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/16 v5, 0x7d7

    invoke-direct {p0, v5}, Laob;->a(I)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lmz;->p()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    .line 115
    .local v1, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v8, "com.iflytek.cmccIFLY_MIGU_UPDATE_FLAG"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v4

    .line 117
    .local v4, "isUpdate":Z
    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 118
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    const/4 v5, 0x1

    iput-boolean v5, p0, Laob;->k:Z

    .line 120
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: start user update!!!"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    invoke-virtual {p0}, Laob;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    const/16 v5, 0x7d9

    invoke-direct {p0, v5}, Laob;->a(I)V

    .line 126
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, ""

    invoke-static {v5, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v5, 0x7de

    invoke-direct {p0, v5}, Laob;->a(I)V

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/account/entity/User;->getUserLoginState()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 138
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: auth time not valid"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v5, 0x7d3

    invoke-direct {p0, v5}, Laob;->a(I)V

    goto/16 :goto_0

    .line 144
    :cond_4
    invoke-static {}, Lmz;->h()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v3

    .line 145
    .local v3, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v3, :cond_5

    invoke-static {v3}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 148
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->f()V

    .line 149
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: auth time not valid,auto exit"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/16 v5, 0x7d3

    invoke-direct {p0, v5}, Laob;->a(I)V

    goto/16 :goto_0

    .line 155
    :cond_5
    invoke-static {}, Lmz;->n()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 156
    const/16 v5, 0x7e0

    invoke-direct {p0, v5}, Laob;->a(I)V

    goto/16 :goto_0

    .line 169
    :cond_6
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->d()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 170
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: user reject to login,no need request"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v5, 0x7d0

    invoke-direct {p0, v5}, Laob;->a(I)V

    goto/16 :goto_0

    .line 176
    :cond_7
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v8, "com.iflytek.cmccIFLY_MIGU_AUTH_TIME"

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v8, v10, v11}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v6

    .line 177
    .local v6, "lastAuthTime":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iget-wide v10, p0, Laob;->h:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_8

    .line 178
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: last auth not enough 24H"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v5, 0x7d2

    invoke-direct {p0, v5}, Laob;->a(I)V

    goto/16 :goto_0

    .line 184
    :cond_8
    iget-object v5, p0, Laob;->b:Landroid/content/Context;

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    .line 185
    invoke-virtual {v5}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 186
    .local v0, "appConfig":Lcom/iflytek/yd/business/AppConfig;
    if-eqz v0, :cond_a

    .line 187
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v5

    sget-object v8, Lcom/iflytek/yd/system/ApnAccessorType;->CMNET:Lcom/iflytek/yd/system/ApnAccessorType;

    if-eq v5, v8, :cond_9

    .line 188
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v5

    sget-object v8, Lcom/iflytek/yd/system/ApnAccessorType;->CMWAP:Lcom/iflytek/yd/system/ApnAccessorType;

    if-ne v5, v8, :cond_a

    .line 191
    :cond_9
    :try_start_1
    invoke-virtual {p0}, Laob;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 192
    :catch_1
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/lang/Exception;
    const/16 v5, 0x7d9

    invoke-direct {p0, v5}, Laob;->a(I)V

    .line 194
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, ""

    invoke-static {v5, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 197
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v5, 0x7d5

    invoke-direct {p0, v5}, Laob;->a(I)V

    .line 198
    const-string/jumbo v5, "MiguAuthHelper"

    const-string/jumbo v8, "login: no mobile internet,no need request"

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 204
    const-string/jumbo v0, "MiguAuthHelper"

    const-string/jumbo v1, "login: get Migu Token start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Laob;->c:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Laob;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Laob;->c:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    .line 208
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Laob;->a(Z)V

    .line 209
    iget-object v0, p0, Laob;->q:Laob$a;

    if-eqz v0, :cond_1

    .line 210
    const-string/jumbo v0, "MiguAuthHelper"

    const-string/jumbo v1, "add time out handler"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Laob;->q:Laob$a;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Laob$a;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    :cond_1
    iget-object v0, p0, Laob;->c:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const-string/jumbo v1, "20401801"

    const-string/jumbo v2, "985E24BC7CE25174"

    const/4 v3, 0x0

    const-string/jumbo v4, "wap"

    new-instance v5, Laob$1;

    invoke-direct {v5, p0}, Laob$1;-><init>(Laob;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    .line 239
    return-void
.end method
