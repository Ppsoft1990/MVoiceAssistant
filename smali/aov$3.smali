.class Laov$3;
.super Ljava/lang/Object;
.source "BaseMmsContentSpeechDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laov;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laov;


# direct methods
.method constructor <init>(Laov;)V
    .locals 0
    .param p1, "this$0"    # Laov;

    .prologue
    .line 215
    iput-object p1, p0, Laov$3;->a:Laov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Laov$3;->a:Laov;

    invoke-static {v0}, Laov;->b(Laov;)Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Laov$3;->a:Laov;

    invoke-static {v0}, Laov;->b(Laov;)Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    .line 221
    iget-object v0, p0, Laov$3;->a:Laov;

    invoke-static {v0}, Laov;->c(Laov;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Laov$3;->a:Laov;

    invoke-static {v0}, Laov;->c(Laov;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 224
    :cond_0
    return-void
.end method
