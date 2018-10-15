.class public final Lcom/iflytek/base/skin/ThemeInfo;
.super Ljava/lang/Object;
.source "ThemeInfo.java"


# static fields
.field private static final ATTR_AUTHOR:Ljava/lang/String; = "AUTHOR"

.field private static final ATTR_DEFAULT_RESOLUTION:Ljava/lang/String; = "DEFAULT_RESOLUTION"

.field private static final ATTR_DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field private static final ATTR_NAME:Ljava/lang/String; = "NAME"

.field private static final ATTR_PLATFORM:Ljava/lang/String; = "PLATFORM"

.field private static final ATTR_RESOLUTION:Ljava/lang/String; = "RESOLUTION"

.field private static final ATTR_VERSION:Ljava/lang/String; = "VERSION"

.field public static final MAX_VERSION_SUPPORT:F = 3.2f

.field private static final PLATFORM:Ljava/lang/String; = "android"

.field public static final VERSION_3_x:F = 3.1f


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mDefaultResolution:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mIsInitialize:Z

.field private mName:Ljava/lang/String;

.field private mPlatform:Ljava/lang/String;

.field private mPreview:Landroid/graphics/drawable/Drawable;

.field private mResType:Lcom/iflytek/base/skin/ResourceType;

.field private mResolution:Ljava/lang/String;

.field private mThemeDir:Ljava/lang/String;

.field private mVersion:F


# direct methods
.method public constructor <init>(Ljava/util/Properties;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)V
    .locals 1
    .param p1, "themeFile"    # Ljava/util/Properties;
    .param p2, "themeDir"    # Ljava/lang/String;
    .param p3, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mIsInitialize:Z

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iput-object p2, p0, Lcom/iflytek/base/skin/ThemeInfo;->mThemeDir:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/iflytek/base/skin/ThemeInfo;->mResType:Lcom/iflytek/base/skin/ResourceType;

    .line 75
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/ThemeInfo;->readSummaryInfo(Ljava/util/Properties;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mIsInitialize:Z

    .line 77
    :cond_0
    return-void
.end method

.method private readSummaryInfo(Ljava/util/Properties;)Z
    .locals 3
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string/jumbo v1, "PLATFORM"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mPlatform:Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "NAME"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mName:Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "AUTHOR"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mAuthor:Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "DESCRIPTION"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mDescription:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "RESOLUTION"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mResolution:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "DEFAULT_RESOLUTION"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mDefaultResolution:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "VERSION"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeUtils;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mVersion:F

    .line 94
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mPlatform:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 95
    iget v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mVersion:F

    const v2, 0x404ccccd    # 3.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 101
    .end local v0    # "version":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkSkinVersion()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 109
    iget-boolean v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mIsInitialize:Z

    if-eqz v1, :cond_0

    .line 111
    iget v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mVersion:F

    const v2, 0x404ccccd    # 3.2f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 112
    const/4 v0, 0x1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    iget v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mVersion:F

    const v2, 0x40466666    # 3.1f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mDefaultResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mPreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResType()Lcom/iflytek/base/skin/ResourceType;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mResType:Lcom/iflytek/base/skin/ResourceType;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mThemeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mVersion:F

    return v0
.end method

.method public isInitialize()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mIsInitialize:Z

    return v0
.end method

.method public isSupportAndroidPlatform()Z
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/iflytek/base/skin/ThemeInfo;->mIsInitialize:Z

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "android"

    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "preview"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/iflytek/base/skin/ThemeInfo;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 152
    return-void
.end method
