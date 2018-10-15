.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;
.super Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 1240
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;FI)V

    .line 1241
    return-void
.end method

.method private e()I
    .locals 6

    .prologue
    .line 1253
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1254
    .local v0, "first":I
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1255
    .local v1, "otherAdjust":I
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->d:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1256
    .local v3, "v":Landroid/view/View;
    const/4 v2, -0x1

    .line 1257
    .local v2, "targetY":I
    if-eqz v3, :cond_2

    .line 1258
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->d:I

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->e:I

    if-ne v4, v5, :cond_0

    .line 1259
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1272
    :goto_0
    return v2

    .line 1260
    :cond_0
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->d:I

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->e:I

    if-ge v4, v5, :cond_1

    .line 1262
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 1265
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    .line 1269
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->d()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->g(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->d:I

    .line 1246
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->e:I

    .line 1247
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I

    .line 1248
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->f:F

    .line 1249
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->g:F

    .line 1250
    return-void
.end method

.method public a(FF)V
    .locals 8
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->e()I

    move-result v4

    .line 1278
    .local v4, "targetY":I
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingLeft()I

    move-result v3

    .line 1279
    .local v3, "targetX":I
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    int-to-float v1, v5

    .line 1280
    .local v1, "deltaY":F
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    int-to-float v0, v5

    .line 1281
    .local v0, "deltaX":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, p2

    .line 1282
    .local v2, "f":F
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->f:F

    div-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->g:F

    div-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 1283
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->f:F

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 1284
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->g:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1285
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Z)V

    .line 1287
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V

    .line 1292
    return-void
.end method
