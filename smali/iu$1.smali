.class Liu$1;
.super Ljava/lang/Object;
.source "SpeechSynthesizerBinder.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liu;->a(Landroid/content/Intent;Lso;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lix;

.field final synthetic b:Lso;

.field final synthetic c:Liu;


# direct methods
.method constructor <init>(Liu;Lix;Lso;)V
    .locals 0
    .param p1, "this$0"    # Liu;

    .prologue
    .line 168
    iput-object p1, p0, Liu$1;->c:Liu;

    iput-object p2, p0, Liu$1;->a:Lix;

    iput-object p3, p0, Liu$1;->b:Lso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Liu$1;->a:Lix;

    invoke-virtual {v1}, Lix;->b()V

    .line 182
    const-string/jumbo v1, "SPEECH_SynthesizerBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "synthesizeToUrl onCompleted code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Liu$1;->b:Lso;

    iget-object v2, p0, Liu$1;->a:Lix;

    invoke-virtual {v2}, Lix;->a()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {p1}, Liq;->a(I)I

    move-result v3

    .line 183
    invoke-interface {v1, v2, v3}, Lso;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPEECH_SynthesizerBinder"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 204
    return-void
.end method
