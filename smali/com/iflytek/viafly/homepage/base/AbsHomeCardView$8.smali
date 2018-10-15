.class Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;
.super Ljava/lang/Object;
.source "AbsHomeCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;->b:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 403
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;->b:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->h(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;->b:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide v4, 0x4065400000000000L    # 170.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;->b:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v4, 0x4037000000000000L    # 23.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 406
    :cond_0
    return-void
.end method
