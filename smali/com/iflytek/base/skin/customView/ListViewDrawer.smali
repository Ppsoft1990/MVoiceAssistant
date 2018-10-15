.class Lcom/iflytek/base/skin/customView/ListViewDrawer;
.super Lcom/iflytek/base/skin/customView/AbsListViewDrawer;
.source "ListViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/base/skin/customView/AbsListViewDrawer",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/ListView;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ListView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;-><init>(Landroid/widget/AbsListView;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 27
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setDivider(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method bridge synthetic freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->freshSkin(Landroid/widget/ListView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method bridge synthetic freshSkin(Landroid/widget/AbsListView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->freshSkin(Landroid/widget/ListView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method freshSkin(Landroid/widget/ListView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ListView;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/AbsListViewDrawer;->freshSkin(Landroid/widget/AbsListView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 34
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getDivider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->setCustomDivider(Landroid/widget/ListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 35
    return-void
.end method

.method final setCustomDivider(Landroid/widget/ListView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/ListViewDrawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 50
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 51
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setDivider(Ljava/lang/String;)V

    .line 54
    .end local v0    # "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method
