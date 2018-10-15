.class Lcom/iflytek/base/skin/customView/ImageViewDrawer;
.super Lcom/iflytek/base/skin/customView/ViewDrawer;
.source "ImageViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/base/skin/customView/ViewDrawer",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 22
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
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setSrc(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method bridge synthetic freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ImageViewDrawer;->freshSkin(Landroid/widget/ImageView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method freshSkin(Landroid/widget/ImageView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 36
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/base/skin/customView/ImageViewDrawer;->setCustomSrc(Landroid/widget/ImageView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 37
    return-void
.end method

.method final setCustomSrc(Landroid/widget/ImageView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/ImageViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/ImageViewDrawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 51
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setSrc(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .end local v0    # "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
