.class public Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WrapContentHeightViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 37
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 40
    .local v1, "h":I
    if-le v1, v2, :cond_0

    move v2, v1

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 43
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 44
    return-void
.end method
