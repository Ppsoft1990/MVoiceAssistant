.class public Lcom/iflytek/base/skin/customView/XButton;
.super Landroid/widget/Button;
.source "XButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/iflytek/base/skin/IRecyleResource;
.implements Lcom/iflytek/base/skin/customView/ISpaceViewSetting;


# instance fields
.field private mPluginId:Ljava/lang/String;

.field private mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

.field private mStateListDrawables:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/iflytek/base/skin/State;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    const-string/jumbo v1, "main"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const-string/jumbo v0, "main"

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/XButton;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/iflytek/base/skin/customView/XButton;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private getStateList(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;
    .locals 3
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/skin/Orientation;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/iflytek/base/skin/State;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "strings":[Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 115
    const-string/jumbo v1, "stateList"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManagerCache;->getInstance()Lcom/iflytek/base/skin/ThemeManagerCache;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XButton;->mPluginId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/ThemeManagerCache;->get(Ljava/lang/String;)Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {v1, v2, p2}, Lcom/iflytek/base/skin/IThemeManager;->getStates(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;

    move-result-object v1

    .line 120
    .end local v0    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    iput-object p2, p0, Lcom/iflytek/base/skin/customView/XButton;->mPluginId:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/iflytek/base/skin/customView/TextViewDrawer;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/TextViewDrawer;-><init>(Landroid/widget/TextView;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    .line 59
    new-instance v0, Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    .line 60
    return-void
.end method


# virtual methods
.method public getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSpace()V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 68
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XButton;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 158
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 147
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    sget-object v2, Lcom/iflytek/base/skin/State;->PRESSED:Lcom/iflytek/base/skin/State;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 148
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public recyleResource()V
    .locals 3

    .prologue
    .line 163
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->getCustomBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 168
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;>;"
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    .line 176
    return-void
.end method

.method public setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XButton;->getStateList(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    .line 100
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->getXAttributeSet()Lcom/iflytek/base/skin/customView/XAttributeSet;

    move-result-object v0

    .line 102
    .local v0, "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setBackground(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setOrientation(Lcom/iflytek/base/skin/Orientation;)V

    .line 104
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XButton;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 108
    .end local v0    # "attributeSet":Lcom/iflytek/base/skin/customView/XAttributeSet;
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    invoke-virtual {v1, p0, p1, p2}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method public setCustomCompoundDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->setCustomCompoundDrawable(Landroid/widget/TextView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XButton;->mViewDrawer:Lcom/iflytek/base/skin/customView/TextViewDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/TextViewDrawer;->setCustomStyle(Landroid/widget/TextView;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    sget-object v2, Lcom/iflytek/base/skin/State;->NORMAL:Lcom/iflytek/base/skin/State;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 135
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 132
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XButton;->mStateListDrawables:Ljava/util/EnumMap;

    sget-object v2, Lcom/iflytek/base/skin/State;->DISABLED:Lcom/iflytek/base/skin/State;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
