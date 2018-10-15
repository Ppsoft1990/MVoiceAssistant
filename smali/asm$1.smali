.class Lasm$1;
.super Ljava/lang/Object;
.source "PluginIconLoaderManager.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasm;->a(Lcom/iflytek/base/skin/customView/XImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/skin/customView/XImageView;

.field final synthetic b:I

.field final synthetic c:Lasm;


# direct methods
.method constructor <init>(Lasm;Lcom/iflytek/base/skin/customView/XImageView;I)V
    .locals 0
    .param p1, "this$0"    # Lasm;

    .prologue
    .line 62
    iput-object p1, p0, Lasm$1;->c:Lasm;

    iput-object p2, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    iput p3, p0, Lasm$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lasm$1;->c:Lasm;

    iget-object v1, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    iget v2, p0, Lasm$1;->b:I

    invoke-static {v0, v1, v2}, Lasm;->a(Lasm;Lcom/iflytek/base/skin/customView/XImageView;I)V

    .line 93
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    iget-object v0, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p2, v0, :cond_0

    .line 80
    if-eqz p3, :cond_1

    .line 81
    iget-object v0, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lasm$1;->c:Lasm;

    iget-object v1, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    iget v2, p0, Lasm$1;->b:I

    invoke-static {v0, v1, v2}, Lasm;->a(Lasm;Lcom/iflytek/base/skin/customView/XImageView;I)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 71
    iget-object v0, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p2, v0, :cond_0

    .line 72
    iget-object v0, p0, Lasm$1;->c:Lasm;

    iget-object v1, p0, Lasm$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    iget v2, p0, Lasm$1;->b:I

    invoke-static {v0, v1, v2}, Lasm;->a(Lasm;Lcom/iflytek/base/skin/customView/XImageView;I)V

    .line 74
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 66
    return-void
.end method
