.class Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;
.super Ljava/lang/Object;
.source "AbsHomeCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->i()V
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
    .line 182
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "showErrorView"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v1, "rootParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->removeView(Landroid/view/View;)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->removeView(Landroid/view/View;)V

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->e(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 195
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "rootParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
