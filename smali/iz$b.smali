.class Liz$b;
.super Ljava/lang/Object;
.source "ViaSpeechBinder.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Liz;

.field private final b:Lkn;


# direct methods
.method public constructor <init>(Liz;Lkn;)V
    .locals 0
    .param p2, "ext"    # Lkn;

    .prologue
    .line 305
    iput-object p1, p0, Liz$b;->a:Liz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Liz$b;->b:Lkn;

    .line 307
    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 3

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Liz$b;->b:Lkn;

    invoke-interface {v1}, Lkn;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPlayBeginCallBack()V
    .locals 3

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Liz$b;->b:Lkn;

    invoke-interface {v1}, Lkn;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Liz$b;->b:Lkn;

    invoke-interface {v1, p1}, Lkn;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Liz$b;->b:Lkn;

    invoke-interface {v1, p1}, Lkn;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 318
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 363
    return-void
.end method
