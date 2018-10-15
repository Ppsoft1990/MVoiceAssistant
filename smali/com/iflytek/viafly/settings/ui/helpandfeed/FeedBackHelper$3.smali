.class Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;
.super Ljava/lang/Object;
.source "FeedBackHelper.java"

# interfaces
.implements Lvq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

.field final synthetic val$gzpath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->val$gzpath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlcFeedbackError(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->val$gzpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "tmpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    :cond_1
    return-void
.end method

.method public onBlcFeedbackResult(Lcom/iflytek/yd/business/BasicInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/iflytek/yd/business/BasicInfo;

    .prologue
    const/4 v4, 0x0

    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->val$gzpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "tmpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "tmpDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "speech.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v0    # "tmpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 239
    :cond_2
    return-void
.end method
