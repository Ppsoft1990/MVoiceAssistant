.class Liv$a;
.super Ljava/lang/Object;
.source "SpeechUnderstanderBinder.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liv;

.field private final b:Lsn;


# direct methods
.method public constructor <init>(Liv;Lsn;)V
    .locals 0
    .param p2, "ext"    # Lsn;

    .prologue
    .line 141
    iput-object p1, p0, Liv$a;->a:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Liv$a;->b:Lsn;

    .line 143
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Liv$a;->b:Lsn;

    invoke-interface {v1}, Lsn;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 228
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 0
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 222
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Liv$a;->b:Lsn;

    invoke-interface {v1}, Lsn;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 180
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    iget-object v1, p0, Liv$a;->b:Lsn;

    invoke-static {p1}, Liq;->a(I)I

    move-result v2

    invoke-interface {v1, v2}, Lsn;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 211
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onResults(Ljava/util/List;)V
    .locals 5
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
    .line 192
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v2, p0, Liv$a;->a:Liv;

    invoke-static {v2, p1}, Liv;->a(Liv;Ljava/util/List;)Lcom/iflytek/speech/UnderstanderResult;

    move-result-object v1

    .line 194
    .local v1, "tagRes":Lcom/iflytek/speech/UnderstanderResult;
    :try_start_0
    const-string/jumbo v2, "SPEECH_UnderstanderBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResults "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Liv$a;->b:Lsn;

    invoke-interface {v2, v1}, Lsn;->a(Lcom/iflytek/speech/UnderstanderResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SPEECH_UnderstanderBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SPEECH_UnderstanderBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSearchResults(Ljava/util/List;I)V
    .locals 0
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
    .line 206
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onSpeechTimeout()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 0
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 217
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Liv$a;->b:Lsn;

    invoke-interface {v1, p1}, Lsn;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_UnderstanderBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
