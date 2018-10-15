.class Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;
.super Ljava/lang/Object;
.source "CBLoopViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

.field private b:F


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->b:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 144
    move v0, p1

    .line 146
    .local v0, "realPosition":I
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)Lajb;

    move-result-object v1

    invoke-virtual {v1}, Lajb;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v1, v0, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    float-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v1, v6, v7, v6}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v1, v0, v7, v6}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)Lajb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lajb;->a(I)I

    move-result v0

    .line 133
    .local v0, "realPosition":I
    iget v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->b:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 134
    int-to-float v1, v0

    iput v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->b:F

    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;->a:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v1, v0}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 139
    :cond_0
    return-void
.end method
