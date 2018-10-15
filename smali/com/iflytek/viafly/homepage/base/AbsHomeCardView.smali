.class public abstract Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.super Landroid/widget/LinearLayout;
.source "AbsHomeCardView.java"

# interfaces
.implements Lajl;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field protected final f:I

.field protected final g:I

.field protected final h:I

.field protected final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:I

.field private q:Laij;

.field private r:Landroid/widget/PopupWindow;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/LinearLayout;

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const-string/jumbo v0, "tAbsHomeCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->o:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->p:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->u:I

    .line 62
    iput v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->f:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->g:I

    .line 64
    iput v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->h:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->i:I

    .line 66
    iput v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    .line 68
    const-string/jumbo v0, "content"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->j:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "cancel"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->k:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "setting"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->l:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "more"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->m:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "refresh"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->n:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    .line 77
    invoke-virtual {p2}, Laic;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Laic;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Laic;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Laic;->e()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->v:I

    .line 81
    invoke-virtual {p2}, Laic;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->setOrientation(I)V

    .line 84
    const-string/jumbo v0, "Banner"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Notification"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const v0, 0x7f0203f2

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->setBackgroundResource(I)V

    .line 87
    :cond_0
    return-void
.end method

.method private a()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 468
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 469
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 470
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 471
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 472
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 473
    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 24
    .param p1, "fatherWindow"    # Landroid/view/View;

    .prologue
    .line 326
    move-object/from16 v9, p1

    .line 327
    .local v9, "moreView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f030154

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 329
    .local v18, "view":Landroid/widget/LinearLayout;
    const v19, 0x7f0b0788

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 330
    .local v4, "cancel":Landroid/widget/LinearLayout;
    const v19, 0x7f0b0789

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 331
    .local v16, "setting":Landroid/widget/LinearLayout;
    new-instance v19, Landroid/widget/PopupWindow;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 339
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 340
    const/16 v19, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    :cond_0
    :goto_0
    new-instance v19, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v19, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$7;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .end local v4    # "cancel":Landroid/widget/LinearLayout;
    .end local v16    # "setting":Landroid/widget/LinearLayout;
    .end local v18    # "view":Landroid/widget/LinearLayout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/PopupWindow;->dismiss()V

    .line 412
    :goto_1
    return-void

    .line 341
    .restart local v4    # "cancel":Landroid/widget/LinearLayout;
    .restart local v16    # "setting":Landroid/widget/LinearLayout;
    .restart local v18    # "view":Landroid/widget/LinearLayout;
    :cond_2
    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 342
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_3
    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 344
    const/16 v19, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 378
    .end local v4    # "cancel":Landroid/widget/LinearLayout;
    .end local v16    # "setting":Landroid/widget/LinearLayout;
    .end local v18    # "view":Landroid/widget/LinearLayout;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x405b000000000000L    # 108.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v11

    .line 379
    .local v11, "popupBothHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x404d000000000000L    # 58.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v10

    .line 380
    .local v10, "popupAloneHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4037000000000000L    # 23.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v13

    .line 381
    .local v13, "popupYOff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide v20, 0x4065400000000000L    # 170.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v12

    .line 382
    .local v12, "popupXOff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x404d000000000000L    # 58.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v17

    .line 383
    .local v17, "speechViewHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 384
    .local v14, "resources":Landroid/content/res/Resources;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 386
    .local v5, "heightWindow":I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [I

    .line 387
    .local v6, "location":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 388
    const/4 v7, 0x0

    .line 389
    .local v7, "mPopupHight":I
    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 390
    move v7, v11

    .line 394
    :cond_5
    :goto_2
    const/16 v19, 0x1

    aget v19, v6, v19

    sub-int v19, v5, v19

    add-int v20, v17, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 395
    new-instance v15, Laip;

    invoke-direct {v15}, Laip;-><init>()V

    .line 396
    .local v15, "scrollviewEvent":Laip;
    add-int v19, v17, v7

    const/16 v20, 0x1

    aget v20, v6, v20

    sub-int v20, v5, v20

    sub-int v8, v19, v20

    .line 397
    .local v8, "mSpace":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    add-int v19, v19, v8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Laip;->a(I)V

    .line 398
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 399
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    new-instance v20, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$8;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/view/View;)V

    const-wide/16 v22, 0x64

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 391
    .end local v8    # "mSpace":I
    .end local v15    # "scrollviewEvent":Laip;
    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 392
    :cond_7
    move v7, v10

    goto :goto_2

    .line 409
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    neg-int v0, v12

    move/from16 v20, v0

    neg-int v0, v13

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->s:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    iget v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->u:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getErrorView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Laij;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->q:Laij;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private getErrorView()Landroid/widget/LinearLayout;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x41800000    # 16.0f

    const/16 v12, 0x11

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 205
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    .line 206
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 207
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v4, "tipParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v5, "tipView":Landroid/widget/TextView;
    const-string/jumbo v6, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const-string/jumbo v6, "#838486"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 213
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {v4, v10, v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 218
    .local v0, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x7f020184

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 221
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v2, "retryParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v3, "retryView":Landroid/widget/TextView;
    const-string/jumbo v6, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const-string/jumbo v6, "#2076EA"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 230
    const v6, 0x7f020401

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 231
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {v2, v10, v10, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setClickable(Z)V

    .line 234
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v6, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;

    invoke-direct {v6, p0, v5, v3, v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$4;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->t:Landroid/widget/LinearLayout;

    return-object v6
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/LinearLayout;

    .prologue
    .line 158
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->s:Landroid/view/View;

    .line 161
    return-void
.end method

.method public b(I)V
    .locals 12
    .param p1, "popType"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->w:I

    .line 107
    const/4 v6, 0x1

    iput v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->u:I

    .line 108
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v4, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const-string/jumbo v6, "#212325"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v3, "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const/4 v6, 0x4

    if-eq v6, p1, :cond_0

    .line 121
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x7f020322

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iget-object v9, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "imageLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v6, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$1;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$1;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .end local v0    # "imageLayout":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0, v4, v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 18
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 298
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v14, 0x4046000000000000L    # 44.0

    invoke-static {v13, v14, v15}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v13

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v6, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 263
    const/16 v12, 0x11

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 265
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 266
    .local v2, "divideLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v3, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v3, "divideParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 269
    .local v10, "view":Landroid/view/View;
    const-string/jumbo v12, "#E2E2E2"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 270
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-static {v13, v14, v15}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v11, "viewParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v14, 0x402c000000000000L    # 14.0

    invoke-static {v12, v14, v15}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v14, 0x402c000000000000L    # 14.0

    invoke-static {v13, v14, v15}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v16, 0x402c000000000000L    # 14.0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 272
    invoke-virtual {v2, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 276
    .local v9, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const-string/jumbo v12, "#2076EA"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 279
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v8, "textLayout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v5, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 283
    .local v5, "imageView":Landroid/widget/ImageView;
    const v12, 0x7f0203c2

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v4, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v4, "imageLayout":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    invoke-static {v12, v14, v15}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 286
    invoke-virtual {v7, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v12, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$5;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getCacheVersion()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public abstract d()V
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_group"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v1, "d_click"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90030"

    .line 497
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 498
    return-void
.end method

.method public abstract e()V
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d()V

    .line 99
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->e()V

    .line 101
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->m()V

    .line 102
    return-void
.end method

.method public getCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheAll()Laic;
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakm;->b(Ljava/lang/String;)Laic;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheVersion()I
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public getCardGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->v:I

    return v0
.end method

.method public getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x4016000000000000L    # 5.5

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 443
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const-string/jumbo v1, "Banner"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v3, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 453
    :goto_0
    return-object v0

    .line 447
    :cond_0
    const-string/jumbo v1, "YueTingKa"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v3, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "local"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "top"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "recommend"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d:Ljava/lang/String;

    .line 153
    :goto_0
    return-object v0

    .line 145
    :cond_1
    const-string/jumbo v0, "Food"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u9910\u9986-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    const-string/jumbo v0, "ListenBook"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u542c\u4e66-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v0, "News"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u65b0\u95fb-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$2;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$3;-><init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public j()V
    .locals 6

    .prologue
    .line 302
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->addView(Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 458
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 459
    .local v0, "changeOrderEvent":Laia;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laia;->b(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laia;->a(Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laia;->a(Z)V

    .line 462
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laia;->b(Z)V

    .line 463
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 481
    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    .line 485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 486
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_group"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90027"

    .line 488
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 489
    return-void
.end method

.method public setCallBack(Laij;)V
    .locals 0
    .param p1, "callBack"    # Laij;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->q:Laij;

    .line 91
    return-void
.end method

.method public abstract setHomeResultCallback(Lail;)V
.end method
