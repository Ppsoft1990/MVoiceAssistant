.class Lcom/iflytek/framework/business/speech/SpeechHandler$2;
.super Ljava/lang/Object;
.source "SpeechHandler.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/speech/SpeechHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/speech/SpeechHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 454
    const-string/jumbo v4, "SpeechHandler"

    const-string/jumbo v5, "onBeginningOfSpeech"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v4, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v4}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$800(Lcom/iflytek/framework/business/speech/SpeechHandler;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 460
    iget-object v4, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v4}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$500(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "web_scene"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "scene":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    iget-object v5, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v5}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$500(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_NEED_SAVE_RECORD_FILE"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$102(Lcom/iflytek/framework/business/speech/SpeechHandler;Z)Z

    .line 464
    iget-object v4, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    iget-object v5, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v5}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$100(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "sms"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$102(Lcom/iflytek/framework/business/speech/SpeechHandler;Z)Z

    .line 467
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$100(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$900(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v2, v3}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$902(Lcom/iflytek/framework/business/speech/SpeechHandler;Z)Z

    .line 469
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$1000(Lcom/iflytek/framework/business/speech/SpeechHandler;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$300(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/yd/audio/AmrWbEncode;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/yd/audio/AmrWbEncode;->open(Ljava/lang/String;I)I

    .line 472
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v2, v7}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendEmptyMessage(I)Z

    .line 478
    .end local v1    # "scene":Ljava/lang/String;
    :goto_0
    return-void

    .line 474
    :cond_2
    const-string/jumbo v2, "SpeechHandler"

    const-string/jumbo v3, "mIATStatus is not start reco refer "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->stop()V

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 383
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$100(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$200(Lcom/iflytek/framework/business/speech/SpeechHandler;)I

    move-result v0

    const v1, 0x3e800

    if-gt v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$200(Lcom/iflytek/framework/business/speech/SpeechHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$300(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/yd/audio/AmrWbEncode;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lcom/iflytek/yd/audio/AmrWbEncode;->write([BI)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$202(Lcom/iflytek/framework/business/speech/SpeechHandler;I)I

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$400(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v0

    instance-of v0, v0, Lcom/iflytek/framework/plugin/interfaces/starvoice/StarVoiceSpeechHandlerCallback;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$400(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/interfaces/starvoice/StarVoiceSpeechHandlerCallback;

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/framework/plugin/interfaces/starvoice/StarVoiceSpeechHandlerCallback;->updateUIInRecordData([BI)V

    .line 394
    :cond_1
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 0
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 492
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 435
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "onEndOfSpeech enter "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->speech:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$600(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$700(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$000(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    const-string/jumbo v1, "1015"

    invoke-virtual {v0, v1, v2}, Lvr;->a(Ljava/lang/String;I)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0, v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$702(Lcom/iflytek/framework/business/speech/SpeechHandler;Z)Z

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$500(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    .line 444
    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$500(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "audio_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$802(Lcom/iflytek/framework/business/speech/SpeechHandler;I)I

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->stopRecording()V

    .line 450
    return-void
.end method

.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 428
    const-string/jumbo v1, "SpeechHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<<<------------------------>>>onError enter| error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 430
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendMessage(Landroid/os/Message;)Z

    .line 431
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
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v3, 0x0

    .line 421
    const-string/jumbo v1, "SpeechHandler"

    const-string/jumbo v2, "onPartialResults enter "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendMessage(Landroid/os/Message;)Z

    .line 424
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
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v3, 0x0

    .line 415
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    return-void
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
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v3, 0x0

    .line 482
    if-lez p2, :cond_0

    .line 483
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p2, v3}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 484
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendMessage(Landroid/os/Message;)Z

    .line 489
    :goto_0
    return-void

    .line 486
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 487
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onSpeechTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 496
    const-string/jumbo v1, "SpeechHandler"

    const-string/jumbo v2, "<<<------------------------>>>onSpeechTimeout"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3, v3}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendMessage(Landroid/os/Message;)Z

    .line 499
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 0
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorId"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 411
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 399
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$500(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    .line 400
    invoke-static {v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$500(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "audio_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    const-string/jumbo v1, "SpeechHandler"

    const-string/jumbo v2, "onVolumeChanged audio buffer mode, do nothing"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 406
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
