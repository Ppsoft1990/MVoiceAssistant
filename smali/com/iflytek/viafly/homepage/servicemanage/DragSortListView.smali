.class public Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$e;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;,
        Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;
    }
.end annotation


# instance fields
.field private A:[Landroid/view/View;

.field private B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

.field private V:Landroid/view/MotionEvent;

.field private W:I

.field private a:Landroid/view/View;

.field private aa:F

.field private ab:F

.field private ac:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

.field private ad:Z

.field private ae:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;

.field private af:Z

.field private ag:Z

.field private ah:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;

.field private ai:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;

.field private aj:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;

.field private ak:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;

.field private al:Z

.field private am:F

.field private an:Z

.field private ao:Z

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:Z

.field private f:Landroid/database/DataSetObserver;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;

.field private s:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

.field private t:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 444
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    .line 78
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c:Landroid/graphics/Point;

    .line 88
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e:Z

    .line 99
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->g:F

    .line 100
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h:F

    .line 125
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l:Z

    .line 181
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    .line 192
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 199
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    .line 215
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->z:I

    .line 221
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->A:[Landroid/view/View;

    .line 233
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->C:F

    .line 240
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->D:F

    .line 264
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->K:F

    .line 272
    new-instance v5, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$1;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->L:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;

    .line 336
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    .line 342
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->S:Z

    .line 347
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    .line 352
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    .line 372
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->W:I

    .line 379
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->aa:F

    .line 388
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ab:F

    .line 401
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ad:Z

    .line 411
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->af:Z

    .line 418
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ag:Z

    .line 432
    new-instance v5, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ah:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;

    .line 441
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->am:F

    .line 1692
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->an:Z

    .line 2174
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ao:Z

    .line 446
    const/16 v27, 0x96

    .line 447
    .local v27, "defaultDuration":I
    move/from16 v30, v27

    .line 448
    .local v30, "removeAnimDuration":I
    move/from16 v28, v27

    .line 450
    .local v28, "dropAnimDuration":I
    if-eqz p2, :cond_2

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v12, Lcom/iflytek/cmcc/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 454
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    .line 457
    const/4 v5, 0x5

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ad:Z

    .line 460
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ad:Z

    if-eqz v5, :cond_0

    .line 461
    new-instance v5, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ae:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;

    .line 465
    :cond_0
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->g:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->g:F

    .line 466
    move-object/from16 v0, p0

    iget v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->g:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h:F

    .line 468
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    .line 470
    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x7

    const/high16 v15, 0x3f400000    # 0.75f

    .line 471
    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 470
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->aa:F

    .line 475
    move-object/from16 v0, p0

    iget v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->aa:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l:Z

    .line 477
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->C:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 481
    .local v29, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragScrollStart(F)V

    .line 483
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->K:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->K:F

    .line 487
    const/16 v5, 0x8

    move/from16 v0, v30

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 491
    const/16 v5, 0x9

    move/from16 v0, v28

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 495
    const/16 v5, 0x11

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 499
    .local v34, "useDefault":Z
    if-eqz v34, :cond_1

    .line 500
    const/16 v5, 0xc

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 503
    .local v31, "removeEnabled":Z
    const/4 v5, 0x4

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 506
    .local v8, "removeMode":I
    const/16 v5, 0xb

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 509
    .local v33, "sortEnabled":Z
    const/16 v5, 0xd

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 512
    .local v7, "dragInitMode":I
    const/16 v5, 0xe

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 515
    .local v6, "dragHandleId":I
    const/16 v5, 0xf

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 518
    .local v10, "flingHandleId":I
    const/16 v5, 0x10

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 521
    .local v9, "clickRemoveId":I
    const/4 v5, 0x3

    const/4 v12, -0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 525
    .local v26, "bgColor":I
    new-instance v4, Lalo;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lalo;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;IIIII)V

    .line 528
    .local v4, "controller":Lalo;
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lalo;->b(Z)V

    .line 529
    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lalo;->a(Z)V

    .line 530
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lalo;->d(I)V

    .line 532
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    .line 533
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    .end local v4    # "controller":Lalo;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v31    # "removeEnabled":Z
    .end local v33    # "sortEnabled":Z
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 539
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v29    # "frac":F
    .end local v34    # "useDefault":Z
    :cond_2
    new-instance v5, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    .line 541
    const/high16 v32, 0x3f000000    # 0.5f

    .line 542
    .local v32, "smoothness":F
    if-lez v30, :cond_3

    .line 543
    new-instance v5, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ai:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;

    .line 546
    :cond_3
    if-lez v28, :cond_4

    .line 547
    new-instance v5, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ak:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;

    .line 550
    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->V:Landroid/view/MotionEvent;

    .line 554
    new-instance v5, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->f:Landroid/database/DataSetObserver;

    .line 571
    return-void

    .line 475
    .end local v32    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->K:F

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->am:F

    return p1
.end method

.method private a(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 915
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 921
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 968
    :goto_0
    return v3

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 929
    .local v2, "divHeight":I
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    sub-int v5, v9, v10

    .line 930
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(I)I

    move-result v1

    .line 931
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(I)I

    move-result v4

    .line 935
    .local v4, "itemHeight":I
    move v8, p2

    .line 936
    .local v8, "otop":I
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-gt v9, v10, :cond_5

    .line 939
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-eq v9, v10, :cond_4

    .line 940
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-ne p1, v9, :cond_3

    .line 941
    add-int v9, p2, v4

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    sub-int v8, v9, v10

    .line 962
    :cond_2
    :goto_1
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-gt p1, v9, :cond_7

    .line 963
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .line 943
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 944
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 945
    goto :goto_1

    .line 946
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-gt p1, v9, :cond_2

    .line 947
    sub-int v8, p2, v5

    goto :goto_1

    .line 953
    :cond_5
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-gt p1, v9, :cond_6

    .line 954
    add-int v8, p2, v5

    goto :goto_1

    .line 955
    :cond_6
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-eq v9, v10, :cond_2

    .line 956
    sub-int v0, v4, v1

    .line 957
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 965
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private a(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2052
    const/4 v0, 0x0

    .line 2054
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(I)I

    move-result v1

    .line 2056
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2057
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(II)I

    move-result v5

    .line 2059
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2060
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2061
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-eq p1, v7, :cond_0

    .line 2062
    sub-int/2addr v4, v1

    .line 2063
    sub-int/2addr v3, v1

    .line 2066
    :cond_0
    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    .line 2067
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-eq v7, v8, :cond_1

    .line 2068
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    sub-int/2addr v2, v7

    .line 2071
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2072
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-le p1, v7, :cond_2

    .line 2073
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2091
    :cond_2
    :goto_0
    return v0

    .line 2075
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2076
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-gt p1, v7, :cond_4

    .line 2077
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 2078
    :cond_4
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-ne p1, v7, :cond_5

    .line 2079
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 2081
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 2084
    :cond_6
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-gt p1, v7, :cond_7

    .line 2085
    sub-int/2addr v0, v2

    goto :goto_0

    .line 2086
    :cond_7
    iget v7, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-ne p1, v7, :cond_2

    .line 2087
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(II)I

    move-result v0

    return v0
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 751
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 754
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    .line 755
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 757
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 759
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 763
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 765
    .local v1, "childHeight":I
    iget v8, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-le p1, v8, :cond_1

    .line 766
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 767
    .local v7, "t":I
    add-int v0, v7, v3

    .line 775
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 776
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 777
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 778
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 779
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 782
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 769
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 770
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1884
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1886
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-eq p1, v4, :cond_5

    .line 1887
    const/4 v0, -0x2

    .line 1892
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1893
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1894
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1898
    :cond_0
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-ne p1, v4, :cond_2

    .line 1899
    :cond_1
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1900
    check-cast v4, Lcom/iflytek/viafly/homepage/servicemanage/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortItemView;->setGravity(I)V

    .line 1908
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1909
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1911
    .local v3, "vis":I
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1912
    const/4 v3, 0x4

    .line 1915
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1916
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1918
    :cond_4
    return-void

    .line 1889
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1901
    :cond_6
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1902
    check-cast v4, Lcom/iflytek/viafly/homepage/servicemanage/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2095
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2096
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2097
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2098
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2100
    :cond_0
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->z:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getListPaddingLeft()I

    move-result v4

    .line 2101
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2100
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2103
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2104
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2108
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2109
    return-void

    .line 2106
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Z)V

    return-void
.end method

.method private b(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 834
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 840
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(II)I

    move-result v1

    goto :goto_0
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1972
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-ne p1, v3, :cond_1

    .line 1998
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1977
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1978
    :cond_2
    move-object v0, p2

    .line 1983
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1985
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1986
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1987
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1980
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1991
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1993
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1994
    :cond_5
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Landroid/view/View;)V

    .line 1995
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method private b(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1790
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1791
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1793
    invoke-direct {p0, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Z)V

    .line 1795
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->y:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1796
    .local v2, "minY":I
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->y:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1799
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->b()I

    move-result v0

    .line 1801
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->P:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->F:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1805
    if-eq v0, v6, :cond_0

    .line 1807
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a(Z)V

    .line 1811
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a(I)V

    .line 1831
    :cond_1
    :goto_0
    return-void

    .line 1812
    :cond_2
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->P:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->E:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1816
    if-eq v0, v6, :cond_3

    .line 1818
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a(Z)V

    .line 1822
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a(I)V

    goto :goto_0

    .line 1824
    :cond_4
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->E:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->F:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    .line 1825
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1829
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a(Z)V

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1674
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1675
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->M:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->O:I

    .line 1676
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->P:I

    .line 1678
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->M:I

    .line 1679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    .line 1680
    if-nez v0, :cond_1

    .line 1681
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->M:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->O:I

    .line 1682
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->P:I

    .line 1684
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->M:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->p:I

    .line 1685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->q:I

    .line 1686
    return-void
.end method

.method private b(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2304
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2305
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2307
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2312
    :goto_0
    return-void

    .line 2311
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->af:Z

    return p1
.end method

.method private c(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 2009
    .local v0, "divHeight":I
    iget-boolean v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    iget v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .line 2010
    .local v2, "isSliding":Z
    :goto_0
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    iget v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    sub-int v3, v5, v6

    .line 2011
    .local v3, "maxNonSrcBlankHeight":I
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ab:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 2015
    .local v4, "slideHeight":I
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-ne p1, v5, :cond_4

    .line 2016
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    iget v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-ne v5, v6, :cond_2

    .line 2017
    if-eqz v2, :cond_1

    .line 2018
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    add-int v1, v4, v5

    .line 2041
    .local v1, "height":I
    :goto_1
    return v1

    .line 2009
    .end local v1    # "height":I
    .end local v2    # "isSliding":Z
    .end local v3    # "maxNonSrcBlankHeight":I
    .end local v4    # "slideHeight":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2020
    .restart local v2    # "isSliding":Z
    .restart local v3    # "maxNonSrcBlankHeight":I
    .restart local v4    # "slideHeight":I
    :cond_1
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 2022
    .end local v1    # "height":I
    :cond_2
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    iget v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-ne v5, v6, :cond_3

    .line 2024
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2026
    .end local v1    # "height":I
    :cond_3
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 2028
    .end local v1    # "height":I
    :cond_4
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-ne p1, v5, :cond_6

    .line 2029
    if-eqz v2, :cond_5

    .line 2030
    add-int v1, p2, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2032
    .end local v1    # "height":I
    :cond_5
    add-int v1, p2, v3

    .restart local v1    # "height":I
    goto :goto_1

    .line 2034
    .end local v1    # "height":I
    :cond_6
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    if-ne p1, v5, :cond_7

    .line 2036
    add-int v5, p2, v3

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2038
    .end local v1    # "height":I
    :cond_7
    move v1, p2

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method private c(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 2002
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(II)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o:I

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1526
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 1529
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->t:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->t:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;->a(I)V

    .line 1533
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n()V

    .line 1535
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h()V

    .line 1536
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e()V

    .line 1539
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1540
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 1544
    :goto_0
    return-void

    .line 1542
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(ILandroid/view/View;Z)V

    return-void
.end method

.method private d(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1921
    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-ne p1, v5, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return v1

    .line 1925
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1927
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1930
    invoke-direct {p0, p1, v4, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1934
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ah:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;

    invoke-virtual {v5, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;->a(I)I

    move-result v1

    .line 1935
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1940
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1941
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1944
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1945
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->A:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1946
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->A:[Landroid/view/View;

    .line 1949
    :cond_3
    if-ltz v2, :cond_5

    .line 1950
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->A:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1951
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1952
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->A:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1962
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v1

    .line 1965
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ah:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;

    invoke-virtual {v5, p1, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;->a(II)V

    goto :goto_0

    .line 1954
    :cond_4
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->A:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1958
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->y:I

    return v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(I)I

    move-result v0

    return v0
.end method

.method private d(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2315
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->af:Z

    .line 2317
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m()V

    .line 2319
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 2320
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    .line 2322
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d()Z

    move-result v3

    .line 2324
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2325
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k()V

    .line 2326
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(ILandroid/view/View;II)I

    move-result v2

    .line 2329
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setSelectionFromTop(II)V

    .line 2330
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->layoutChildren()V

    .line 2333
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2334
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->invalidate()V

    .line 2337
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->af:Z

    .line 2338
    return-void
.end method

.method private d()Z
    .locals 30

    .prologue
    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 974
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    move/from16 v23, v0

    .line 975
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 977
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 979
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 981
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 983
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 985
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(II)I

    move-result v5

    .line 986
    .local v5, "edge":I
    move v13, v5

    .line 988
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 992
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 993
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 994
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 997
    :goto_0
    if-ltz v11, :cond_1

    .line 998
    add-int/lit8 v11, v11, -0x1

    .line 999
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(I)I

    move-result v10

    .line 1001
    if-nez v11, :cond_7

    .line 1002
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1041
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1042
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1044
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1046
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    move/from16 v16, v0

    .line 1047
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    move/from16 v17, v0

    .line 1048
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ab:F

    move/from16 v18, v0

    .line 1050
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1051
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1054
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1055
    move v6, v5

    .line 1056
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1063
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->aa:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1064
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1065
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1066
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1069
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1070
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1071
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    .line 1072
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ab:F

    .line 1093
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1094
    move v11, v15

    .line 1095
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1096
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    .line 1103
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ab:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1105
    :cond_3
    const/16 v26, 0x1

    .line 1108
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->r:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->r:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;->a(II)V

    .line 1113
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    .line 1114
    const/16 v26, 0x1

    .line 1117
    :cond_6
    return v26

    .line 1006
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 1007
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(II)I

    move-result v5

    .line 1010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 1014
    move v13, v5

    goto/16 :goto_0

    .line 1019
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v3

    .line 1020
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 1021
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 1022
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1023
    goto/16 :goto_1

    .line 1026
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1027
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(I)I

    move-result v10

    .line 1028
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(II)I

    move-result v5

    .line 1032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1036
    move v13, v5

    .line 1037
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1058
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 1059
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1075
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1076
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1077
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    goto/16 :goto_3

    .line 1079
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1080
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    .line 1081
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ab:F

    goto/16 :goto_3

    .line 1088
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1089
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    goto/16 :goto_3

    .line 1097
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1099
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1100
    move-object/from16 v0, p0

    iput v11, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    goto/16 :goto_4
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1486
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    .line 1487
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1488
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    .line 1489
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    .line 1490
    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1495
    const/4 v1, 0x2

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 1497
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->s:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1498
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1499
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->s:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;->a_(II)V

    .line 1502
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n()V

    .line 1504
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h()V

    .line 1505
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e()V

    .line 1506
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k()V

    .line 1509
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    if-eqz v1, :cond_1

    .line 1510
    const/4 v1, 0x3

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 1514
    :goto_0
    return-void

    .line 1512
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    goto :goto_0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1517
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(I)V

    .line 1518
    return-void
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    return v0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1549
    .local v0, "firstPos":I
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-ge v3, v0, :cond_1

    .line 1552
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1553
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1554
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1555
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1558
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setSelectionFromTop(II)V

    .line 1560
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w:I

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1662
    iput v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->W:I

    .line 1663
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    .line 1664
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1665
    iput v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 1667
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->g:F

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h:F

    .line 1668
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->an:Z

    .line 1669
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ah:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$j;->a()V

    .line 1670
    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    return v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1835
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1836
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1838
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->C:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->H:F

    .line 1839
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->D:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->G:F

    .line 1841
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->H:F

    float-to-int v3, v3

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->E:I

    .line 1842
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->G:F

    float-to-int v3, v3

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->F:I

    .line 1844
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->H:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->I:F

    .line 1845
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->G:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->J:F

    .line 1846
    return-void
.end method

.method private k()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1855
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1856
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1858
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1859
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1861
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1862
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1863
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1864
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(ILandroid/view/View;Z)V

    .line 1861
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1867
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->f()V

    return-void
.end method

.method static synthetic l(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Landroid/view/View;)V

    .line 2114
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    .line 2115
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->y:I

    .line 2117
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    return v0
.end method

.method private m()V
    .locals 13

    .prologue
    .line 2346
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    if-eqz v9, :cond_0

    .line 2347
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c:Landroid/graphics/Point;

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->M:I

    iget v11, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2348
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    iget-object v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    iget-object v11, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;->a(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2351
    :cond_0
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2352
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2355
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2356
    .local v7, "padLeft":I
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2357
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2363
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2364
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2365
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2366
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2370
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2371
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2372
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2374
    :cond_2
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2375
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-gt v1, v9, :cond_3

    .line 2376
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2381
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2382
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2383
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2385
    :cond_4
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2386
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-lt v4, v9, :cond_5

    .line 2387
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2395
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2396
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2402
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->y:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    .line 2403
    return-void

    .line 2358
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2359
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2397
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2398
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v10, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private n()V
    .locals 2

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2407
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2408
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    if-eqz v0, :cond_0

    .line 2409
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;->a(Landroid/view/View;)V

    .line 2411
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    .line 2412
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->invalidate()V

    .line 2414
    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->al:Z

    return v0
.end method

.method static synthetic o(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->am:F

    return v0
.end method

.method static synthetic p(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n()V

    return-void
.end method

.method static synthetic q(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->g()V

    return-void
.end method

.method static synthetic r(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d:I

    return v0
.end method

.method static synthetic s(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->H:F

    return v0
.end method

.method static synthetic t(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->I:F

    return v0
.end method

.method static synthetic u(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->L:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;

    return-object v0
.end method

.method static synthetic v(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->G:F

    return v0
.end method

.method static synthetic w(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->J:F

    return v0
.end method

.method static synthetic x(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->P:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1471
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a(Z)V

    .line 1473
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n()V

    .line 1474
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e()V

    .line 1475
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k()V

    .line 1477
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1478
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    goto :goto_0
.end method

.method public a(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1770
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1771
    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->D:F

    .line 1776
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1777
    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->C:F

    .line 1782
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j()V

    .line 1785
    :cond_0
    return-void

    .line 1773
    :cond_1
    iput p2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->D:F

    goto :goto_0

    .line 1779
    :cond_2
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->C:F

    goto :goto_1
.end method

.method public a(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->al:Z

    .line 1401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(IF)V

    .line 1402
    return-void
.end method

.method public a(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1412
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-ne v1, v3, :cond_3

    .line 1414
    :cond_0
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-nez v1, :cond_1

    .line 1416
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    .line 1417
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 1418
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    .line 1419
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    .line 1420
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1421
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1422
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1426
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 1427
    iput p2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->am:F

    .line 1429
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    if-eqz v1, :cond_2

    .line 1430
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->W:I

    packed-switch v1, :pswitch_data_0

    .line 1440
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ai:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;

    if-eqz v1, :cond_4

    .line 1441
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ai:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$l;->c()V

    .line 1446
    :cond_3
    :goto_1
    return-void

    .line 1432
    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1435
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1443
    :cond_4
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(I)V

    goto :goto_1

    .line 1430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2204
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    if-nez v1, :cond_1

    .line 2213
    :cond_0
    :goto_0
    return v0

    .line 2208
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    invoke-interface {v1, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;->c(I)Landroid/view/View;

    move-result-object v2

    .line 2210
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2213
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2241
    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 2300
    :cond_1
    :goto_0
    return v2

    .line 2246
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2247
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2250
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2251
    .local v0, "pos":I
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    .line 2252
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    .line 2253
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    .line 2254
    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i:I

    .line 2257
    iput v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    .line 2258
    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    .line 2259
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->R:I

    .line 2261
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    .line 2262
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l()V

    .line 2264
    iput p4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n:I

    .line 2265
    iput p5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o:I

    .line 2266
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->Q:I

    .line 2269
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->M:I

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->n:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2270
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->N:I

    iget v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->o:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2273
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2275
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2276
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2279
    :cond_4
    iget-boolean v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ad:Z

    if-eqz v3, :cond_5

    .line 2280
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ae:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a()V

    .line 2285
    :cond_5
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->W:I

    packed-switch v3, :pswitch_data_0

    .line 2294
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->requestLayout()V

    .line 2296
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->aj:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;

    if-eqz v3, :cond_1

    .line 2297
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->aj:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$k;->c()V

    goto :goto_0

    .line 2287
    :pswitch_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2290
    :pswitch_1
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2152
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2171
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2154
    :pswitch_0
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-ne v1, v2, :cond_0

    .line 2155
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a()V

    .line 2157
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i()V

    goto :goto_0

    .line 2161
    :pswitch_1
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-ne v1, v2, :cond_1

    .line 2162
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Z)Z

    .line 2164
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i()V

    goto :goto_0

    .line 2167
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(II)V

    goto :goto_0

    .line 2152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->al:Z

    .line 1575
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(ZF)Z

    move-result v0

    return v0
.end method

.method public a(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->al:Z

    .line 1581
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(ZF)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1689
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->an:Z

    return v0
.end method

.method public b(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    .line 1585
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1586
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->B:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a(Z)V

    .line 1588
    if-eqz p1, :cond_1

    .line 1589
    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(IF)V

    .line 1598
    :goto_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ad:Z

    if-eqz v1, :cond_0

    .line 1599
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ae:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->d()V

    .line 1605
    :cond_0
    :goto_1
    return v0

    .line 1591
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ak:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;

    if-eqz v1, :cond_2

    .line 1592
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ak:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$g;->c()V

    goto :goto_0

    .line 1594
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->f()V

    goto :goto_0

    .line 1605
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 2492
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 786
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 788
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-eqz v0, :cond_1

    .line 790
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-eq v0, v2, :cond_0

    .line 791
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 793
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m:I

    if-eq v0, v2, :cond_1

    .line 794
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->k:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 801
    .local v9, "w":I
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 803
    .local v8, "h":I
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 805
    .local v11, "x":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getWidth()I

    move-result v10

    .line 806
    .local v10, "width":I
    if-gez v11, :cond_2

    .line 807
    neg-int v11, v11

    .line 809
    :cond_2
    if-ge v11, v10, :cond_4

    .line 810
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 811
    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    .line 816
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 818
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 820
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 821
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 824
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 825
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 826
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 827
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 829
    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .line 813
    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ac:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ac:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2134
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2136
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2137
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e:Z

    if-nez v0, :cond_0

    .line 2141
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l()V

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2144
    iput-boolean v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e:Z

    .line 2146
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1122
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1124
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ad:Z

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ae:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->b()V

    .line 1127
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1696
    iget-boolean v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    if-nez v3, :cond_1

    .line 1697
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1744
    :cond_0
    :goto_0
    return v1

    .line 1700
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Landroid/view/MotionEvent;)V

    .line 1701
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->S:Z

    .line 1703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1705
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1706
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-eqz v3, :cond_2

    .line 1708
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ag:Z

    move v1, v2

    .line 1709
    goto :goto_0

    .line 1711
    :cond_2
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    .line 1714
    :cond_3
    const/4 v1, 0x0

    .line 1717
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1719
    const/4 v1, 0x1

    .line 1740
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1741
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->T:Z

    goto :goto_0

    .line 1721
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1722
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->an:Z

    .line 1723
    const/4 v1, 0x1

    .line 1726
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1732
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1733
    iput v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->W:I

    goto :goto_1

    .line 1729
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i()V

    goto :goto_1

    .line 1735
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->W:I

    goto :goto_1

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2121
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2123
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2125
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l()V

    .line 2127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->e:Z

    .line 2129
    :cond_1
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->z:I

    .line 2130
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1850
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1851
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j()V

    .line 1852
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1611
    iget-boolean v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ag:Z

    if-eqz v4, :cond_1

    .line 1612
    iput-boolean v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ag:Z

    move v2, v3

    .line 1658
    :cond_0
    :goto_0
    return v2

    .line 1616
    :cond_1
    iget-boolean v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    if-nez v4, :cond_2

    .line 1617
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1620
    :cond_2
    const/4 v2, 0x0

    .line 1622
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->S:Z

    .line 1623
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->S:Z

    .line 1625
    if-nez v1, :cond_3

    .line 1626
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Landroid/view/MotionEvent;)V

    .line 1630
    :cond_3
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1631
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Landroid/view/MotionEvent;)Z

    .line 1632
    const/4 v2, 0x1

    goto :goto_0

    .line 1638
    :cond_4
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v:I

    if-nez v3, :cond_5

    .line 1639
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1640
    const/4 v2, 0x1

    .line 1644
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1646
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1652
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1653
    const/4 v3, 0x1

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->W:I

    goto :goto_0

    .line 1649
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->i()V

    goto :goto_0

    .line 1646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2046
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->af:Z

    if-nez v0, :cond_0

    .line 2047
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2049
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 608
    if-eqz p1, :cond_3

    .line 609
    new-instance v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ac:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    .line 610
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->f:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 612
    instance-of v0, p1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 613
    check-cast v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDropListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;)V

    .line 615
    :cond_0
    instance-of v0, p1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 616
    check-cast v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;)V

    .line 618
    :cond_1
    instance-of v0, p1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    if-eqz v0, :cond_2

    .line 619
    check-cast p1, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setRemoveListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;)V

    .line 625
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ac:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 626
    return-void

    .line 622
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->ac:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2488
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u:Z

    .line 2489
    return-void
.end method

.method public setDragListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;)V
    .locals 0
    .param p1, "l"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->r:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;

    .line 2475
    return-void
.end method

.method public setDragScrollProfile(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;)V
    .locals 0
    .param p1, "ssp"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;

    .prologue
    .line 2571
    if-eqz p1, :cond_0

    .line 2572
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->L:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;

    .line 2574
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1756
    invoke-virtual {p0, p1, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(FF)V

    .line 1757
    return-void
.end method

.method public setDragSortListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$e;)V
    .locals 0
    .param p1, "l"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$e;

    .prologue
    .line 2558
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDropListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;)V

    .line 2559
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$b;)V

    .line 2560
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setRemoveListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;)V

    .line 2561
    return-void
.end method

.method public setDropListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;)V
    .locals 0
    .param p1, "l"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    .prologue
    .line 2508
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->s:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    .line 2509
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 579
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h:F

    .line 580
    return-void
.end method

.method public setFloatViewManager(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;)V
    .locals 0
    .param p1, "manager"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->U:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$i;

    .line 2471
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 593
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->K:F

    .line 594
    return-void
.end method

.method public setRemoveListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;)V
    .locals 0
    .param p1, "l"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->t:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    .line 2523
    return-void
.end method
