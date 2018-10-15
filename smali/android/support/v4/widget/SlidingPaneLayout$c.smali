.class Landroid/support/v4/widget/SlidingPaneLayout$c;
.super Lcc$a;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lcc$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p2, "x1"    # Landroid/support/v4/widget/SlidingPaneLayout$1;

    .prologue
    .line 1178
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$c;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1233
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$d;

    .line 1234
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$d;
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$d;->leftMargin:I

    add-int v0, v4, v5

    .line 1235
    .local v0, "leftBound":I
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v4

    add-int v3, v0, v4

    .line 1237
    .local v3, "rightBound":I
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1239
    .local v2, "newLeft":I
    return v2
.end method

.method public a(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Lcc;

    move-result-object v0

    invoke-virtual {v0}, Lcc;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/support/v4/widget/SlidingPaneLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1193
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/view/View;)V

    .line 1194
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)V

    .line 1195
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)V

    .line 1198
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v4, 0x0

    .line 1217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$d;

    .line 1218
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$d;
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/support/v4/widget/SlidingPaneLayout$d;->leftMargin:I

    add-int v0, v2, v3

    .line 1219
    .local v0, "left":I
    cmpl-float v2, p2, v4

    if-gtz v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/support/v4/widget/SlidingPaneLayout;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1220
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1222
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Lcc;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcc;->a(II)Z

    .line 1223
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    .line 1224
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;I)V

    .line 1212
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    .line 1213
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 1182
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$d;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$d;->b:Z

    goto :goto_0
.end method

.method public b(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Lcc;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcc;->a(Landroid/view/View;I)V

    .line 1245
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1206
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()V

    .line 1207
    return-void
.end method
