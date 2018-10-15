.class Laop$2;
.super Ljava/lang/Object;
.source "SmsBusinessManager.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laop;


# direct methods
.method constructor <init>(Laop;)V
    .locals 0
    .param p1, "this$0"    # Laop;

    .prologue
    .line 488
    iput-object p1, p0, Laop$2;->a:Laop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 4

    .prologue
    .line 546
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "onInterruptedCallback"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->g(Laop;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 548
    :try_start_0
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->h(Laop;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v3, "end read | thread notify"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Laop$2;->a:Laop;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Laop;->a(Laop;Z)Z

    .line 551
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->g(Laop;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 552
    iget-object v1, p0, Laop$2;->a:Laop;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Laop;->b(Laop;Z)Z

    .line 554
    :cond_0
    const-string/jumbo v0, "com.iflytek.cmcc.END_READ_RECEIVE_SMS"

    .line 555
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 556
    monitor-exit v2

    .line 557
    return-void

    .line 556
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlayBeginCallBack()V
    .locals 4

    .prologue
    .line 511
    const-string/jumbo v0, "SmsBusinessManager"

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Laop$2;->a:Laop;

    invoke-static {v0}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhq;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Laop$2;->a:Laop;

    invoke-static {v0}, Laop;->j(Laop;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Laop$2$1;

    invoke-direct {v1, p0}, Laop$2$1;-><init>(Laop$2;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 542
    :cond_0
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 495
    const-string/jumbo v1, "SmsBusinessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlayCompletedCallBack | error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->g(Laop;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 497
    :try_start_0
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->h(Laop;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v3, "end read | thread notify"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Laop$2;->a:Laop;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Laop;->a(Laop;Z)Z

    .line 500
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->g(Laop;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 502
    :cond_0
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhq;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    const-string/jumbo v0, "com.iflytek.cmcc.END_READ_RECEIVE_SMS"

    .line 504
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 506
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 491
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 569
    return-void
.end method
