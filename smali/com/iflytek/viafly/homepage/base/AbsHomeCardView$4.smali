.class Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;
.super Ljava/lang/Object;
.source "AbsHomeCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getErrorView()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->d:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 239
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->d:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->f(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Laij;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->d:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->g(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;->d:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->f(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Laij;

    move-result-object v0

    invoke-interface {v0}, Laij;->c()V

    .line 247
    :cond_0
    return-void
.end method
