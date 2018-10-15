.class public Lcom/iflytek/base/skin/customView/XGridView;
.super Landroid/widget/GridView;
.source "XGridView.java"

# interfaces
.implements Lcom/iflytek/base/skin/IRecyleResource;
.implements Lcom/iflytek/base/skin/customView/ISpaceViewSetting;


# instance fields
.field private mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

.field private mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iflytek/base/skin/customView/AbsListViewDrawer",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    const-string/jumbo v1, "main"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XGridView;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string/jumbo v0, "main"

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/XGridView;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/iflytek/base/skin/customView/XGridView;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private init(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;-><init>(Landroid/widget/AbsListView;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    .line 42
    new-instance v0, Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    .line 43
    return-void
.end method


# virtual methods
.method public getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 60
    invoke-super {p0, p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSpace()V

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 49
    return-void
.end method

.method public recyleResource()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->getCustomBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    return-void
.end method

.method public final setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 65
    return-void
.end method

.method public final setCustomCachColorHint(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->setCustomCachColorHint(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 69
    return-void
.end method

.method public final setCustomSelector(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XGridView;->mViewDrawer:Lcom/iflytek/base/skin/customView/AbsListViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->setCustomSelector(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 73
    return-void
.end method
