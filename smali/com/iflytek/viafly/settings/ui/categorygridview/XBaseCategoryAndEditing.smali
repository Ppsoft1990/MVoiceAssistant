.class public Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XBaseCategoryAndEditing.java"


# static fields
.field public static final CONCERNED_KEY:Ljava/lang/String; = "concerned"

.field public static final GROUP_ID_KEY:Ljava/lang/String; = "groupId"

.field static final NUMBER_PER_LINE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "XBaseCategoryAndEditing"


# instance fields
.field private editView:Landroid/widget/TextView;

.field private groupId:Ljava/lang/String;

.field intent:Landroid/content/Intent;

.field mCategoryDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGridViews:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

.field private rootView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "mCategoryListCon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mCategoryDatas:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->groupId:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;II)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mGridViews:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    .line 48
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mCategoryDatas:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->groupId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/16 v9, 0xa

    const/4 v8, -0x2

    .line 60
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 61
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v10, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 64
    .local v0, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lhl;->d(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 67
    .local v3, "width":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v1, "mGridViewsParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mGridViews:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    invoke-virtual {v4, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mGridViews:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mGridViews:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    invoke-virtual {v4, v11}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->setVisibility(I)V

    .line 72
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    .line 75
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v2, "tvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    invoke-virtual {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 80
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    invoke-static {v4, v12, v13}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 81
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    invoke-static {v4, v12, v13}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 82
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mContext:Landroid/content/Context;

    const-wide v6, 0x4046800000000000L    # 45.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 83
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    const-string/jumbo v5, "\u7f16\u8f91"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    const-string/jumbo v5, "#2076EA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v9, v5, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 90
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    new-instance v5, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;-><init>(Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mCategoryDatas:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mCategoryDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0, v11}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    .line 110
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    return-object v4

    .line 107
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->editView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "cardCategoryItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    const-string/jumbo v0, "XBaseCategoryAndEditing"

    const-string/jumbo v1, "updateView"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mCategoryDatas:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mGridViews:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->updateCategoryData(Ljava/util/List;)V

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->setVisible(Z)V

    goto :goto_0
.end method
