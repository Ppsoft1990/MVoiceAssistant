.class Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;
.super Ljava/lang/Object;
.source "AbsHomeCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "removeErrorView"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->removeView(Landroid/view/View;)V

    .line 172
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v0, "rootParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_1
    return-void
.end method
