.class Laws$1;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneIconLoaderManager.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laws;->a(Lcom/iflytek/base/skin/customView/XImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/skin/customView/XImageView;

.field final synthetic b:Laws;


# direct methods
.method constructor <init>(Laws;Lcom/iflytek/base/skin/customView/XImageView;)V
    .locals 0
    .param p1, "this$0"    # Laws;

    .prologue
    .line 60
    iput-object p1, p0, Laws$1;->b:Laws;

    iput-object p2, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p2, v0, :cond_0

    .line 89
    iget-object v0, p0, Laws$1;->b:Laws;

    iget-object v1, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-static {v0, v1}, Laws;->a(Laws;Lcom/iflytek/base/skin/customView/XImageView;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iget-object v0, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p2, v0, :cond_0

    .line 78
    if-eqz p3, :cond_1

    .line 79
    iget-object v0, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Laws$1;->b:Laws;

    iget-object v1, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-static {v0, v1}, Laws;->a(Laws;Lcom/iflytek/base/skin/customView/XImageView;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 69
    iget-object v0, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne p2, v0, :cond_0

    .line 70
    iget-object v0, p0, Laws$1;->b:Laws;

    iget-object v1, p0, Laws$1;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-static {v0, v1}, Laws;->a(Laws;Lcom/iflytek/base/skin/customView/XImageView;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 64
    return-void
.end method
