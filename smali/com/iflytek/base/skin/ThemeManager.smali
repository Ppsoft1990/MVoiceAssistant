.class public final Lcom/iflytek/base/skin/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/iflytek/base/skin/IThemeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/ThemeManager$InstanceHolder;
    }
.end annotation


# instance fields
.field private mThemeManager:Lcom/iflytek/base/skin/IThemeManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManagerCache;->getInstance()Lcom/iflytek/base/skin/ThemeManagerCache;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/ThemeManagerCache;->get(Ljava/lang/String;)Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/skin/ThemeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/skin/ThemeManager$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/iflytek/base/skin/ThemeManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/iflytek/base/skin/ThemeManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/iflytek/base/skin/ThemeManager$InstanceHolder;->instance:Lcom/iflytek/base/skin/ThemeManager;

    return-object v0
.end method


# virtual methods
.method public clearThemeImagePool()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0}, Lcom/iflytek/base/skin/IThemeManager;->clearThemeImagePool()V

    .line 80
    return-void
.end method

.method public getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I
    .locals 1
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v0

    return v0
.end method

.method public getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0}, Lcom/iflytek/base/skin/IThemeManager;->getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getState(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getState(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getStates(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
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
    .line 54
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getStates(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public getStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Lcom/iflytek/base/skin/ThemeStyle;
    .locals 1
    .param p1, "styleName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Lcom/iflytek/base/skin/ThemeStyle;

    move-result-object v0

    return-object v0
.end method

.method public getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1}, Lcom/iflytek/base/skin/IThemeManager;->getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadTheme(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skin"    # Lcom/iflytek/base/skin/ISkin;
    .param p3, "themeDir"    # Ljava/lang/String;
    .param p4, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/base/skin/IThemeManager;->loadTheme(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z

    move-result v0

    return v0
.end method

.method public recyleCacheImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManager;->mThemeManager:Lcom/iflytek/base/skin/IThemeManager;

    invoke-interface {v0, p1}, Lcom/iflytek/base/skin/IThemeManager;->recyleCacheImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
