.class Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;
.super Ljava/lang/Object;
.source "SmsPrivacySettingFragment.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 5

    .prologue
    .line 598
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$800(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$900(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1000(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$910(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I

    .line 603
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$702(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;I)I

    .line 604
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .line 605
    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1100(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    move-result-object v4

    .line 604
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    :cond_0
    :goto_0
    monitor-exit v1

    .line 611
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1002(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Z)Z

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayCompletedCallBack| error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$800(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$900(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1000(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$910(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I

    .line 582
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$702(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;I)I

    .line 583
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .line 584
    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1100(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    move-result-object v4

    .line 583
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 585
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    :cond_0
    :goto_0
    monitor-exit v1

    .line 591
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1002(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Z)Z

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 574
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 620
    return-void
.end method
