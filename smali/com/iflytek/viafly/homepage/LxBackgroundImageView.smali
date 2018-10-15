.class public Lcom/iflytek/viafly/homepage/LxBackgroundImageView;
.super Landroid/widget/ImageView;
.source "LxBackgroundImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 23
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxBackgroundImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lhl;->g(Landroid/content/Context;)I

    move-result v3

    .line 24
    .local v3, "screenHeight":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxBackgroundImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lhl;->f(Landroid/content/Context;)I

    move-result v4

    .line 25
    .local v4, "screenWidth":I
    int-to-float v6, v3

    int-to-float v7, v4

    div-float v0, v6, v7

    .line 28
    .local v0, "hTow":F
    const v2, 0x3fdaaaab

    .line 29
    .local v2, "picHtoW":F
    cmpl-float v6, v0, v2

    if-lez v6, :cond_0

    .line 30
    int-to-float v6, v3

    div-float/2addr v6, v2

    float-to-int v5, v6

    .line 31
    .local v5, "width":I
    add-int/lit8 v6, v5, 0xa

    add-int/lit8 v7, v3, 0xa

    invoke-virtual {p0, v6, v7}, Lcom/iflytek/viafly/homepage/LxBackgroundImageView;->setMeasuredDimension(II)V

    .line 36
    .end local v5    # "width":I
    :goto_0
    return-void

    .line 33
    :cond_0
    int-to-float v6, v4

    mul-float/2addr v6, v2

    float-to-int v1, v6

    .line 34
    .local v1, "height":I
    add-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v1, 0xa

    invoke-virtual {p0, v6, v7}, Lcom/iflytek/viafly/homepage/LxBackgroundImageView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
