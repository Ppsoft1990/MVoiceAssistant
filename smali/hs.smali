.class public Lhs;
.super Ljava/lang/Object;
.source "SmsDbHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lht;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Landroid/os/HandlerThread;

.field private final f:Ljava/lang/String;

.field private g:Landroid/os/Handler;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lhs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhs;->a:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lhs;->b:Lht;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhs;->c:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhs;->d:Z

    .line 25
    iput-object v1, p0, Lhs;->e:Landroid/os/HandlerThread;

    .line 27
    const-string/jumbo v0, "SmsDbHelper_worker"

    iput-object v0, p0, Lhs;->f:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhs;->h:Z

    .line 34
    invoke-direct {p0}, Lhs;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SmsDbHelper_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhs;->e:Landroid/os/HandlerThread;

    .line 39
    iget-object v0, p0, Lhs;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lhs;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhs;->g:Landroid/os/Handler;

    .line 41
    iget-object v0, p0, Lhs;->e:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string/jumbo v0, "XT928"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "model":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->I8268:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->A630t:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->A378t:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->HTC_801e:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->HTC_BEE:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNG_9208:Ljava/lang/String;

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->LENOVO_S880I:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    const/4 v1, 0x1

    .line 125
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v1, p0, Lhs;->a:Ljava/lang/String;

    const-string/jumbo v2, "registerObserver"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    iget-object v2, p0, Lhs;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    invoke-direct {p0}, Lhs;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lhs;->a:Ljava/lang/String;

    const-string/jumbo v3, "startSmsObserver | phone model not allowed to start"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    monitor-exit v2

    .line 89
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-boolean v1, p0, Lhs;->h:Z

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lhs;->a:Ljava/lang/String;

    const-string/jumbo v3, "registerObserver | already regist"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v2

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lhs;->a:Ljava/lang/String;

    const-string/jumbo v2, "registerObserver error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v1, Lht;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p1, v3}, Lht;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lhs;->b:Lht;

    .line 68
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lib$b;->b:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lhs;->b:Lht;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    :goto_1
    iget-object v1, p0, Lhs;->g:Landroid/os/Handler;

    new-instance v3, Lhs$1;

    invoke-direct {v3, p0, p1}, Lhs$1;-><init>(Lhs;Landroid/content/Context;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhs;->h:Z

    .line 85
    monitor-exit v2

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lib$b;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lhs;->b:Lht;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
