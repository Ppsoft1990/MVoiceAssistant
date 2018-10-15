.class Lcom/iflytek/framework/business/speech/SpeechHandler$3;
.super Ljava/lang/Object;
.source "SpeechHandler.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/speech/SpeechHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/speech/SpeechHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$3;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 522
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "onInterruptedCallback "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$3;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$800(Lcom/iflytek/framework/business/speech/SpeechHandler;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$3;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->stop()V

    .line 526
    :cond_0
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 517
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "onPlayBeginCallBack "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 509
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "onPlayCompletedCallBack "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$3;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$800(Lcom/iflytek/framework/business/speech/SpeechHandler;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$3;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendEmptyMessage(I)Z

    .line 513
    :cond_0
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 505
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 538
    return-void
.end method
