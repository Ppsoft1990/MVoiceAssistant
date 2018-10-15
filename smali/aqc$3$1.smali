.class Laqc$3$1;
.super Ljava/lang/Object;
.source "MusicCoverHelper.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqc$3;->onGranted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqc$3;


# direct methods
.method constructor <init>(Laqc$3;)V
    .locals 0
    .param p1, "this$0"    # Laqc$3;

    .prologue
    .line 118
    iput-object p1, p0, Laqc$3$1;->a:Laqc$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 131
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    iget-object v0, p0, Laqc$3$1;->a:Laqc$3;

    iget-object v0, v0, Laqc$3;->b:Laqc$a;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Laqc$3$1;->a:Laqc$3;

    iget-object v0, v0, Laqc$3;->b:Laqc$a;

    invoke-interface {v0}, Laqc$a;->a()V

    .line 129
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 123
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 120
    return-void
.end method
