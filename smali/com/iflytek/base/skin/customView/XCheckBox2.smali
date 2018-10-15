.class public Lcom/iflytek/base/skin/customView/XCheckBox2;
.super Landroid/widget/ImageView;
.source "XCheckBox2.java"

# interfaces
.implements Lcom/iflytek/base/skin/IRecyleResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;
    }
.end annotation


# instance fields
.field private mIsSelected:Z

.field private mStateList:Ljava/util/EnumMap;
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

.field private mViewDrawer:Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    const-string/jumbo v1, "main"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const-string/jumbo v0, "main"

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/base/skin/customView/XCheckBox2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XCheckBox2;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/iflytek/base/skin/customView/XCheckBox2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XCheckBox2;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/iflytek/base/skin/customView/XCheckBox2;Ljava/util/EnumMap;)Ljava/util/EnumMap;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XCheckBox2;
    .param p1, "x1"    # Ljava/util/EnumMap;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;-><init>(Lcom/iflytek/base/skin/customView/XCheckBox2;Landroid/widget/ImageView;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mViewDrawer:Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;

    .line 55
    new-instance v0, Lcom/iflytek/base/skin/customView/XCheckBox2$1;

    invoke-direct {v0, p0}, Lcom/iflytek/base/skin/customView/XCheckBox2$1;-><init>(Lcom/iflytek/base/skin/customView/XCheckBox2;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mIsSelected:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mViewDrawer:Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 73
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    return-void
.end method

.method public recyleResource()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mViewDrawer:Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mViewDrawer:Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->getCustomBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 184
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;>;"
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    .line 185
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mIsSelected:Z

    .line 87
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    if-eqz p1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    sget-object v2, Lcom/iflytek/base/skin/State;->ENABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 105
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    sget-object v2, Lcom/iflytek/base/skin/State;->ENABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 99
    :cond_3
    if-eqz p1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    sget-object v2, Lcom/iflytek/base/skin/State;->DISABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    sget-object v2, Lcom/iflytek/base/skin/State;->DISABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public final setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mViewDrawer:Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 78
    return-void
.end method

.method public final setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mViewDrawer:Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/XCheckBox2$XCheckBox2Drawer;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 82
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2;->mStateList:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    goto :goto_0
.end method
