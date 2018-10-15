.class Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;
.super Ljava/lang/Object;
.source "HotWordUpLoadingFragment.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 324
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 0
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 365
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 358
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
    .line 355
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
    .line 351
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
    .line 347
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onSpeechTimeout()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 5
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 330
    const-string/jumbo v1, "HotWordUpLoadingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUploadCustomData type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-nez p2, :cond_0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$600(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Ljava/util/HashSet;)V

    .line 335
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$800(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$800(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$800(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HotWordUpLoadingActivity"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 326
    return-void
.end method
