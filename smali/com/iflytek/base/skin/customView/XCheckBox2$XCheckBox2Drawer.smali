.class Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;
.super Lcom/iflytek/base/skin/customView/ViewDrawer;
.source "XCheckBox2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/customView/XCheckBox2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XCheckBox2Drawer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/base/skin/customView/ViewDrawer",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;


# direct methods
.method constructor <init>(Lcom/iflytek/base/skin/customView/XCheckBox2;Landroid/widget/ImageView;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 128
    invoke-direct {p0, p2, p3, p4}, Lcom/iflytek/base/skin/customView/ViewDrawer;-><init>(Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 135
    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setButtonDrawable(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method bridge synthetic freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 125
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->freshSkin(Landroid/widget/ImageView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method freshSkin(Landroid/widget/ImageView;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 142
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getButtonDrawable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 143
    return-void
.end method

.method final setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getStates(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;

    move-result-object v1

    .line 149
    .local v1, "drawables":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-static {v2, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->access$102(Lcom/iflytek/base/skin/customView/XCheckBox2;Ljava/util/EnumMap;)Ljava/util/EnumMap;

    .line 151
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 152
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setButtonDrawable(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 155
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v3, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-static {v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->access$000(Lcom/iflytek/base/skin/customView/XCheckBox2;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 158
    .end local v0    # "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    .end local v1    # "drawables":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    :cond_0
    return-void
.end method
