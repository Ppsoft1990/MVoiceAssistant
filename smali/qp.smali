.class public Lqp;
.super Lba;
.source "MainSpeechPagerAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    invoke-direct {p0}, Lba;-><init>()V

    .line 33
    iput-object p1, p0, Lqp;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lqp;->b:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lqp;->e:Ljava/lang/Runnable;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lqp;->c:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private a(II)Ljava/util/List;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 98
    iget-object v2, p0, Lqp;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v0
.end method

.method private b(I)Ljava/util/List;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lqp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 86
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lqp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 87
    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lqp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lqp;->a(II)Ljava/util/List;

    move-result-object v0

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2}, Lqp;->a(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 40
    iput p1, p0, Lqp;->d:I

    .line 41
    invoke-virtual {p0}, Lqp;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lqp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 57
    iget-object v4, p0, Lqp;->c:Landroid/view/LayoutInflater;

    const v5, 0x7f03011a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 58
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0b0662

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 59
    .local v1, "gridView":Landroid/widget/GridView;
    iget v4, p0, Lqp;->d:I

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 61
    invoke-direct {p0, p2}, Lqp;->b(I)Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    new-instance v2, Lqq;

    iget-object v4, p0, Lqp;->a:Landroid/content/Context;

    iget-object v5, p0, Lqp;->e:Ljava/lang/Runnable;

    invoke-direct {v2, v4, v0, v5}, Lqq;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 63
    .local v2, "shareAdapter":Lqq;
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 65
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p2, Landroid/view/View;

    .end local p2    # "o":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
