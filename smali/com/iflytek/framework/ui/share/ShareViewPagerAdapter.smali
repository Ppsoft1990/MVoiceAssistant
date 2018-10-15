.class public Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;
.super Lba;
.source "ShareViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;
    }
.end annotation


# static fields
.field public static final FINAL_VALUE_LINE_COUNT:I = 0x3

.field public static final FINAL_VALUE_LINE_MAX:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMoreRunnable:Ljava/lang/Runnable;

.field private mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    invoke-direct {p0}, Lba;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mMoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Lcom/iflytek/framework/ui/share/AbsShareResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    return-object v0
.end method

.method private subList(I)Ljava/util/List;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    sget-boolean v1, Lazu;->a:Z

    if-eqz v1, :cond_2

    .line 92
    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 93
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 94
    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    mul-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 101
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 102
    mul-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_3
    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private subList(II)Ljava/util/List;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lazu;->a:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xc

    .line 44
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 67
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 55
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03011a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 56
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0b0662

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    .line 57
    .local v1, "gridView":Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;
    invoke-direct {p0, p2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->subList(I)Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    new-instance v2, Lcom/iflytek/framework/ui/share/ShareAdapter;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Lcom/iflytek/framework/ui/share/ShareAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 59
    .local v2, "shareAdapter":Lcom/iflytek/framework/ui/share/ShareAdapter;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    new-instance v4, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;

    invoke-direct {v4, p0, v0}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;-><init>(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 62
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
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

.method public setMoreRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mMoreRunnable:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method public setShareListener(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 0
    .param p1, "shareListener"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .line 82
    return-void
.end method
