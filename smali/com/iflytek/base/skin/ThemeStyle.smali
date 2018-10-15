.class public final Lcom/iflytek/base/skin/ThemeStyle;
.super Ljava/lang/Object;
.source "ThemeStyle.java"


# static fields
.field private static final ATTR_TEXT_COLOR:Ljava/lang/String; = "TEXT_COLOR"

.field private static final ATTR_TEXT_SHADOW_COLOR:Ljava/lang/String; = "TEXT_SHADOW_COLOR"

.field private static final ATTR_TEXT_SHADOW_DX:Ljava/lang/String; = "TEXT_SHADOW_DX"

.field private static final ATTR_TEXT_SHADOW_DY:Ljava/lang/String; = "TEXT_SHADOW_DY"

.field private static final ATTR_TEXT_SHADOW_RADIUS:Ljava/lang/String; = "TEXT_SHADOW_RADIUS"

.field private static final ATTR_TEXT_SIZE:Ljava/lang/String; = "TEXT_SIZE"

.field private static final ATTR_TEXT_STYLE:Ljava/lang/String; = "TEXT_STYLE"

.field private static final TAG:Ljava/lang/String; = "skin_ThemeStyle"


# instance fields
.field private mIsBold:Z

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mTextColor:I

.field private mTextSize:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mTextSize:F

    .line 26
    iput v1, p0, Lcom/iflytek/base/skin/ThemeStyle;->mTextColor:I

    .line 28
    iput v1, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowColor:I

    .line 34
    return-void
.end method

.method static obtain(Lcom/iflytek/base/skin/IResourceGetter;Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeStyle;
    .locals 12
    .param p0, "resourceGetter"    # Lcom/iflytek/base/skin/IResourceGetter;
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    :cond_0
    return-object v5

    .line 41
    :cond_1
    const-string/jumbo v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 46
    new-instance v5, Lcom/iflytek/base/skin/ThemeStyle;

    invoke-direct {v5}, Lcom/iflytek/base/skin/ThemeStyle;-><init>()V

    .line 48
    .local v5, "themeStyle":Lcom/iflytek/base/skin/ThemeStyle;
    const-string/jumbo v2, ""

    .line 49
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 51
    .local v6, "value":Ljava/lang/String;
    array-length v9, v4

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v3, v4, v7

    .line 52
    .local v3, "string":Ljava/lang/String;
    const/16 v10, 0x3d

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 55
    .local v1, "index":I
    const/4 v10, -0x1

    if-le v1, v10, :cond_2

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 60
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 64
    const-string/jumbo v10, "TEXT_SIZE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 66
    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeStyle;->mTextSize:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "skin_ThemeStyle"

    invoke-static {v10, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v10, "TEXT_COLOR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 73
    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-interface {p0, v6, v10}, Lcom/iflytek/base/skin/IResourceGetter;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeStyle;->mTextColor:I

    goto :goto_1

    .line 76
    :cond_5
    const-string/jumbo v10, "TEXT_STYLE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 77
    const-string/jumbo v10, "bold"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v5, Lcom/iflytek/base/skin/ThemeStyle;->mIsBold:Z

    goto :goto_1

    .line 80
    :cond_6
    const-string/jumbo v10, "TEXT_SHADOW_COLOR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 81
    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-interface {p0, v6, v10}, Lcom/iflytek/base/skin/IResourceGetter;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeStyle;->mShadowColor:I

    goto :goto_1

    .line 82
    :cond_7
    const-string/jumbo v10, "TEXT_SHADOW_RADIUS"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 83
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeStyle;->mShadowRadius:F

    goto :goto_1

    .line 84
    :cond_8
    const-string/jumbo v10, "TEXT_SHADOW_DX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 85
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeStyle;->mShadowDx:F

    goto/16 :goto_1

    .line 86
    :cond_9
    const-string/jumbo v10, "TEXT_SHADOW_DY"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 87
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeStyle;->mShadowDy:F

    goto/16 :goto_1
.end method


# virtual methods
.method public getShadowColor()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowRadius:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mTextSize:F

    return v0
.end method

.method public hasShadow()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowRadius:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowDx:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mShadowDy:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBold()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/iflytek/base/skin/ThemeStyle;->mIsBold:Z

    return v0
.end method
