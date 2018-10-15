.class Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;
.super Ljava/lang/Object;
.source "CallPrivacySettingFragment.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 5

    .prologue
    .line 614
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$1100(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$110(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)I

    .line 619
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$002(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;I)I

    .line 620
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .line 621
    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    move-result-object v4

    .line 620
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    :cond_0
    :goto_0
    monitor-exit v1

    .line 627
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$202(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;Z)Z

    goto :goto_0

    .line 626
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
    .line 610
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/String;

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

    .line 594
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$1100(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$110(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)I

    .line 598
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$002(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;I)I

    .line 599
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .line 600
    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    move-result-object v4

    .line 599
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 601
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    :cond_0
    :goto_0
    monitor-exit v1

    .line 607
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$202(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;Z)Z

    goto :goto_0

    .line 606
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
    .line 630
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 590
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 636
    return-void
.end method
