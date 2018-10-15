.class public final Lmo;
.super Lld;


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lld;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmo;->f:Z

    return-void
.end method

.method static synthetic a(Lmo;)Lla;
    .locals 1

    iget-object v0, p0, Lmo;->d:Lla;

    return-object v0
.end method

.method static synthetic b(Lmo;)Lla;
    .locals 1

    iget-object v0, p0, Lmo;->d:Lla;

    return-object v0
.end method

.method static synthetic c(Lmo;)Lla;
    .locals 1

    iget-object v0, p0, Lmo;->d:Lla;

    return-object v0
.end method

.method static synthetic d(Lmo;)Lla;
    .locals 1

    iget-object v0, p0, Lmo;->d:Lla;

    return-object v0
.end method

.method static synthetic e(Lmo;)Lla;
    .locals 1

    iget-object v0, p0, Lmo;->d:Lla;

    return-object v0
.end method

.method static synthetic f(Lmo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmo;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lmo;)Z
    .locals 1

    iget-boolean v0, p0, Lmo;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkq;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lmo;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lmo;->a:Lmc;

    const-string/jumbo v3, "cmd"

    invoke-virtual {v1, v3, p1}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmo;->a:Lmc;

    const-string/jumbo v3, "auth_id"

    invoke-virtual {v1, v3, p2}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lku;

    iget-object v3, p0, Lmo;->b:Landroid/content/Context;

    const-string/jumbo v4, "manager"

    invoke-virtual {p0, v4}, Lmo;->b(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lku;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iget-object v3, p0, Lmo;->a:Lmc;

    new-instance v4, Lkv;

    invoke-direct {v4, p3}, Lkv;-><init>(Lkq;)V

    invoke-virtual {v1, v3, v4}, Lku;->a(Lmc;Lkv;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x5207

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lkr;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lmo;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lmo;->a:Lmc;

    const-string/jumbo v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lmc;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmo;->f:Z

    iget-object v0, p0, Lmo;->d:Lla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmo;->d:Lla;

    invoke-virtual {v0}, Lla;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmo;->d:Lla;

    iget-object v3, p0, Lmo;->a:Lmc;

    const-string/jumbo v4, "isv_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmc;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lla;->a(Z)V

    :cond_0
    new-instance v0, Lkx;

    iget-object v3, p0, Lmo;->b:Landroid/content/Context;

    iget-object v4, p0, Lmo;->a:Lmc;

    const-string/jumbo v5, "verify"

    invoke-virtual {p0, v5}, Lmo;->b(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lkx;-><init>(Landroid/content/Context;Lmc;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lmo;->d:Lla;

    iget-object v0, p0, Lmo;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lmo;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lls;->a(Landroid/content/Context;Ljava/lang/Boolean;)Z

    iget-object v0, p0, Lmo;->d:Lla;

    check-cast v0, Lkx;

    new-instance v3, Lmp;

    invoke-direct {v3, p0, p1}, Lmp;-><init>(Lmo;Lkr;)V

    invoke-virtual {v0, v3}, Lkx;->a(Lkr;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    :try_start_1
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x5207

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lkq;)V
    .locals 2

    new-instance v0, Lkt;

    iget-object v1, p0, Lmo;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkt;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lmo;->a:Lmc;

    invoke-virtual {v0, v1}, Lkt;->a(Lmc;)Z

    invoke-virtual {v0, p1}, Lkt;->a(Lkq;)I

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v1, p0, Lmo;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmo;->d:Lla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmo;->d:Lla;

    check-cast v0, Lkx;

    invoke-virtual {v0}, Lkx;->a()Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lmo;->b()Z

    move-result v0

    return v0
.end method
