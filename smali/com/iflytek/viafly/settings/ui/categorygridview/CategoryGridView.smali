.class public Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;
.super Landroid/widget/LinearLayout;
.source "CategoryGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;
    }
.end annotation


# static fields
.field public static final DISPLAY_ADD:I = 0x1

.field public static final DISPLAY_NORMAL:I = 0x0

.field public static final DISPLAY_REDUCE:I = 0x2


# instance fields
.field public LINE_CONNT:I

.field private callback:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

.field private cardCategoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private categoryAdapter:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

.field protected mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "num"    # I
    .param p4, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "mCategoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->LINE_CONNT:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mState:I

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    .line 48
    iput p4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mState:I

    .line 49
    iput p3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->LINE_CONNT:I

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->setOrientation(I)V

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->initView()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IILcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "num"    # I
    .param p4, "state"    # I
    .param p5, "mICategoryClickItem"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;II",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "mCategoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->LINE_CONNT:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mState:I

    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    .line 36
    iput p4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mState:I

    .line 37
    iput p3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->LINE_CONNT:I

    .line 38
    iput-object p5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->callback:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->setOrientation(I)V

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->initView()V

    .line 41
    return-void
.end method


# virtual methods
.method public getCategoryData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    return-object v0
.end method

.method public initView()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    .line 68
    new-instance v0, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "gridView":Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v2

    .line 74
    .local v2, "width":I
    const/16 v3, 0x2d0

    if-ge v2, v3, :cond_0

    .line 75
    iget v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->LINE_CONNT:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->LINE_CONNT:I

    .line 77
    :cond_0
    iget v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->LINE_CONNT:I

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;->setNumColumns(I)V

    .line 78
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    if-nez v3, :cond_1

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    .line 81
    :cond_1
    new-instance v3, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    iget v6, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->mState:I

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->callback:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->categoryAdapter:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    .line 82
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->categoryAdapter:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/homepage/life/GridViewFullExpand;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method

.method public updateCategoryData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->categoryAdapter:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->cardCategoryItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->update(Ljava/util/List;)V

    .line 62
    return-void
.end method
