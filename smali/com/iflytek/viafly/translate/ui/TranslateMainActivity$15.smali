.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 851
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 832
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onPlayCompletedCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 837
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 854
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 857
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 817
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 860
    return-void
.end method
