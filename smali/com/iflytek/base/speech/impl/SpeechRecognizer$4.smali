.class Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;


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
    .line 2101
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWakeBuffer(Ljava/lang/String;IILjava/util/List;I)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "currentCm"    # I
    .param p3, "normalCm"    # I
    .param p5, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 2123
    .local p4, "data":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljo;->a(Ljava/lang/String;IILjava/util/List;I)V

    .line 2126
    :cond_0
    return-void
.end method

.method public onWakeError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 2105
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;->stop()V

    .line 2106
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 2107
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIvwListener onIvwError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    return-void
.end method

.method public onWakeResult(Ljava/lang/String;I)V
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "currentCm"    # I

    .prologue
    .line 2112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    .local v0, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Ljn;->a(Ljava/util/List;Ljava/lang/String;I)I

    .line 2114
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljava/util/List;Z)V

    .line 2115
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIvwListener onIvwResult OK word="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 2118
    return-void
.end method
