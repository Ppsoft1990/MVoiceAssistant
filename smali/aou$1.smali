.class Laou$1;
.super Ljava/util/TimerTask;
.source "SMSCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laou;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laou;


# direct methods
.method constructor <init>(Laou;)V
    .locals 0
    .param p1, "this$0"    # Laou;

    .prologue
    .line 94
    iput-object p1, p0, Laou$1;->a:Laou;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 97
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-virtual {v1}, Laou;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Timer Running--->"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-virtual {v1}, Laou;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-virtual {v1}, Laou;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "not receive sent success callback in two minutes."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Laou$1;->a:Laou;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Laou;->a(Laou;Z)Z

    .line 101
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-virtual {v1}, Laou;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<------\u7ed3\u675f------>"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-virtual {v1}, Laou;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IsScheduleRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laou$1;->a:Laou;

    invoke-static {v3}, Laou;->a(Laou;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-static {v1}, Laou;->b(Laou;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    .line 106
    :goto_1
    :try_start_0
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-static {v1}, Laou;->b(Laou;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v3, p0, Laou$1;->a:Laou;

    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-static {v1}, Laou;->b(Laou;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laor;

    invoke-static {v3, v1}, Laou;->a(Laou;Laor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-virtual {v1}, Laou;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Timer InterruptedException."

    invoke-static {v1, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    iget-object v1, p0, Laou$1;->a:Laou;

    invoke-static {v1}, Laou;->e(Laou;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Laou$1$1;

    invoke-direct {v2, p0}, Laou$1$1;-><init>(Laou$1;)V

    new-instance v3, Ljava/util/Date;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 116
    invoke-virtual {v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    goto :goto_0
.end method
