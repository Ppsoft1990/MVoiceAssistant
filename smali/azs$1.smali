.class Lazs$1;
.super Ljava/lang/Object;
.source "PicUploadManager.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazs;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lazs;


# direct methods
.method constructor <init>(Lazs;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lazs;

    .prologue
    .line 86
    iput-object p1, p0, Lazs$1;->b:Lazs;

    iput-object p2, p0, Lazs$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    .line 108
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "PicUploadManager"

    const-string/jumbo v1, "no permission error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lazs$1;->b:Lazs;

    invoke-static {v0}, Lazs;->b(Lazs;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 110
    iget-object v0, p0, Lazs$1;->b:Lazs;

    const v1, 0x35b61

    invoke-static {v0, v1}, Lazs;->a(Lazs;I)V

    .line 111
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 5
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
    .line 89
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v1, p0, Lazs$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lazs$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lazs$1;->b:Lazs;

    invoke-static {v1}, Lazs;->a(Lazs;)Lcom/iflytek/viafly/im/ImageUtils;

    move-result-object v1

    iget-object v2, p0, Lazs$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/im/ImageUtils;->isPicSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lazs$1;->b:Lazs;

    iget-object v2, p0, Lazs$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lazs$1;->a:Ljava/lang/String;

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazs;->a(Lazs;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lazs$1;->b:Lazs;

    iget-object v2, p0, Lazs$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lazs;->b(Lazs;Ljava/lang/String;)V

    .line 104
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    const-string/jumbo v1, "PicUploadManager"

    const-string/jumbo v2, "pic type not support"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lazs$1;->b:Lazs;

    const v2, 0x35b64

    invoke-static {v1, v2}, Lazs;->a(Lazs;I)V

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v1, "PicUploadManager"

    const-string/jumbo v2, "no file exists"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lazs$1;->b:Lazs;

    const v2, 0x35b67

    invoke-static {v1, v2}, Lazs;->a(Lazs;I)V

    goto :goto_0
.end method
