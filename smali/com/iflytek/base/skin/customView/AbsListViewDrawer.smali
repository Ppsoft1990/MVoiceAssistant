.class Lcom/iflytek/base/skin/customView/AbsListViewDrawer;
.super Lcom/iflytek/base/skin/customView/ViewDrawer;
.source "AbsListViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/iflytek/base/skin/customView/ViewDrawer",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pluginId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/iflytek/base/skin/customView/AbsListViewDrawer;, "Lcom/iflytek/base/skin/customView/AbsListViewDrawer<TV;>;"
    .local p1, "view":Landroid/widget/AbsListView;, "TV;"
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/base/skin/customView/ViewDrawer;-><init>(Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 27
    .local p0, "this":Lcom/iflytek/base/skin/customView/AbsListViewDrawer;, "Lcom/iflytek/base/skin/customView/AbsListViewDrawer<TV;>;"
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 29
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setCachColorHint(Ljava/lang/String;)V

    .line 30
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setSelector(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method bridge synthetic freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/iflytek/base/skin/customView/AbsListViewDrawer;, "Lcom/iflytek/base/skin/customView/AbsListViewDrawer<TV;>;"
    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->freshSkin(Landroid/widget/AbsListView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method freshSkin(Landroid/widget/AbsListView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 2
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/iflytek/base/skin/customView/XAttributeSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/iflytek/base/skin/customView/AbsListViewDrawer;, "Lcom/iflytek/base/skin/customView/AbsListViewDrawer<TV;>;"
    .local p1, "view":Landroid/widget/AbsListView;, "TV;"
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 37
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getCachColorHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->setCustomCachColorHint(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 38
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getSelector()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->setCustomSelector(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 39
    return-void
.end method

.method final setCustomCachColorHint(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 3
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/skin/Orientation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/iflytek/base/skin/customView/AbsListViewDrawer;, "Lcom/iflytek/base/skin/customView/AbsListViewDrawer<TV;>;"
    .local p1, "view":Landroid/widget/AbsListView;, "TV;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 51
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setCachColorHint(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/iflytek/base/skin/IThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v1

    .line 54
    .local v1, "cachColorHint":I
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 56
    .end local v0    # "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    .end local v1    # "cachColorHint":I
    :cond_0
    return-void
.end method

.method final setCustomSelector(Landroid/widget/AbsListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 3
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/skin/Orientation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/iflytek/base/skin/customView/AbsListViewDrawer;, "Lcom/iflytek/base/skin/customView/AbsListViewDrawer<TV;>;"
    .local p1, "view":Landroid/widget/AbsListView;, "TV;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 70
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 71
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setSelector(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .end local v0    # "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
