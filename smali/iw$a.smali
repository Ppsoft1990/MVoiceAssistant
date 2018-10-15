.class Liw$a;
.super Ljava/lang/Object;
.source "TextUnderstanderBinder.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liw;

.field private b:Lsq;


# direct methods
.method public constructor <init>(Liw;Lsq;)V
    .locals 0
    .param p2, "ext"    # Lsq;

    .prologue
    .line 131
    iput-object p1, p0, Liw$a;->a:Liw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Liw$a;->b:Lsq;

    .line 133
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Liw$a;->b:Lsq;

    .line 136
    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 203
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 0
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 155
    return-void
.end method

.method public onPartialResults(Ljava/util/List;)V
    .locals 0
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
    .line 186
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onResults(Ljava/util/List;)V
    .locals 0
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
    .line 160
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onSearchResults(Ljava/util/List;I)V
    .locals 5
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
    .line 164
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v2, p0, Liw$a;->a:Liw;

    invoke-static {v2, p1}, Liw;->a(Liw;Ljava/util/List;)Lcom/iflytek/speech/UnderstanderResult;

    move-result-object v1

    .line 165
    .local v1, "tagRes":Lcom/iflytek/speech/UnderstanderResult;
    iget-object v2, p0, Liw$a;->b:Lsq;

    if-nez v2, :cond_0

    .line 166
    const-string/jumbo v2, "SPEECH_TextUnderstanderBinder"

    const-string/jumbo v3, "onSearchResults canceled."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    const-string/jumbo v2, "SPEECH_TextUnderstanderBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSearchResults "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-lez p2, :cond_1

    .line 172
    iget-object v2, p0, Liw$a;->b:Lsq;

    invoke-static {p2}, Liq;->a(I)I

    move-result v3

    invoke-interface {v2, v3}, Lsq;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SPEECH_TextUnderstanderBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Liw$a;->b:Lsq;

    invoke-interface {v2, v1}, Lsq;->a(Lcom/iflytek/speech/UnderstanderResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SPEECH_TextUnderstanderBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSpeechTimeout()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 0
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 150
    return-void
.end method
