.class public Lcom/iflytek/base/skin/customView/XListView;
.super Landroid/widget/ListView;
.source "XListView.java"

# interfaces
.implements Lcom/iflytek/base/skin/IRecyleResource;
.implements Lcom/iflytek/base/skin/customView/ISpaceViewSetting;


# instance fields
.field private mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

.field private mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    const-string/jumbo v1, "main"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string/jumbo v0, "main"

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/XListView;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/iflytek/base/skin/customView/XListView;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private init(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lcom/iflytek/base/skin/customView/ListViewDrawer;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/ListViewDrawer;-><init>(Landroid/widget/ListView;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    .line 42
    new-instance v0, Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    .line 43
    return-void
.end method


# virtual methods
.method public getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSpace()V

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 49
    return-void
.end method

.method public recyleResource()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->getCustomBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    return-void
.end method

.method public final setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 64
    return-void
.end method

.method public final setCustomCachColorHint(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->setCustomCachColorHint(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 68
    return-void
.end method

.method public final setCustomDivider(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->setCustomDivider(Landroid/widget/ListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 76
    return-void
.end method

.method public final setCustomSelector(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListView;->mViewDrawer:Lcom/iflytek/base/skin/customView/ListViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->setCustomSelector(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 72
    return-void
.end method
