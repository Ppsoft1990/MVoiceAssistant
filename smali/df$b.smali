.class Ldf$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ldf;


# direct methods
.method private constructor <init>(Ldf;)V
    .locals 0

    iput-object p1, p0, Ldf$b;->a:Ldf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldf;Ldg;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf$b;-><init>(Ldf;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->h(Ldf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldf$b;->a:Ldf;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldf;->b(Ldf;Z)Z

    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->d(Ldf;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->i(Ldf;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->i(Ldf;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->j(Ldf;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->k(Ldf;)Ldf$b;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldf$b;->a:Ldf;

    new-instance v2, Ldf$b;

    iget-object v3, p0, Ldf$b;->a:Ldf;

    invoke-direct {v2, v3}, Ldf$b;-><init>(Ldf;)V

    invoke-static {v0, v2}, Ldf;->a(Ldf;Ldf$b;)Ldf$b;

    :cond_4
    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->c(Ldf;)Ldf$a;

    move-result-object v0

    iget-object v2, p0, Ldf$b;->a:Ldf;

    invoke-static {v2}, Ldf;->k(Ldf;)Ldf$b;

    move-result-object v2

    iget-object v3, p0, Ldf$b;->a:Ldf;

    invoke-static {v3}, Ldf;->f(Ldf;)Lcom/baidu/location/LocationClientOption;

    move-result-object v3

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Ldf$a;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ldf$b;->a:Ldf;

    invoke-static {v0}, Ldf;->c(Ldf;)Ldf$a;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
