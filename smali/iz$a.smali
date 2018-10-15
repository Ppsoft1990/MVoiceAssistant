.class Liz$a;
.super Ljava/lang/Object;
.source "ViaSpeechBinder.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liz;

.field private final b:Lkl;


# direct methods
.method public constructor <init>(Liz;Lkl;)V
    .locals 0
    .param p2, "ext"    # Lkl;

    .prologue
    .line 182
    iput-object p1, p0, Liz$a;->a:Liz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Liz$a;->b:Lkl;

    .line 184
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Liz$a;->b:Lkl;

    invoke-interface {v1}, Lkl;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 221
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 3
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Liz$a;->b:Lkl;

    invoke-interface {v1, p1, p2}, Lkl;->a([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Liz$a;->b:Lkl;

    invoke-interface {v1}, Lkl;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Liz$a;->b:Lkl;

    invoke-interface {v1, p1}, Lkl;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 260
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v2, p0, Liz$a;->a:Liz;

    invoke-static {v2, p1}, Liz;->a(Liz;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 262
    .local v1, "tagRes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    :try_start_0
    iget-object v2, p0, Liz$a;->b:Lkl;

    invoke-interface {v2, v1}, Lkl;->b(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SPEECH_SpeechBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SPEECH_SpeechBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 236
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v2, p0, Liz$a;->a:Liz;

    invoke-static {v2, p1}, Liz;->a(Liz;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 238
    .local v1, "tagRes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    :try_start_0
    iget-object v2, p0, Liz$a;->b:Lkl;

    invoke-interface {v2, v1}, Lkl;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SPEECH_SpeechBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SPEECH_SpeechBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSearchResults(Ljava/util/List;I)V
    .locals 4
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
    .line 248
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v2, p0, Liz$a;->a:Liz;

    invoke-static {v2, p1}, Liz;->a(Liz;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 250
    .local v1, "tagRes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    :try_start_0
    iget-object v2, p0, Liz$a;->b:Lkl;

    invoke-interface {v2, v1, p2}, Lkl;->a(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SPEECH_SpeechBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SPEECH_SpeechBinder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSpeechTimeout()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 3
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Liz$a;->b:Lkl;

    invoke-interface {v1, p1, p2, p3}, Lkl;->a(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onVolumeChanged(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Liz$a;->b:Lkl;

    invoke-interface {v1, p1}, Lkl;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
