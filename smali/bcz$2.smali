.class Lbcz$2;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcz;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lbcz;


# direct methods
.method constructor <init>(Lbcz;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lbcz$2;->c:Lbcz;

    iput-object p2, p0, Lbcz$2;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iput-object p3, p0, Lbcz$2;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 358
    iget-object v0, p0, Lbcz$2;->c:Lbcz;

    iget-object v0, v0, Lbcz;->c:Lbcu;

    invoke-virtual {v0}, Lbcu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lbcz$2;->c:Lbcz;

    iget-object v0, v0, Lbcz;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lbcz$2;->c:Lbcz;

    iget-object v1, v1, Lbcz;->c:Lbcu;

    invoke-virtual {v1}, Lbcu;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    :cond_0
    iget-object v0, p0, Lbcz$2;->c:Lbcz;

    iget-object v0, v0, Lbcz;->d:Lbdd;

    iget-object v1, p0, Lbcz$2;->c:Lbcz;

    iget-object v1, v1, Lbcz;->a:Ljava/lang/String;

    iget-object v2, p0, Lbcz$2;->c:Lbcz;

    iget-object v2, v2, Lbcz;->b:Landroid/widget/ImageView;

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    iget-object v4, p0, Lbcz$2;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iget-object v5, p0, Lbcz$2;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2, v3}, Lbdd;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 362
    return-void
.end method
