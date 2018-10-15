.class public Lajb;
.super Lba;
.source "CBPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lba;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lajc;

.field private d:Z

.field private e:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

.field private final f:I


# direct methods
.method public constructor <init>(Lajc;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "holderCreator"    # Lajc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajc;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lba;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajb;->d:Z

    .line 24
    const/16 v0, 0x12c

    iput v0, p0, Lajb;->f:I

    .line 84
    iput-object p1, p0, Lajb;->c:Lajc;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajb;->a:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajb;->b:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lajb;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lajb;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    iget-object v0, p0, Lajb;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lajb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 27
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    invoke-virtual {p0}, Lajb;->a()I

    move-result v0

    .line 28
    .local v0, "realCount":I
    if-nez v0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1

    .line 30
    :cond_0
    rem-int v1, p1, v0

    .line 31
    .local v1, "realPosition":I
    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    const/high16 v2, 0x7f0b0000

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "holder":Lajd;
    if-nez p2, :cond_1

    .line 94
    iget-object v1, p0, Lajb;->c:Lajc;

    invoke-interface {v1}, Lajc;->createHolder()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lajd;
    check-cast v0, Lajd;

    .line 95
    .restart local v0    # "holder":Lajd;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lajd;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 96
    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    :goto_0
    iget-object v1, p0, Lajb;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lajb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lajb;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lajb;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, p1, v3, v1}, Lajd;->updateUI(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-object p2

    .line 98
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lajd;
    check-cast v0, Lajd;

    .restart local v0    # "holder":Lajd;
    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .prologue
    .line 80
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    iput-object p1, p0, Lajb;->e:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .line 81
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "canLoop"    # Z

    .prologue
    .line 76
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    iput-boolean p1, p0, Lajb;->d:Z

    .line 77
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 53
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 54
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    iget-object v1, p0, Lajb;->e:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getCurrentItem()I

    move-result v0

    .line 60
    .local v0, "position":I
    if-nez v0, :cond_1

    .line 61
    iget-object v1, p0, Lajb;->e:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getFristItem()I

    move-result v0

    .line 66
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lajb;->e:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lajb;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lajb;->e:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getLastItem()I

    move-result v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    iget-boolean v0, p0, Lajb;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lajb;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x12c

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lajb;->a()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 45
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    invoke-virtual {p0, p2}, Lajb;->a(I)I

    move-result v0

    .line 46
    .local v0, "realPosition":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lajb;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 72
    .local p0, "this":Lajb;, "Lajb<TT;>;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
