.class abstract Lcom/iflytek/base/skin/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/iflytek/base/skin/IResourceGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/ResourceLoader$DrawableType;
    }
.end annotation


# static fields
.field static final IMAGES:Ljava/lang/String; = "images"

.field static final LANDSCAPE_LAYOUT_DIR:Ljava/lang/String; = "layout-land"

.field static final LANDSCAPE_RES_DIR:Ljava/lang/String; = "res-land"

.field static final PORTRAIT_LAYOUT_DIR:Ljava/lang/String; = "layout"

.field static final PORTRAIT_RES_DIR:Ljava/lang/String; = "res"

.field static final STYLES:Ljava/lang/String; = "styles"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getDrawableDir(Z)Ljava/lang/String;
    .locals 1
    .param p0, "landscape"    # Z

    .prologue
    .line 62
    if-eqz p0, :cond_0

    const-string/jumbo v0, "res-land"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "res"

    goto :goto_0
.end method

.method static final getLayoutDir(Z)Ljava/lang/String;
    .locals 1
    .param p0, "landscape"    # Z

    .prologue
    .line 52
    if-eqz p0, :cond_0

    const-string/jumbo v0, "layout-land"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "layout"

    goto :goto_0
.end method


# virtual methods
.method abstract loadThemeInfo(Lcom/iflytek/base/skin/ISkin;)Lcom/iflytek/base/skin/ThemeInfo;
.end method

.method abstract loadThemeResource(Lcom/iflytek/base/skin/ISkin;)Z
.end method
