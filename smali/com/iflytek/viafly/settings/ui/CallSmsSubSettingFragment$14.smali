.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$14;
.super Ljava/lang/Object;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$14;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 2541
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$14;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->stopPlay()V

    .line 2543
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 2536
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 2532
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 2547
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 2551
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 2527
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 2555
    return-void
.end method
