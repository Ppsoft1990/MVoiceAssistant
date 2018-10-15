.class public abstract Lla;
.super Landroid/os/Handler;


# instance fields
.field private a:Lmc;

.field private volatile b:Lcom/iflytek/cloud/a/b/c;

.field private c:Landroid/os/HandlerThread;

.field protected k:I

.field public l:I

.field protected m:Landroid/content/Context;

.field protected volatile n:Z

.field protected o:J

.field protected p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lla;->k:I

    const/16 v0, 0x3e80

    iput v0, p0, Lla;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lla;->m:Landroid/content/Context;

    new-instance v0, Lmc;

    invoke-direct {v0}, Lmc;-><init>()V

    iput-object v0, p0, Lla;->a:Lmc;

    iput-boolean v2, p0, Lla;->n:Z

    sget-object v0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/a/b/c;

    iput-object v0, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lla;->o:J

    const/16 v0, 0x4e20

    iput v0, p0, Lla;->p:I

    iput-object p2, p0, Lla;->c:Landroid/os/HandlerThread;

    iput-object p1, p0, Lla;->m:Landroid/content/Context;

    iput-boolean v2, p0, Lla;->n:Z

    return-void
.end method

.method private a(Landroid/os/Message;Lcom/iflytek/cloud/a/b/b;I)V
    .locals 2

    invoke-virtual {p0}, Lla;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->f:Lcom/iflytek/cloud/a/b/c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lla;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/a/b/c;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    sget-object v0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/b;

    if-ne p2, v0, :cond_2

    if-gtz p3, :cond_2

    invoke-virtual {p0, p1}, Lla;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/iflytek/cloud/a/b/c;->b:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0, v0}, Lla;->a(Lcom/iflytek/cloud/a/b/c;)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0, v0}, Lla;->a(Lcom/iflytek/cloud/a/b/c;)V

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0, v0}, Lla;->a(Lcom/iflytek/cloud/a/b/c;)V

    goto :goto_1

    :cond_2
    int-to-long v0, p3

    invoke-virtual {p0, p1, v0, v1}, Lla;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected final a(ILcom/iflytek/cloud/a/b/b;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lla;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lla;->a(Landroid/os/Message;Lcom/iflytek/cloud/a/b/b;I)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    sget-object v0, Lcom/iflytek/cloud/a/b/c;->f:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0, v0}, Lla;->a(Lcom/iflytek/cloud/a/b/c;)V

    const-string/jumbo v0, "MscHandler"

    const-string/jumbo v1, "clear all message"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lla;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lla;->m:Landroid/content/Context;

    invoke-static {v0}, Lll;->a(Landroid/content/Context;)Lll;

    move-result-object v0

    invoke-virtual {v0}, Lll;->a()V

    return-void
.end method

.method protected final declared-synchronized a(Lcom/iflytek/cloud/a/b/c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MscHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "curStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",setStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->f:Lcom/iflytek/cloud/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/a/b/c;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/iflytek/cloud/a/b/c;->f:Lcom/iflytek/cloud/a/b/c;

    if-ne p1, v0, :cond_0

    :cond_2
    const-string/jumbo v0, "MscHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStatus success="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lla;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lmc;)V
    .locals 1

    invoke-virtual {p1}, Lmc;->b()Lmc;

    move-result-object v0

    iput-object v0, p0, Lla;->a:Lmc;

    invoke-virtual {p0}, Lla;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lla;->n:Z

    const-string/jumbo v0, "MscHandler"

    const-string/jumbo v1, "clear all message"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lla;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lla;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lla;->a:Lmc;

    const-string/jumbo v1, "timeout"

    iget v2, p0, Lla;->p:I

    invoke-virtual {v0, v1, v2}, Lmc;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lla;->p:I

    iget-object v0, p0, Lla;->a:Lmc;

    const-string/jumbo v1, "sample_rate"

    iget v2, p0, Lla;->l:I

    invoke-virtual {v0, v1, v2}, Lmc;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lla;->l:I

    return-void
.end method

.method protected final b(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lla;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/b;->b:Lcom/iflytek/cloud/a/b/b;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lla;->a(Landroid/os/Message;Lcom/iflytek/cloud/a/b/b;I)V

    return-void
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 2

    sget-object v0, Lcom/iflytek/cloud/a/b/b;->b:Lcom/iflytek/cloud/a/b/b;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lla;->a(Landroid/os/Message;Lcom/iflytek/cloud/a/b/b;I)V

    return-void
.end method

.method protected final declared-synchronized b(Lcom/iflytek/cloud/SpeechError;)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, "MscHandler"

    const-string/jumbo v2, "clear all message"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lla;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lla;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/b;->b:Lcom/iflytek/cloud/a/b/b;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lla;->a(Landroid/os/Message;Lcom/iflytek/cloud/a/b/b;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lla;->a:Lmc;

    const-string/jumbo v1, "pte"

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lmc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lla;->a:Lmc;

    const-string/jumbo v1, "text_encoding"

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lmc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lla;->a:Lmc;

    const-string/jumbo v1, "rse"

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lmc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lla;->l:I

    return v0
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->f:Lcom/iflytek/cloud/a/b/c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/a/b/c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/a/b/c;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, p1}, Lla;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-virtual {p0, v0}, Lla;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lla;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MscHandler"

    const-string/jumbo v1, "clear all message"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lla;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lla;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lla;->c:Landroid/os/HandlerThread;

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e22

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2a

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lla;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lla;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string/jumbo v0, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lla;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e35

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lla;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string/jumbo v1, "MscHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lla;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch
.end method

.method protected final declared-synchronized i()Lcom/iflytek/cloud/a/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lla;->b:Lcom/iflytek/cloud/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Lmc;
    .locals 1

    iget-object v0, p0, Lla;->a:Lmc;

    return-object v0
.end method

.method protected final k()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/b;

    invoke-virtual {p0, v2}, Lla;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lla;->a(Landroid/os/Message;Lcom/iflytek/cloud/a/b/b;I)V

    return-void
.end method
