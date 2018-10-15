.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;
.super Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;FI)V
    .locals 1
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, -0x1

    .line 1312
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 1313
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;FI)V

    .line 1305
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->g:I

    .line 1306
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->h:I

    .line 1314
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 1318
    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->g:I

    .line 1319
    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->h:I

    .line 1320
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->i:I

    .line 1321
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->j:I

    .line 1322
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->k:I

    .line 1323
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v3, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I

    .line 1325
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->d:F

    .line 1326
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1327
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v4, v3

    .line 1328
    .local v0, "minVelocity":F
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    .line 1329
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->d:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v3, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;F)F

    .line 1340
    .end local v0    # "minVelocity":F
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "minVelocity":F
    :cond_1
    move v1, v2

    .line 1329
    goto :goto_0

    .line 1331
    :cond_2
    mul-float/2addr v0, v4

    .line 1332
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1333
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    neg-float v2, v0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;F)F

    goto :goto_1

    .line 1334
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;F)F

    goto :goto_1

    .line 1338
    .end local v0    # "minVelocity":F
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->p(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V

    goto :goto_1
.end method

.method public a(FF)V
    .locals 12
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1344
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v3, v8, p2

    .line 1346
    .local v3, "f":F
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1347
    .local v4, "firstVis":I
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->i:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1351
    .local v5, "item":Landroid/view/View;
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->b:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v1, v8, v9

    .line 1353
    .local v1, "dt":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-nez v8, :cond_1

    .line 1390
    .end local v1    # "dt":F
    :cond_0
    :goto_0
    return-void

    .line 1355
    .restart local v1    # "dt":F
    :cond_1
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v8

    mul-float v2, v8, v1

    .line 1356
    .local v2, "dx":F
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getWidth()I

    move-result v7

    .line 1357
    .local v7, "w":I
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v10

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v8

    const/4 v11, 0x0

    cmpl-float v8, v8, v11

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    int-to-float v8, v8

    mul-float/2addr v8, v1

    int-to-float v11, v7

    mul-float/2addr v8, v11

    add-float/2addr v8, v10

    invoke-static {v9, v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;F)F

    .line 1358
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->d:F

    add-float/2addr v8, v2

    iput v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->d:F

    .line 1359
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;

    move-result-object v8

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->d:F

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 1360
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->d:F

    int-to-float v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->d:F

    neg-int v9, v7

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->b:J

    .line 1362
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Z)V

    goto :goto_0

    .line 1357
    :cond_2
    const/4 v8, -0x1

    goto :goto_1

    .line 1367
    .end local v1    # "dt":F
    .end local v2    # "dx":F
    .end local v7    # "w":I
    :cond_3
    if-eqz v5, :cond_5

    .line 1368
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->g:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1369
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->i:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->g:I

    .line 1370
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->g:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->e:F

    .line 1372
    :cond_4
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->e:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1373
    .local v0, "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1374
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->g:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1375
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    .end local v0    # "blank":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->j:I

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->i:I

    if-eq v8, v9, :cond_0

    .line 1378
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->j:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1379
    if-eqz v5, :cond_0

    .line 1380
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->h:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 1381
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->j:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->h:I

    .line 1382
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->h:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->f:F

    .line 1384
    :cond_6
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->f:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1385
    .restart local v0    # "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1386
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->h:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1387
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->q(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V

    .line 1395
    return-void
.end method
