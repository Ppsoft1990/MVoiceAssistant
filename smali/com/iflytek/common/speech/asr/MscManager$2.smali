.class Lcom/iflytek/common/speech/asr/MscManager$2;
.super Ljava/lang/Object;
.source "MscManager.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/speech/asr/MscManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/speech/asr/MscManager;


# direct methods
.method constructor <init>(Lcom/iflytek/common/speech/asr/MscManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 873
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 815
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 2
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 852
    const-string/jumbo v0, "MscManager"

    const-string/jumbo v1, "onDownloadCustomData not deal"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 869
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 865
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
    .line 861
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
    .line 857
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
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
    .line 878
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onSpeechTimeout()V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 4
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorId"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 826
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 827
    if-nez p3, :cond_0

    .line 828
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v0}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v1}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    .line 829
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 828
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v0}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v1}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    .line 832
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 831
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 836
    :cond_1
    if-nez p3, :cond_2

    .line 837
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v0}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v1}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 838
    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 837
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v0}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager$2;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v1}, Lcom/iflytek/common/speech/asr/MscManager;->k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    .line 841
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 840
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 818
    return-void
.end method
