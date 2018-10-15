.class Lcom/iflytek/base/skin/customView/ViewDrawer;
.super Ljava/lang/Object;
.source "ViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mPluginId:Ljava/lang/String;

.field private mSkin:Ljava/lang/String;

.field private mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 2
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
    .line 36
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p3, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mPluginId:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/iflytek/base/skin/customView/XAttributeSet;

    invoke-direct {v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/iflytek/base/skin/customView/ViewDrawer;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mView:Landroid/view/View;

    .line 42
    return-void
.end method

.method private initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    sget-object v1, Lcom/iflytek/cmcc/R$styleable;->Skin:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/base/skin/customView/ViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 59
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setBackground(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method final draw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/ViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/base/skin/IThemeManager;->getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mSkin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 81
    :cond_0
    return-void
.end method

.method freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
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
    .line 68
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/ViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/base/skin/IThemeManager;->getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mSkin:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getBackground()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/base/skin/customView/ViewDrawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 70
    return-void
.end method

.method final getCustomBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getThemeManager()Lcom/iflytek/base/skin/IThemeManager;
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManagerCache;->getInstance()Lcom/iflytek/base/skin/ThemeManagerCache;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mPluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/ThemeManagerCache;->get(Ljava/lang/String;)Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v0

    return-object v0
.end method

.method final getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;

    return-object v0
.end method

.method final setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 2
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
    .line 90
    .local p0, "this":Lcom/iflytek/base/skin/customView/ViewDrawer;, "Lcom/iflytek/base/skin/customView/ViewDrawer<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/ViewDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;

    invoke-virtual {v1, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setBackground(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/ViewDrawer;->mXAttributeSet:Lcom/iflytek/base/skin/customView/XAttributeSet;

    invoke-virtual {v1, p3}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 98
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 96
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
