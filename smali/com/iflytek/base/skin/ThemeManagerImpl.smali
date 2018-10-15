.class final Lcom/iflytek/base/skin/ThemeManagerImpl;
.super Ljava/lang/Object;
.source "ThemeManagerImpl.java"

# interfaces
.implements Lcom/iflytek/base/skin/IThemeManager;


# instance fields
.field private mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized loadTheme2(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skin"    # Lcom/iflytek/base/skin/ISkin;
    .param p3, "themeDir"    # Ljava/lang/String;
    .param p4, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 65
    monitor-enter p0

    const/4 v1, 0x0

    .line 66
    .local v1, "result":Z
    :try_start_0
    new-instance v0, Lcom/iflytek/base/skin/ResourceLoader1st;

    invoke-direct {v0, p1, p3, p4}, Lcom/iflytek/base/skin/ResourceLoader1st;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)V

    .line 67
    .local v0, "resourceLoader":Lcom/iflytek/base/skin/ResourceLoader;
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/ResourceLoader;->loadThemeInfo(Lcom/iflytek/base/skin/ISkin;)Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v2

    .line 68
    .local v2, "themeInfo":Lcom/iflytek/base/skin/ThemeInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->isInitialize()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->checkSkinVersion()I

    move-result v3

    if-nez v3, :cond_0

    .line 69
    invoke-static {}, Lcom/iflytek/base/skin/ThemeImagePool;->getInstance()Lcom/iflytek/base/skin/ThemeImagePool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/skin/ThemeImagePool;->clear()V

    .line 70
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/ResourceLoader;->loadThemeResource(Lcom/iflytek/base/skin/ISkin;)Z

    move-result v1

    .line 73
    :cond_0
    if-eqz v1, :cond_1

    .line 74
    iput-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    monitor-exit p0

    return v1

    .line 65
    .end local v0    # "resourceLoader":Lcom/iflytek/base/skin/ResourceLoader;
    .end local v2    # "themeInfo":Lcom/iflytek/base/skin/ThemeInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public clearThemeImagePool()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/iflytek/base/skin/ThemeImagePool;->getInstance()Lcom/iflytek/base/skin/ThemeImagePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeImagePool;->clear()V

    .line 123
    return-void
.end method

.method public getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I
    .locals 1
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/ResourceLoader;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/ResourceLoader;->getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/ResourceLoader;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/ResourceLoader;->getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/ResourceLoader;->getState(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 97
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/ResourceLoader;->getStates(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Lcom/iflytek/base/skin/ThemeStyle;
    .locals 1
    .param p1, "styleName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/ResourceLoader;->getStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Lcom/iflytek/base/skin/ThemeStyle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/ResourceLoader;->getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadTheme(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skin"    # Lcom/iflytek/base/skin/ISkin;
    .param p3, "themeDir"    # Ljava/lang/String;
    .param p4, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadTheme(context = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", themeDir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 51
    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    .line 32
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-nez v4, :cond_3

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/base/skin/ThemeManagerImpl;->loadTheme2(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z

    move-result v3

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/base/skin/ThemeManagerImpl;->getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    .line 38
    .local v0, "currentThemeInfo":Lcom/iflytek/base/skin/ThemeInfo;
    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "oldThemeDir":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeInfo;->getResType()Lcom/iflytek/base/skin/ResourceType;

    move-result-object v1

    .line 41
    .local v1, "oldResType":Lcom/iflytek/base/skin/ResourceType;
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p4, v1, :cond_4

    .line 42
    const/4 v3, 0x1

    goto :goto_0

    .line 45
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/base/skin/ThemeManagerImpl;->loadTheme2(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z

    move-result v3

    .line 48
    .local v3, "successed":Z
    if-nez v3, :cond_1

    .line 49
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/iflytek/base/skin/ThemeManagerImpl;->loadTheme2(Landroid/content/Context;Lcom/iflytek/base/skin/ISkin;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    .end local v0    # "currentThemeInfo":Lcom/iflytek/base/skin/ThemeInfo;
    .end local v1    # "oldResType":Lcom/iflytek/base/skin/ResourceType;
    .end local v2    # "oldThemeDir":Ljava/lang/String;
    .end local v3    # "successed":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public recyleCacheImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerImpl;->mResourceLoader:Lcom/iflytek/base/skin/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/ResourceLoader;->recyleCacheImage(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
