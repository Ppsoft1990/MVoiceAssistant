.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;
.super Ljava/lang/Object;
.source "ScheduleRingToneItemView.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;->c:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 3

    .prologue
    .line 585
    const-string/jumbo v0, "ScheduleRingToneItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayBeginCallBack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-boolean v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;->c:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    :cond_0
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 578
    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;->c:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    :cond_0
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 564
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 559
    return-void
.end method
