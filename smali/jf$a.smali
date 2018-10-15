.class Ljf$a;
.super Ljava/lang/Object;
.source "SpeechSynthesizerAdapter.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljf;

.field private b:Lcom/iflytek/yd/speech/ITtsListener;


# direct methods
.method public constructor <init>(Ljf;Lcom/iflytek/yd/speech/ITtsListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/iflytek/yd/speech/ITtsListener;

    .prologue
    .line 94
    iput-object p1, p0, Ljf$a;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    .line 96
    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ITtsListener;->onInterruptedCallback()V

    .line 124
    :cond_0
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ITtsListener;->onPlayBeginCallBack()V

    .line 110
    :cond_0
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 114
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    invoke-interface {v0, p1}, Lcom/iflytek/yd/speech/ITtsListener;->onPlayCompletedCallBack(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ITtsListener;->onPlayPauseCallBack()V

    .line 131
    :cond_0
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ITtsListener;->onPlayResumeCallBack()V

    .line 138
    :cond_0
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 100
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ljf$a;->b:Lcom/iflytek/yd/speech/ITtsListener;

    invoke-interface {v0, p1}, Lcom/iflytek/yd/speech/ITtsListener;->onProgressCallBack(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 142
    return-void
.end method
