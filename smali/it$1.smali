.class Lit$1;
.super Ljava/lang/Object;
.source "SpeechRecognizerBinder.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit;


# direct methods
.method constructor <init>(Lit;)V
    .locals 0
    .param p1, "this$0"    # Lit;

    .prologue
    .line 374
    iput-object p1, p0, Lit$1;->a:Lit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddLexiconFinish(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v5, p0, Lit$1;->a:Lit;

    invoke-static {v5}, Lit;->a(Lit;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_LEX"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 379
    .local v4, "mExtListener":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 380
    .local v3, "ext":Lsl;
    if-eqz v4, :cond_1

    :try_start_0
    instance-of v5, v4, Lsl;

    if-eqz v5, :cond_1

    .line 382
    move-object v0, v4

    check-cast v0, Lsl;

    move-object v3, v0

    .line 383
    const/4 v2, 0x0

    .line 384
    .local v2, "error":I
    if-gtz p2, :cond_0

    .line 385
    const/16 v2, 0x55f6

    .line 387
    :cond_0
    const-string/jumbo v5, ""

    invoke-static {v2}, Liq;->a(I)I

    move-result v6

    invoke-interface {v3, v5, v6}, Lsl;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    .end local v2    # "error":I
    :cond_1
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SPEECH_RecognizerBinder"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 391
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "SPEECH_RecognizerBinder"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBuildFinish(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v5, p0, Lit$1;->a:Lit;

    invoke-static {v5}, Lit;->a(Lit;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_GRM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 400
    .local v3, "mExtListener":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 401
    .local v2, "ext":Lsk;
    if-eqz v3, :cond_1

    :try_start_0
    instance-of v5, v3, Lsk;

    if-eqz v5, :cond_1

    .line 403
    move-object v0, v3

    check-cast v0, Lsk;

    move-object v2, v0

    .line 404
    invoke-static {p2}, Liq;->a(I)I

    move-result v4

    .line 405
    .local v4, "ret":I
    const/16 v5, 0x9

    if-ne p2, v5, :cond_0

    .line 406
    const/16 v4, 0x55f6

    .line 408
    :cond_0
    const-string/jumbo v5, ""

    invoke-interface {v2, v5, v4}, Lsk;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    .end local v4    # "ret":I
    :cond_1
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SPEECH_RecognizerBinder"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 412
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "SPEECH_RecognizerBinder"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onInitFinish(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 420
    return-void
.end method
