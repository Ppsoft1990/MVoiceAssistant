.class Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 2088
    return-void
.end method

.method public onGetMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v0

    invoke-interface {v0}, Ljo;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResults(Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2091
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAitalkListener_onResults___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 2094
    return-void
.end method
