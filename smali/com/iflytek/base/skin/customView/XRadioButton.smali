.class public Lcom/iflytek/base/skin/customView/XRadioButton;
.super Landroid/widget/RadioButton;
.source "XRadioButton.java"

# interfaces
.implements Lcom/iflytek/base/skin/IRecyleResource;


# instance fields
.field private mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    const-string/jumbo v1, "main"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XRadioButton;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string/jumbo v0, "main"

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/XRadioButton;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/iflytek/base/skin/customView/XRadioButton;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private init(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;-><init>(Landroid/widget/CompoundButton;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XRadioButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XRadioButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 47
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method public recyleResource()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XRadioButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XRadioButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;->getCustomBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public final setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XRadioButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 52
    return-void
.end method

.method public final setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 56
    const-string/jumbo v0, "3GC101"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XRadioButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XRadioButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/CompoundButtonDrawer;->setCustomButtonDrawable(Landroid/widget/CompoundButton;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 60
    return-void
.end method
