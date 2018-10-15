.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;
.super Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private d:F

.field private e:F


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->d:F

    .line 1213
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->e:F

    .line 1214
    return-void
.end method

.method public a(FF)V
    .locals 4
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->d()V

    .line 1226
    :goto_0
    return-void

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->e:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I

    .line 1223
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->f(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1224
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Z)V

    goto :goto_0
.end method
