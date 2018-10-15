.class Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1225
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->REFRESH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setMode(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;)V

    .line 1226
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1227
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1228
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    return-void
.end method
