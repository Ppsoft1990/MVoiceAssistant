.class Lcom/iflytek/base/skin/customView/TextViewDrawer;
.super Lcom/iflytek/base/skin/customView/ViewDrawer;
.source "TextViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/base/skin/customView/ViewDrawer",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/base/skin/customView/ViewDrawer;-><init>(Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 31
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setCompoundDrawable(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setTextStyle(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method bridge synthetic freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->freshSkin(Landroid/widget/TextView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method freshSkin(Landroid/widget/TextView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 39
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getCompoundDrawable()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    .line 39
    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->setCustomCompoundDrawable(Landroid/widget/TextView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 41
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getTextStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->setCustomStyle(Landroid/widget/TextView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 42
    return-void
.end method

.method final setCustomCompoundDrawable(Landroid/widget/TextView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    const/4 v6, 0x4

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 53
    const-string/jumbo v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "values":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-ne v6, v4, :cond_2

    .line 55
    new-array v1, v6, [Landroid/graphics/drawable/Drawable;

    .line 56
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 57
    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    aget-object v4, v3, v2

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-interface {v4, v5, p3}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v2

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 63
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setCompoundDrawable(Ljava/lang/String;)V

    .line 65
    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 68
    .end local v0    # "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method final setCustomStyle(Landroid/widget/TextView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/iflytek/base/skin/IThemeManager;->getStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Lcom/iflytek/base/skin/ThemeStyle;

    move-result-object v1

    .line 79
    .local v1, "themeStyle":Lcom/iflytek/base/skin/ThemeStyle;
    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 84
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setTextStyle(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 87
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->getTextSize()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->getTextColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->isBold()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 93
    :cond_2
    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->hasShadow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->getShadowDx()F

    move-result v3

    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->getShadowDy()F

    move-result v4

    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeStyle;->getShadowColor()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
