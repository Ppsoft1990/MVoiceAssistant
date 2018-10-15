.class Landroid/support/v4/widget/DrawerLayout$d;
.super Lcc$a;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final b:I

.field private c:Lcc;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p2, "gravity"    # I

    .prologue
    .line 1333
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Lcc$a;-><init>()V

    .line 1327
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$d$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$d$1;-><init>(Landroid/support/v4/widget/DrawerLayout$d;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->d:Ljava/lang/Runnable;

    .line 1334
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:I

    .line 1335
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$d;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/DrawerLayout$d;

    .prologue
    .line 1323
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$d;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 1384
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x5

    .line 1385
    .local v0, "otherGrav":I
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1386
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1387
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 1389
    :cond_1
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1418
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Lcc;

    invoke-virtual {v7}, Lcc;->b()I

    move-result v3

    .line 1419
    .local v3, "peekDistance":I
    iget v7, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:I

    if-ne v7, v8, :cond_4

    move v1, v6

    .line 1420
    .local v1, "leftEdge":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 1421
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v4

    .line 1422
    .local v4, "toCapture":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    :cond_0
    add-int v0, v5, v3

    .line 1428
    .local v0, "childLeft":I
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v0, :cond_2

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v0, :cond_3

    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v4}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_3

    .line 1431
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$c;

    .line 1432
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$c;
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Lcc;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5, v4, v0, v7}, Lcc;->a(Landroid/view/View;II)Z

    .line 1433
    iput-boolean v6, v2, Landroid/support/v4/widget/DrawerLayout$c;->c:Z

    .line 1434
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1436
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$d;->b()V

    .line 1438
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->c()V

    .line 1440
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$c;
    :cond_3
    return-void

    .end local v0    # "childLeft":I
    .end local v1    # "leftEdge":Z
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_4
    move v1, v5

    .line 1419
    goto :goto_0

    .line 1424
    .restart local v1    # "leftEdge":Z
    :cond_5
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v4

    .line 1425
    .restart local v4    # "toCapture":Landroid/view/View;
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    sub-int v0, v5, v3

    .restart local v0    # "childLeft":I
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1475
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1476
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1479
    :goto_0
    return v1

    .line 1478
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1479
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1343
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Lcc;

    invoke-virtual {v2}, Lcc;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 1356
    return-void
.end method

.method public a(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1413
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 1395
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)F

    move-result v2

    .line 1396
    .local v2, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1399
    .local v0, "childWidth":I
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1400
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    cmpl-float v4, v2, v7

    if-lez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1406
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Lcc;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcc;->a(II)Z

    .line 1407
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1408
    return-void

    .line 1400
    .end local v1    # "left":I
    :cond_1
    neg-int v1, v0

    goto :goto_0

    .line 1402
    :cond_2
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    .line 1403
    .local v3, "width":I
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_3

    cmpl-float v4, p2, v6

    if-nez v4, :cond_4

    cmpl-float v4, v2, v7

    if-lez v4, :cond_4

    :cond_3
    sub-int v1, v3, v0

    .restart local v1    # "left":I
    :goto_1
    goto :goto_0

    .end local v1    # "left":I
    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1361
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1364
    .local v0, "childWidth":I
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1365
    add-int v3, v0, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 1370
    .local v1, "offset":F
    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1371
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1373
    return-void

    .line 1367
    .end local v1    # "offset":F
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1368
    .local v2, "width":I
    sub-int v3, v2, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .restart local v1    # "offset":F
    goto :goto_0

    .line 1371
    .end local v2    # "width":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public a(Lcc;)V
    .locals 0
    .param p1, "dragger"    # Lcc;

    .prologue
    .line 1338
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Lcc;

    .line 1339
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 1349
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1485
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public b(II)V
    .locals 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1457
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1458
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1463
    .local v0, "toCapture":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1464
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Lcc;

    invoke-virtual {v1, v0, p2}, Lcc;->a(Landroid/view/View;I)V

    .line 1466
    :cond_0
    return-void

    .line 1460
    .end local v0    # "toCapture":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "toCapture":Landroid/view/View;
    goto :goto_0
.end method

.method public b(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1377
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$c;

    .line 1378
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$c;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$c;->c:Z

    .line 1380
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$d;->b()V

    .line 1381
    return-void
.end method

.method public b(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .prologue
    .line 1451
    const/4 v0, 0x0

    return v0
.end method
