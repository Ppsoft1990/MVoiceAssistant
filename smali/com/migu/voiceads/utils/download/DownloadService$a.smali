.class Lcom/migu/voiceads/utils/download/DownloadService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/voiceads/utils/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/migu/voiceads/utils/download/DownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/migu/voiceads/utils/download/DownloadService;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->b:I

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->c:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->c()V

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->c:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->e()V

    return-void
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/DownloadService;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/migu/voiceads/utils/download/b/c;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/migu/voiceads/utils/download/b/c;->l()J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/migu/voiceads/utils/download/b/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/migu/voiceads/utils/download/b/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/DownloadService;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/migu/voiceads/utils/download/b/c;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/DownloadService;Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/DownloadService;J)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/migu/voiceads/utils/download/DownloadService;->b(Lcom/migu/voiceads/utils/download/DownloadService;J)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/migu/voiceads/utils/download/DownloadService$c;

    iget v2, v1, Lcom/migu/voiceads/utils/download/DownloadService$c;->c:I

    iget-object v3, v1, Lcom/migu/voiceads/utils/download/DownloadService$c;->d:Ljava/lang/String;

    iget-wide v4, v1, Lcom/migu/voiceads/utils/download/DownloadService$c;->a:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/DownloadService;ILjava/lang/String;J)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/migu/voiceads/utils/download/b/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/DownloadService;Ljava/lang/String;J)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/migu/voiceads/utils/download/b/c;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/migu/voiceads/utils/download/b/c;->a()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/DownloadService;JIJ)V

    goto :goto_0

    :sswitch_7
    invoke-static {v0}, Lcom/migu/voiceads/utils/download/DownloadService;->b(Lcom/migu/voiceads/utils/download/DownloadService;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0xb -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x16 -> :sswitch_7
    .end sparse-switch
.end method
