.class Lanl$1;
.super Ljava/lang/Object;
.source "ListeningManager.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanl;


# direct methods
.method constructor <init>(Lanl;)V
    .locals 0
    .param p1, "this$0"    # Lanl;

    .prologue
    .line 66
    iput-object p1, p0, Lanl$1;->a:Lanl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 4

    .prologue
    .line 144
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->e(Lanl;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lanl$1;->a:Lanl;

    iget-object v1, p0, Lanl$1;->a:Lanl;

    invoke-static {v1}, Lanl;->f(Lanl;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "saveAudio"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lanl;->b(Lanl;Z)Z

    .line 150
    const-string/jumbo v0, "ListeningManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBeginningOfSpeech mNeedSaveListeningRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanl$1;->a:Lanl;

    invoke-static {v2}, Lanl;->a(Lanl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lanl$1;->a:Lanl;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lanl;->a(Lanl;I)I

    .line 153
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInRecodingState()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "mIATStatus is not start reco refer "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-virtual {v0}, Lanl;->stop()V

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 73
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->a(Lanl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lank;->a()Lank;

    move-result-object v0

    invoke-virtual {v0, p1}, Lank;->a([B)J

    .line 76
    :cond_0
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 0
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 173
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "onEndOfSpeech "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->c(Lanl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->d(Lanl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    const-string/jumbo v1, "1015"

    invoke-virtual {v0, v1, v2}, Lvr;->a(Ljava/lang/String;I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0, v2}, Lanl;->a(Lanl;Z)Z

    .line 139
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-virtual {v0}, Lanl;->stopRecording()V

    .line 140
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 123
    const-string/jumbo v0, "ListeningManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<<------------------------>>>onError enter| error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lank;->a()Lank;

    move-result-object v0

    invoke-virtual {v0}, Lank;->b()V

    .line 128
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0, p1}, Lanl;->b(Lanl;I)V

    .line 129
    return-void
.end method

.method public onPartialResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "partList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const-string/jumbo v2, "ListeningManager"

    const-string/jumbo v3, "onPartialResults enter "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo v2, "ListeningManager"

    const-string/jumbo v3, "MSG_PART_RESULT"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "partResults":[Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v2, p0, Lanl$1;->a:Lanl;

    invoke-static {v2}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    aput-object v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lanl$1;->a:Lanl;

    invoke-static {v2}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 119
    :cond_1
    return-void
.end method

.method public onResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "results":[Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v2, p0, Lanl$1;->a:Lanl;

    invoke-static {v2}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    aput-object v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lanl$1;->a:Lanl;

    invoke-static {v2}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 100
    iget-object v2, p0, Lanl$1;->a:Lanl;

    invoke-static {v2}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIAfterResult()V

    .line 102
    :cond_1
    iget-object v2, p0, Lanl$1;->a:Lanl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lanl;->a(Lanl;I)I

    .line 103
    return-void
.end method

.method public onSearchResults(Ljava/util/List;I)V
    .locals 1
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-lez p2, :cond_0

    .line 166
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0, p2}, Lanl;->b(Lanl;I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0, p1}, Lanl;->a(Lanl;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onSpeechTimeout()V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "<<<------------------------>>>onSpeechTimeout"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lanl$1;->a:Lanl;

    invoke-static {v0}, Lanl;->b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInTimeout()V

    .line 181
    :cond_0
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 0
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorId"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 80
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "onVolumeChanged"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
