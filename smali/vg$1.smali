.class Lvg$1;
.super Ljava/lang/Object;
.source "BannerImageManager.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvg;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lvg;


# direct methods
.method constructor <init>(Lvg;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lvg;

    .prologue
    .line 104
    iput-object p1, p0, Lvg$1;->d:Lvg;

    iput-object p2, p0, Lvg$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lvg$1;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lvg$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 168
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    move-object v3, p3

    .line 127
    .local v3, "tBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lvg$1;->b:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lvg$1;->d:Lvg;

    invoke-static {v4}, Lvg;->b(Lvg;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lvg$1;->d:Lvg;

    invoke-static {v4}, Lvg;->b(Lvg;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lvg$1$1;

    invoke-direct {v5, p0, v3}, Lvg$1$1;-><init>(Lvg$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lvg$1;->d:Lvg;

    iget-object v6, p0, Lvg$1;->d:Lvg;

    invoke-static {v6}, Lvg;->b(Lvg;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lvg$1;->c:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lvg;->a(Lvg;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lvg$1;->d:Lvg;

    iget-object v6, p0, Lvg$1;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lvg;->a(Lvg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lvg$1;->d:Lvg;

    invoke-static {v4, p3, v0}, Lvg;->a(Lvg;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    iget-object v4, p0, Lvg$1;->d:Lvg;

    invoke-static {v4}, Lvg;->a(Lvg;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 143
    iget-object v4, p0, Lvg$1;->d:Lvg;

    invoke-static {v4}, Lvg;->a(Lvg;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lvh;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvh;

    .line 146
    .local v1, "imageDownloadResultListener":Lvh;
    if-eqz v1, :cond_1

    .line 147
    iget-object v4, p0, Lvg$1;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lvh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v1    # "imageDownloadResultListener":Lvh;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lvh;>;"
    :cond_2
    iget-object v4, p0, Lvg$1;->d:Lvg;

    invoke-static {v4}, Lvg;->a(Lvg;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 153
    iget-object v4, p0, Lvg$1;->d:Lvg;

    invoke-static {v4}, Lvg;->a(Lvg;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 154
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lvh;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvh;

    .line 156
    .restart local v1    # "imageDownloadResultListener":Lvh;
    if-eqz v1, :cond_3

    .line 157
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iget-object v5, p0, Lvg$1;->a:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lvh;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v1    # "imageDownloadResultListener":Lvh;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lvh;>;"
    :cond_4
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 113
    iget-object v2, p0, Lvg$1;->d:Lvg;

    invoke-static {v2}, Lvg;->a(Lvg;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lvg$1;->d:Lvg;

    invoke-static {v2}, Lvg;->a(Lvg;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lvh;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvh;

    .line 117
    .local v0, "imageDownloadResultListener":Lvh;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/assist/FailReason;->a()Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    move-result-object v2

    iget-object v3, p0, Lvg$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lvh;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v0    # "imageDownloadResultListener":Lvh;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lvh;>;"
    :cond_1
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 109
    return-void
.end method
