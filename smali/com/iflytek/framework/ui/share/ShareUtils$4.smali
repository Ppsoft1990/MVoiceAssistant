.class final Lcom/iflytek/framework/ui/share/ShareUtils$4;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/ui/share/ShareUtils;->checkImagePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/framework/ui/share/IShareResultListener;Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$shareId:Ljava/lang/String;

.field final synthetic val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;ILcom/iflytek/framework/ui/share/IShareResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    iput p3, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$type:I

    iput-object p4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    iput-object p5, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$module:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$tag:Ljava/lang/String;

    iput-object p7, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareId:Ljava/lang/String;

    iput-object p8, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 280
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    const v1, 0x927cd

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$200(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v6, 0x0

    const v8, 0x927d1

    .line 218
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$imagePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$imagePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$imagePath:Ljava/lang/String;

    iget v5, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$type:I

    invoke-static {v4, v5}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    invoke-interface {v4, v2}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$imagePath:Ljava/lang/String;

    const-string/jumbo v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    invoke-interface {v4, v6}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$module:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$tag:Ljava/lang/String;

    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareId:Ljava/lang/String;

    invoke-static {v4, v8, v5, v6, v7}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$200(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 234
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 236
    .local v3, "result":Z
    if-nez v3, :cond_3

    .line 237
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$loadImageListener:Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    invoke-interface {v4, v6}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$module:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$tag:Ljava/lang/String;

    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$shareId:Ljava/lang/String;

    invoke-static {v4, v8, v5, v6, v7}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$200(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v3    # "result":Z
    :cond_3
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$300(Landroid/content/Context;)V

    .line 242
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/ShareUtils$4;->val$imagePath:Ljava/lang/String;

    new-instance v6, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;

    invoke-direct {v6, p0, v2}, Lcom/iflytek/framework/ui/share/ShareUtils$4$1;-><init>(Lcom/iflytek/framework/ui/share/ShareUtils$4;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lazl;->a(Ljava/lang/String;Lbdd;)V

    goto :goto_0
.end method
