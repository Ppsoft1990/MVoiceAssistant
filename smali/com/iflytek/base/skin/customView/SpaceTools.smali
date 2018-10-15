.class final Lcom/iflytek/base/skin/customView/SpaceTools;
.super Ljava/lang/Object;
.source "SpaceTools.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SpaceTools"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasSetHeight:Z

.field private mHasSetWidth:Z

.field private mSetMargin:Z

.field private mSetPadding:Z

.field private mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

.field private mSpaceHelper:Lcom/iflytek/base/skin/customView/SpaceViewHelper;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-direct {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;-><init>()V

    iput-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 66
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/iflytek/cmcc/R$styleable;->Skin:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->initAttr(Landroid/content/res/TypedArray;)V

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    invoke-direct {v1, p0}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;-><init>(Lcom/iflytek/base/skin/customView/SpaceTools;)V

    iput-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceHelper:Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v1, Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    invoke-direct {v1, p0}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;-><init>(Lcom/iflytek/base/skin/customView/SpaceTools;)V

    iput-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceHelper:Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    goto :goto_0
.end method

.method private getAttr(Ljava/lang/String;)I
    .locals 1
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->spiteAttr(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getValue(Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method private getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I
    .locals 2
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "spaceType"    # Lcom/iflytek/base/skin/space/SpaceType;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->spiteAttr(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getValue(Ljava/util/HashMap;)I

    move-result v0

    .line 216
    .local v0, "value":I
    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    .line 217
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 229
    .end local v0    # "value":I
    :cond_0
    :goto_0
    return v0

    .line 219
    .restart local v0    # "value":I
    :cond_1
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 221
    :cond_2
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    .line 223
    :cond_3
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 226
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValue(Ljava/util/HashMap;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, -0x3e8

    .line 281
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v7

    .line 307
    :cond_0
    :goto_0
    return v4

    .line 284
    :cond_1
    iget-object v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    .line 285
    .local v3, "screenWidth":I
    const/16 v4, -0x3e8

    .line 287
    .local v4, "value":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "widthString":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mContext:Landroid/content/Context;

    .line 289
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    .line 288
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "heightString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "*"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "fullDisplay":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 293
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 295
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 297
    :cond_3
    const-string/jumbo v6, "720"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    int-to-double v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    const-wide v10, 0x4086800000000000L    # 720.0

    div-double/2addr v8, v10

    const-string/jumbo v6, "720"

    .line 300
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 299
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v4, v6

    goto :goto_0

    .line 303
    .end local v1    # "fullDisplay":Ljava/lang/String;
    .end local v2    # "heightString":Ljava/lang/String;
    .end local v5    # "widthString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SpaceTools"

    const-string/jumbo v8, "getValue()"

    invoke-static {v6, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v7

    .line 305
    goto :goto_0
.end method

.method private getViewMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 3

    .prologue
    const/16 v2, -0x3e8

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 338
    .restart local v0    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_5

    .line 340
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 341
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 345
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginLeft()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginLeft()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginTop()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 353
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginRight()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 357
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginRight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 360
    :cond_4
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginBottom()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 361
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 365
    :cond_5
    return-object v0
.end method

.method private initSkinMarginByType(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "spaceType"    # Lcom/iflytek/base/skin/space/SpaceType;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v0

    .line 585
    .local v0, "valueSize":I
    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->HEIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_2

    .line 590
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setHeight(I)V

    goto :goto_0

    .line 591
    :cond_2
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->WIDTH:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_3

    .line 592
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setWidth(I)V

    goto :goto_0

    .line 593
    :cond_3
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_4

    .line 594
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginLeft(I)V

    goto :goto_0

    .line 595
    :cond_4
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_5

    .line 596
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginTop(I)V

    goto :goto_0

    .line 597
    :cond_5
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_6

    .line 598
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginRight(I)V

    goto :goto_0

    .line 599
    :cond_6
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginBottom(I)V

    goto :goto_0
.end method

.method private setDefaultPaddingValue()V
    .locals 3

    .prologue
    const/16 v2, -0x3e8

    .line 405
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingLeft()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingLeft(I)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingTop()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 409
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingTop(I)V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingRight()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 412
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingRight(I)V

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingBottom()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 415
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingBottom(I)V

    .line 417
    :cond_3
    return-void
.end method

.method private setLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 652
    if-nez p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 656
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setMarginByType(Lcom/iflytek/base/skin/space/SpaceType;)V
    .locals 3
    .param p1, "spaceType"    # Lcom/iflytek/base/skin/space/SpaceType;

    .prologue
    const/16 v2, -0x3e8

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 614
    .restart local v0    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_0

    .line 615
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->HEIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p1, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 617
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 643
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 644
    return-void

    .line 619
    :cond_1
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->WIDTH:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p1, v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 621
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 623
    :cond_2
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p1, v1, :cond_3

    .line 624
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginLeft()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 625
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginLeft()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 627
    :cond_3
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p1, v1, :cond_4

    .line 628
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginTop()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 629
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 631
    :cond_4
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p1, v1, :cond_5

    .line 632
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginRight()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 633
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 634
    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginRight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 636
    :cond_5
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p1, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginBottom()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 638
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 639
    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getMarginBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private setPadding()V
    .locals 5

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetPadding:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 374
    invoke-virtual {v2}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 375
    invoke-virtual {v4}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingBottom()I

    move-result v4

    .line 373
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 377
    :cond_0
    return-void
.end method

.method private setTextSize()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method private static spiteAttr(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p0, "attr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 239
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "space"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    invoke-static {}, Lcom/iflytek/base/skin/space/SpaceValueManager;->getInstance()Lcom/iflytek/base/skin/space/SpaceValueManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/iflytek/base/skin/space/SpaceValueManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 245
    const-string/jumbo v6, "\\|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "attrArray":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v6, v0

    if-lez v6, :cond_3

    .line 247
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 248
    aget-object v4, v0, v2

    .line 249
    .local v4, "keyValueString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 250
    const-string/jumbo v6, ":"

    .line 251
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "keyValueArray":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 253
    array-length v6, v3

    if-ne v6, v10, :cond_2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    .line 254
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 255
    const-string/jumbo v6, "720"

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    .line 256
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v3    # "keyValueArray":[Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .restart local v3    # "keyValueArray":[Ljava/lang/String;
    :cond_2
    array-length v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    aget-object v6, v3, v6

    .line 258
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    aget-object v6, v3, v6

    .line 259
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string/jumbo v7, " "

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 267
    .end local v0    # "attrArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "keyValueArray":[Ljava/lang/String;
    .end local v4    # "keyValueString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SpaceTools"

    const-string/jumbo v7, "spiteAttr"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v5
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 804
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    .line 805
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_0
    instance-of v1, v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    if-eqz v1, :cond_1

    .line 809
    check-cast v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    .line 810
    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-interface {v0}, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setRootParams()V

    .line 813
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    .line 830
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 832
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    .line 833
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_0
    instance-of v1, v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    if-eqz v1, :cond_1

    .line 837
    check-cast v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    .line 838
    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-interface {v0}, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setRootParams()V

    .line 841
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 816
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    .line 819
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 822
    :cond_0
    instance-of v1, v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    if-eqz v1, :cond_1

    .line 823
    check-cast v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    .line 824
    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-interface {v0}, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setRootParams()V

    .line 827
    :cond_1
    return-void
.end method

.method public getSpaceAttr()Lcom/iflytek/base/skin/space/SpaceAttr;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    return-object v0
.end method

.method public getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceHelper:Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    return-object v0
.end method

.method public initAttr(Landroid/content/res/TypedArray;)V
    .locals 20
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 93
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "height":Ljava/lang/String;
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 96
    .local v16, "width":Ljava/lang/String;
    const/16 v18, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "marginLeft":Ljava/lang/String;
    const/16 v18, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "marginTop":Ljava/lang/String;
    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "marginRight":Ljava/lang/String;
    const/16 v18, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "marginBottom":Ljava/lang/String;
    const/16 v18, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "paddingLeft":Ljava/lang/String;
    const/16 v18, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 103
    .local v15, "paddingTop":Ljava/lang/String;
    const/16 v18, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 104
    .local v14, "paddingRight":Ljava/lang/String;
    const/16 v18, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, "paddingBottom":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 112
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v3

    .line 113
    .local v3, "heightValue":I
    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-eq v3, v0, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/space/SpaceAttr;->setHeight(I)V

    .line 115
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetMargin:Z

    .line 116
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mHasSetHeight:Z

    .line 120
    .end local v3    # "heightValue":I
    :cond_0
    if-eqz v16, :cond_1

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v17

    .line 122
    .local v17, "widthValue":I
    const/16 v18, -0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setWidth(I)V

    .line 124
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetMargin:Z

    .line 125
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mHasSetWidth:Z

    .line 129
    .end local v17    # "widthValue":I
    :cond_1
    if-eqz v6, :cond_2

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v7

    .line 131
    .local v7, "marginLeftValue":I
    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginLeft(I)V

    .line 133
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetMargin:Z

    .line 137
    .end local v7    # "marginLeftValue":I
    :cond_2
    if-eqz v10, :cond_3

    .line 138
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v11

    .line 139
    .local v11, "marginTopValue":I
    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-eq v11, v0, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginTop(I)V

    .line 141
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetMargin:Z

    .line 145
    .end local v11    # "marginTopValue":I
    :cond_3
    if-eqz v8, :cond_4

    .line 146
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v9

    .line 147
    .local v9, "marginRightValue":I
    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-eq v9, v0, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginRight(I)V

    .line 149
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetMargin:Z

    .line 153
    .end local v9    # "marginRightValue":I
    :cond_4
    if-eqz v4, :cond_5

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, "marginBottomValue":I
    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/iflytek/base/skin/space/SpaceAttr;->setMarginBottom(I)V

    .line 157
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetMargin:Z

    .line 161
    .end local v5    # "marginBottomValue":I
    :cond_5
    if-nez v13, :cond_6

    if-nez v15, :cond_6

    if-nez v14, :cond_6

    if-eqz v12, :cond_7

    .line 163
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetPadding:Z

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    sget-object v19, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingLeft(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    sget-object v19, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingTop(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    sget-object v19, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingRight(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    move-object/from16 v18, v0

    sget-object v19, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingBottom(I)V

    .line 201
    :cond_8
    return-void
.end method

.method public setAllMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "top"    # Ljava/lang/String;
    .param p3, "right"    # Ljava/lang/String;
    .param p4, "bottom"    # Ljava/lang/String;

    .prologue
    .line 672
    sget-object v0, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->initSkinMarginByType(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 673
    sget-object v0, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->initSkinMarginByType(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 674
    sget-object v0, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p3, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->initSkinMarginByType(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 675
    sget-object v0, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p4, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->initSkinMarginByType(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 676
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getViewMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 678
    return-void
.end method

.method public setAllPaddings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paddingLeft"    # Ljava/lang/String;
    .param p2, "paddingTop"    # Ljava/lang/String;
    .param p3, "paddingRight"    # Ljava/lang/String;
    .param p4, "paddingBottom"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p1, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingLeft(I)V

    .line 463
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p2, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingTop(I)V

    .line 464
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    .line 465
    invoke-direct {p0, p2, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingRight(I)V

    .line 466
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p2, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingBottom(I)V

    .line 468
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSkinPadding()V

    .line 469
    return-void
.end method

.method public setMargin()V
    .locals 5

    .prologue
    .line 314
    iget-boolean v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSetMargin:Z

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 316
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/widget/AbsListView;

    if-nez v3, :cond_0

    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getViewMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    .line 319
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_0

    .line 320
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 322
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SpaceTools"

    const-string/jumbo v4, "setMargin()"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMarginParam(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "spaceType"    # Lcom/iflytek/base/skin/space/SpaceType;

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/SpaceTools;->initSkinMarginByType(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 571
    invoke-direct {p0, p2}, Lcom/iflytek/base/skin/customView/SpaceTools;->setMarginByType(Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 572
    return-void
.end method

.method public setMeasuredDimension()V
    .locals 10

    .prologue
    .line 715
    iget-boolean v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mHasSetHeight:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mHasSetWidth:Z

    if-nez v6, :cond_0

    .line 744
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 719
    .local v3, "heightMeasureSpec":I
    iget-object v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 721
    .local v5, "widthMeasureSpec":I
    iget-boolean v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mHasSetHeight:Z

    if-eqz v6, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getSpaceAttr()Lcom/iflytek/base/skin/space/SpaceAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v3

    .line 725
    :cond_1
    iget-boolean v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mHasSetWidth:Z

    if-eqz v6, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getSpaceAttr()Lcom/iflytek/base/skin/space/SpaceAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v5

    .line 729
    :cond_2
    iget-object v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 730
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.view.View"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 731
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 734
    :cond_3
    :try_start_0
    const-string/jumbo v6, "setMeasuredDimension"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 736
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 737
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    .line 738
    .local v0, "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 739
    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 740
    iget-object v6, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    invoke-virtual {v4, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SpaceTools"

    const-string/jumbo v7, "setMeasuredDimension()"

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMinValues()V
    .locals 0

    .prologue
    .line 704
    return-void
.end method

.method public setPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V
    .locals 2
    .param p1, "padding"    # Ljava/lang/String;
    .param p2, "spaceType"    # Lcom/iflytek/base/skin/space/SpaceType;

    .prologue
    .line 432
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_1

    .line 433
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p1, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v0

    .line 434
    .local v0, "value":I
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingLeft(I)V

    .line 445
    .end local v0    # "value":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setDefaultPaddingValue()V

    .line 446
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSkinPadding()V

    .line 447
    return-void

    .line 435
    :cond_1
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_2

    .line 436
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p1, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v0

    .line 437
    .restart local v0    # "value":I
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingTop(I)V

    goto :goto_0

    .line 438
    .end local v0    # "value":I
    :cond_2
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_3

    .line 439
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p1, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v0

    .line 440
    .restart local v0    # "value":I
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingRight(I)V

    goto :goto_0

    .line 441
    .end local v0    # "value":I
    :cond_3
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    if-ne p2, v1, :cond_0

    .line 442
    sget-object v1, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-direct {p0, p1, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getPaddingValue(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)I

    move-result v0

    .line 443
    .restart local v0    # "value":I
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setPaddingBottom(I)V

    goto :goto_0
.end method

.method public setRootParams()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setRootParams(Landroid/view/ViewGroup;)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setMargin()V

    goto :goto_0
.end method

.method public setRootParams(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 769
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 770
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 771
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 772
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 773
    instance-of v3, v2, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 774
    check-cast v3, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    invoke-interface {v3}, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setMargin()V

    .line 776
    :cond_0
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/iflytek/base/skin/customView/SpaceTools;->setRootParams(Landroid/view/ViewGroup;)V

    .line 770
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    instance-of v3, v2, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    if-eqz v3, :cond_1

    .line 779
    check-cast v2, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    .end local v2    # "view":Landroid/view/View;
    invoke-interface {v2}, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setMargin()V

    goto :goto_1

    .line 783
    :cond_3
    return-void
.end method

.method public setSkinHeight(Ljava/lang/String;)V
    .locals 4
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    const/16 v3, -0x3e8

    .line 481
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v1

    .line 482
    .local v1, "value":I
    if-ne v1, v3, :cond_0

    .line 496
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v2, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setHeight(I)V

    .line 488
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getViewMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    .line 489
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_1

    .line 490
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 491
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 495
    :cond_1
    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0
.end method

.method public setSkinPadding()V
    .locals 5

    .prologue
    .line 384
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 385
    invoke-virtual {v2}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 386
    invoke-virtual {v4}, Lcom/iflytek/base/skin/space/SpaceAttr;->getPaddingBottom()I

    move-result v4

    .line 384
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 388
    return-void
.end method

.method public setSkinWidth(Ljava/lang/String;)V
    .locals 4
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    const/16 v3, -0x3e8

    .line 507
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v1

    .line 508
    .local v1, "value":I
    if-ne v1, v3, :cond_0

    .line 521
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v2, v1}, Lcom/iflytek/base/skin/space/SpaceAttr;->setWidth(I)V

    .line 513
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getViewMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    .line 514
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_1

    .line 515
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 516
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 520
    :cond_1
    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0
.end method

.method public setSkinWidthHeight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "width"    # Ljava/lang/String;
    .param p2, "height"    # Ljava/lang/String;

    .prologue
    const/16 v4, -0x3e8

    .line 534
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v2

    .line 535
    .local v2, "widthValue":I
    invoke-direct {p0, p2}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v0

    .line 536
    .local v0, "heightValue":I
    if-ne v2, v4, :cond_0

    if-ne v0, v4, :cond_0

    .line 561
    :goto_0
    return-void

    .line 540
    :cond_0
    if-eq v2, v4, :cond_1

    .line 541
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/space/SpaceAttr;->setWidth(I)V

    .line 544
    :cond_1
    if-eq v0, v4, :cond_2

    .line 545
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/space/SpaceAttr;->setHeight(I)V

    .line 548
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getViewMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    .line 550
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_4

    .line 551
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 552
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 555
    :cond_3
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/space/SpaceAttr;->getWidth()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 556
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/space/SpaceAttr;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 560
    :cond_4
    invoke-direct {p0, v1}, Lcom/iflytek/base/skin/customView/SpaceTools;->setLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0
.end method

.method public setSpace()V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setPadding()V

    .line 686
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setMargin()V

    .line 687
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setTextSize()V

    .line 688
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setMinValues()V

    .line 690
    return-void
.end method

.method public setSpaceAttr(Lcom/iflytek/base/skin/space/SpaceAttr;)V
    .locals 0
    .param p1, "spaceAttr"    # Lcom/iflytek/base/skin/space/SpaceAttr;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mSpaceAttr:Lcom/iflytek/base/skin/space/SpaceAttr;

    .line 78
    return-void
.end method

.method public setTextSize(Ljava/lang/String;)V
    .locals 3
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceTools;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->getAttr(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 766
    :cond_0
    return-void
.end method
