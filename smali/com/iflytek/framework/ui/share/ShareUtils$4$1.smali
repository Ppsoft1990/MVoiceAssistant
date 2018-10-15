.class Lcom/iflytek/framework/ui/share/ShareUtils$4$1;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/ui/share/ShareUtils$4;->onGranted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/ui/share/ShareUtils$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/ui/share/ShareUtils$4;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$500()V

    .line 271
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    const v1, 0x927c3

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$200(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->val$path:Ljava/lang/String;

    invoke-static {p3, v0}, Lbab;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 263
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$500()V

    .line 265
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$500()V

    .line 256
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    const v1, 0x927c2

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$200(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;->this$0:Lcom/iflytek/framework/ui/share/ShareUtils$4;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 250
    :cond_0
    return-void
.end method
