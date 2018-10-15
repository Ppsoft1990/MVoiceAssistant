.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 1604
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    .line 1606
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1607
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 1599
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 1592
    const-string/jumbo v0, "SmsShowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayCompletedCallBack | error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    .line 1594
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1595
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 1611
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 1615
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1588
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 1619
    return-void
.end method
