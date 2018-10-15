.class Lawy$1;
.super Ljava/lang/Object;
.source "PersonalizedSynthesisVoiceManager.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawy;


# direct methods
.method constructor <init>(Lawy;)V
    .locals 0
    .param p1, "this$0"    # Lawy;

    .prologue
    .line 81
    iput-object p1, p0, Lawy$1;->a:Lawy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 3

    .prologue
    .line 121
    const-string/jumbo v0, "PersonalizedSynthesisVoiceManager"

    const-string/jumbo v1, "onInterruptedCallback() "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lawy$1;->a:Lawy;

    invoke-static {v0}, Lawy;->a(Lawy;)Lawy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lawy$1;->a:Lawy;

    invoke-static {v0}, Lawy;->a(Lawy;)Lawy$a;

    move-result-object v0

    iget-object v1, p0, Lawy$1;->a:Lawy;

    invoke-static {v1}, Lawy;->b(Lawy;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lawy$a;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lawy$1;->a:Lawy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lawy;->a(Lawy;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 126
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 101
    const-string/jumbo v1, "PersonalizedSynthesisVoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlayCompletedCallBack() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lawy$1;->a:Lawy;

    invoke-static {v1}, Lawy;->a(Lawy;)Lawy$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Ljl;->b()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "audioPath":Ljava/lang/String;
    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lawy$1;->a:Lawy;

    invoke-static {v1}, Lawy;->a(Lawy;)Lawy$a;

    move-result-object v1

    iget-object v2, p0, Lawy$1;->a:Lawy;

    invoke-static {v2}, Lawy;->b(Lawy;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lawy$a;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;Ljava/lang/String;)V

    .line 111
    .end local v0    # "audioPath":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lawy$1;->a:Lawy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lawy;->a(Lawy;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 113
    return-void

    .line 107
    .restart local v0    # "audioPath":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lawy$1;->a:Lawy;

    invoke-static {v1}, Lawy;->a(Lawy;)Lawy$a;

    move-result-object v1

    iget-object v2, p0, Lawy$1;->a:Lawy;

    invoke-static {v2}, Lawy;->b(Lawy;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lawy$a;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method
