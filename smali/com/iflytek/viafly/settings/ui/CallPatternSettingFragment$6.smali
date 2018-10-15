.class Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$6;
.super Ljava/lang/Object;
.source "CallPatternSettingFragment.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$900(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$900(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$900(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;

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

    .line 449
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 444
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 471
    return-void
.end method
