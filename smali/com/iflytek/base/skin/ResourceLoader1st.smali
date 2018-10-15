.class final Lcom/iflytek/base/skin/ResourceLoader1st;
.super Lcom/iflytek/base/skin/ResourceLoader;
.source "ResourceLoader1st.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "skin_ResourceLoader1st"


# instance fields
.field private mColors:Ljava/util/Properties;

.field private mContext:Landroid/content/Context;

.field private mCurrentThemeInfo:Lcom/iflytek/base/skin/ThemeInfo;

.field private mDefaultResolutionPath:Ljava/lang/String;

.field private mDefaultResolutionX:I

.field private mImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/skin/ThemeBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mImagesConf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPortStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/skin/ThemeStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mPortStylesConf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResType:Lcom/iflytek/base/skin/ResourceType;

.field private mStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/iflytek/base/skin/State;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatesConf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemResolutionPath:Ljava/lang/String;

.field private mSystemResolutionX:I

.field private mThemeDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeDir"    # Ljava/lang/String;
    .param p3, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    const/16 v0, 0x2d0

    .line 84
    invoke-direct {p0}, Lcom/iflytek/base/skin/ResourceLoader;-><init>()V

    .line 73
    iput v0, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionX:I

    .line 75
    iput v0, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionX:I

    .line 85
    invoke-static {p1}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionX:I

    .line 86
    iput-object p1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mThemeDir:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mResType:Lcom/iflytek/base/skin/ResourceType;

    .line 89
    return-void
.end method

.method private buildPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mThemeDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/base/skin/ResourceLoader1st;->getDrawableDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResources(Ljava/lang/String;Lcom/iflytek/base/skin/ISkin;)Ljava/util/Map;
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "skin"    # Lcom/iflytek/base/skin/ISkin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/skin/ISkin;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 146
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/iflytek/base/skin/ISkin;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 147
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/iflytek/base/skin/ISkin;>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "skin_ResourceLoader1st"

    const-string/jumbo v4, "getResources()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p2, "state"    # Lcom/iflytek/base/skin/State;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/iflytek/base/skin/State;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iflytek/base/skin/State;",
            "Lcom/iflytek/base/skin/Orientation;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, "stateMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 249
    const/4 v1, 0x0

    .line 251
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, "stateValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    const-string/jumbo v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "strings":[Ljava/lang/String;
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    array-length v5, v3

    if-ne v4, v5, :cond_0

    .line 257
    sget-object v4, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->image:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    aget-object v4, v3, v7

    invoke-virtual {p0, v4, p3}, Lcom/iflytek/base/skin/ResourceLoader1st;->getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 269
    .end local v2    # "stateValue":Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 261
    .restart local v2    # "stateValue":Ljava/lang/String;
    .restart local v3    # "strings":[Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->color:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    aget-object v4, v3, v7

    invoke-virtual {p0, v4, p3}, Lcom/iflytek/base/skin/ResourceLoader1st;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v0

    .line 263
    .local v0, "color":I
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method public getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I
    .locals 6
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 236
    const/4 v0, -0x1

    .line 237
    .local v0, "color":I
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mColors:Ljava/util/Properties;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mColors:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mColors:Ljava/util/Properties;

    invoke-virtual {v3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "colorStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 245
    .end local v1    # "colorStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "skin_ResourceLoader1st"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "colorName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mCurrentThemeInfo:Lcom/iflytek/base/skin/ThemeInfo;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    const-string/jumbo v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "strings":[Ljava/lang/String;
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 343
    sget-object v2, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->color:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    aget-object v2, v1, v5

    invoke-virtual {p0, v2, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v0

    .line 345
    .local v0, "color":I
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 357
    .end local v0    # "color":I
    .end local v1    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 348
    .restart local v1    # "strings":[Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->image:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    aget-object v2, v1, v5

    invoke-virtual {p0, v2, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 352
    :cond_1
    sget-object v2, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->stateList:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    aget-object v2, v1, v5

    invoke-virtual {p0, v2, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getState(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    goto :goto_0

    .line 357
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 162
    sget-object v3, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    if-ne p2, v3, :cond_2

    const/4 v1, 0x1

    .line 163
    .local v1, "landscape":Z
    :goto_0
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImages:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 164
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/ThemeBitmap;

    .line 165
    .local v2, "themeBitmap":Lcom/iflytek/base/skin/ThemeBitmap;
    if-nez v2, :cond_0

    .line 166
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImagesConf:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/iflytek/base/skin/ThemeBitmap;->obtain(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeBitmap;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_0

    .line 168
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionPath:Ljava/lang/String;

    iget v5, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionX:I

    iget v6, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionX:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/ThemeBitmap;->setEnviroment(Ljava/lang/String;Ljava/lang/String;II)V

    .line 170
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImages:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeBitmap;->needCache()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    invoke-static {}, Lcom/iflytek/base/skin/ThemeImagePool;->getInstance()Lcom/iflytek/base/skin/ThemeImagePool;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/iflytek/base/skin/ThemeImagePool;->getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 180
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mResType:Lcom/iflytek/base/skin/ResourceType;

    invoke-virtual {v2, v3, v1, v4}, Lcom/iflytek/base/skin/ThemeBitmap;->getDrawable(Landroid/content/Context;ZLcom/iflytek/base/skin/ResourceType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/iflytek/base/skin/ThemeImagePool;->getInstance()Lcom/iflytek/base/skin/ThemeImagePool;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p2}, Lcom/iflytek/base/skin/ThemeImagePool;->putImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/iflytek/base/skin/Orientation;)V

    .line 191
    .end local v0    # "image":Landroid/graphics/drawable/Drawable;
    .end local v1    # "landscape":Z
    .end local v2    # "themeBitmap":Lcom/iflytek/base/skin/ThemeBitmap;
    :cond_1
    :goto_1
    return-object v0

    .line 162
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    .restart local v1    # "landscape":Z
    .restart local v2    # "themeBitmap":Lcom/iflytek/base/skin/ThemeBitmap;
    :cond_3
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mResType:Lcom/iflytek/base/skin/ResourceType;

    invoke-virtual {v2, v3, v1, v4}, Lcom/iflytek/base/skin/ThemeBitmap;->getDrawable(Landroid/content/Context;ZLcom/iflytek/base/skin/ResourceType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 191
    .end local v1    # "landscape":Z
    .end local v2    # "themeBitmap":Lcom/iflytek/base/skin/ThemeBitmap;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getState(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/StateListDrawable;
    .locals 11
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 295
    const/4 v8, 0x0

    .line 296
    .local v8, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v6, 0x0

    .line 297
    .local v6, "normalDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 298
    .local v5, "focusedDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 299
    .local v7, "pressedDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 301
    .local v0, "disabledDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStates:Ljava/util/Map;

    if-eqz v10, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 302
    iget-object v10, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStates:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/EnumMap;

    .line 303
    .local v9, "stateMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Ljava/lang/String;>;"
    if-nez v9, :cond_0

    .line 304
    iget-object v10, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStatesConf:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/iflytek/base/skin/State;->get(Ljava/lang/String;)Ljava/util/EnumMap;

    move-result-object v9

    .line 305
    iget-object v10, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStates:Ljava/util/Map;

    invoke-interface {v10, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_0
    sget-object v10, Lcom/iflytek/base/skin/State;->NORMAL:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 309
    sget-object v10, Lcom/iflytek/base/skin/State;->FOCUSED:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 310
    sget-object v10, Lcom/iflytek/base/skin/State;->PRESSED:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 311
    sget-object v10, Lcom/iflytek/base/skin/State;->DISABLED:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    .line 315
    invoke-static {v6, v7, v0}, Lcom/iflytek/base/skin/StateListDrawableFactory;->getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    .line 333
    .end local v9    # "stateMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 318
    .restart local v9    # "stateMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Ljava/lang/String;>;"
    :cond_2
    sget-object v10, Lcom/iflytek/base/skin/State;->ENABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 319
    .local v4, "enabled_and_uncheckeDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v10, Lcom/iflytek/base/skin/State;->ENABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 320
    .local v3, "enabled_and_checkeDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v10, Lcom/iflytek/base/skin/State;->DISABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 321
    .local v2, "disabled_and_uncheckeDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v10, Lcom/iflytek/base/skin/State;->DISABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    invoke-direct {p0, v9, v10, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 322
    .local v1, "disabled_and_checkeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 326
    invoke-static {v4, v3, v2, v1}, Lcom/iflytek/base/skin/StateListDrawableFactory;->getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    goto :goto_0
.end method

.method public getStates(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;
    .locals 5
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
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "drawables":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStates:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStates:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    .line 278
    .local v2, "stateMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 279
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStatesConf:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/iflytek/base/skin/State;->get(Ljava/lang/String;)Ljava/util/EnumMap;

    move-result-object v2

    .line 280
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStates:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    if-eqz v2, :cond_1

    .line 284
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "drawables":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    const-class v3, Lcom/iflytek/base/skin/State;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 285
    .restart local v0    # "drawables":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/State;

    .line 286
    .local v1, "state":Lcom/iflytek/base/skin/State;
    invoke-direct {p0, v2, v1, p2}, Lcom/iflytek/base/skin/ResourceLoader1st;->getStateDrawable(Ljava/util/EnumMap;Lcom/iflytek/base/skin/State;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    .end local v1    # "state":Lcom/iflytek/base/skin/State;
    .end local v2    # "stateMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method public getStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Lcom/iflytek/base/skin/ThemeStyle;
    .locals 2
    .param p1, "styleName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStyles:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStyles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/ThemeStyle;

    .line 223
    .local v0, "themeStyle":Lcom/iflytek/base/skin/ThemeStyle;
    if-nez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStylesConf:Ljava/util/Map;

    .line 225
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    invoke-static {p0, v1}, Lcom/iflytek/base/skin/ThemeStyle;->obtain(Lcom/iflytek/base/skin/IResourceGetter;Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeStyle;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStyles:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v0    # "themeStyle":Lcom/iflytek/base/skin/ThemeStyle;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method loadThemeInfo(Lcom/iflytek/base/skin/ISkin;)Lcom/iflytek/base/skin/ThemeInfo;
    .locals 5
    .param p1, "skin"    # Lcom/iflytek/base/skin/ISkin;

    .prologue
    .line 93
    new-instance v1, Lcom/iflytek/base/skin/ThemeInfo;

    invoke-interface {p1}, Lcom/iflytek/base/skin/ISkin;->theme()Ljava/util/Properties;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mThemeDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mResType:Lcom/iflytek/base/skin/ResourceType;

    invoke-direct {v1, v2, v3, v4}, Lcom/iflytek/base/skin/ThemeInfo;-><init>(Ljava/util/Properties;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)V

    iput-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mCurrentThemeInfo:Lcom/iflytek/base/skin/ThemeInfo;

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mCurrentThemeInfo:Lcom/iflytek/base/skin/ThemeInfo;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeInfo;->getDefaultResolution()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionX:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionX:I

    invoke-direct {p0, v1}, Lcom/iflytek/base/skin/ResourceLoader1st;->buildPath(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionPath:Ljava/lang/String;

    .line 102
    iget v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionX:I

    invoke-direct {p0, v1}, Lcom/iflytek/base/skin/ResourceLoader1st;->buildPath(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionPath:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mCurrentThemeInfo:Lcom/iflytek/base/skin/ThemeInfo;

    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "skin_ResourceLoader1st"

    const-string/jumbo v2, "loadThemeInfo()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method loadThemeResource(Lcom/iflytek/base/skin/ISkin;)Z
    .locals 4
    .param p1, "skin"    # Lcom/iflytek/base/skin/ISkin;

    .prologue
    .line 113
    const-string/jumbo v2, "skin_ResourceLoader1st"

    const-string/jumbo v3, "loadThemeResource()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {p1}, Lcom/iflytek/base/skin/ISkin;->colors()Ljava/util/Properties;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mColors:Ljava/util/Properties;

    .line 116
    invoke-interface {p1}, Lcom/iflytek/base/skin/ISkin;->statelist()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStatesConf:Ljava/util/Map;

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/iflytek/base/skin/ResourceLoader1st;->getResources(Ljava/lang/String;Lcom/iflytek/base/skin/ISkin;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImagesConf:Ljava/util/Map;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "styles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/iflytek/base/skin/ResourceLoader1st;->getResources(Ljava/lang/String;Lcom/iflytek/base/skin/ISkin;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStylesConf:Ljava/util/Map;

    .line 122
    iget v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionX:I

    iget v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mDefaultResolutionX:I

    if-eq v2, v3, :cond_1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/iflytek/base/skin/ResourceLoader1st;->getResources(Ljava/lang/String;Lcom/iflytek/base/skin/ISkin;)Ljava/util/Map;

    move-result-object v0

    .line 124
    .local v0, "systemResolutionImages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "styles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mSystemResolutionX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/iflytek/base/skin/ResourceLoader1st;->getResources(Ljava/lang/String;Lcom/iflytek/base/skin/ISkin;)Ljava/util/Map;

    move-result-object v1

    .line 126
    .local v1, "systemResolutionstyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImagesConf:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImagesConf:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStylesConf:Ljava/util/Map;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 131
    iget-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStylesConf:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    .end local v0    # "systemResolutionImages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "systemResolutionstyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mPortStyles:Ljava/util/Map;

    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mStates:Ljava/util/Map;

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImages:Ljava/util/Map;

    .line 139
    const/4 v2, 0x1

    return v2
.end method

.method public recyleCacheImage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImages:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/ThemeBitmap;

    .line 200
    .local v2, "themeBitmap":Lcom/iflytek/base/skin/ThemeBitmap;
    if-eqz v2, :cond_0

    .line 201
    iget-object v3, p0, Lcom/iflytek/base/skin/ResourceLoader1st;->mImages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    invoke-static {}, Lcom/iflytek/base/skin/ThemeImagePool;->getInstance()Lcom/iflytek/base/skin/ThemeImagePool;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, p1, v4}, Lcom/iflytek/base/skin/ThemeImagePool;->getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    .local v0, "cache":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 206
    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-static {}, Lcom/iflytek/base/skin/ThemeImagePool;->getInstance()Lcom/iflytek/base/skin/ThemeImagePool;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, p1, v4}, Lcom/iflytek/base/skin/ThemeImagePool;->removeImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v3, 0x1

    .line 215
    .end local v0    # "cache":Landroid/graphics/drawable/Drawable;
    .end local v2    # "themeBitmap":Lcom/iflytek/base/skin/ThemeBitmap;
    :goto_0
    return v3

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "skin_ResourceLoader1st"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
