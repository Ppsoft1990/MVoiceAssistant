.class Lcom/iflytek/viafly/ui/LocatProgressDialog$2;
.super Ljava/lang/Object;
.source "LocatProgressDialog.java"

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/LocatProgressDialog;->startTextSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/LocatProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 183
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 0
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I

    .prologue
    .line 224
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 216
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
    .line 212
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
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
    .line 208
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onSearchResults(Ljava/util/List;I)V
    .locals 3
    .param p2, "error"    # I
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
    .line 195
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$402(Lcom/iflytek/viafly/ui/LocatProgressDialog;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$400(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$500(Lcom/iflytek/viafly/ui/LocatProgressDialog;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V

    .line 198
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTextSearch onResults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$400(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$300(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTextSearch error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$300(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSpeechTimeout()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 187
    return-void
.end method
