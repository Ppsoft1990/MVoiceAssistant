.class public interface abstract Lcom/iflytek/base/skin/IResourceGetter;
.super Ljava/lang/Object;
.source "IResourceGetter.java"


# virtual methods
.method public abstract getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I
.end method

.method public abstract getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;
.end method

.method public abstract getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getState(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/StateListDrawable;
.end method

.method public abstract getStates(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/util/EnumMap;
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
.end method

.method public abstract getStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Lcom/iflytek/base/skin/ThemeStyle;
.end method

.method public abstract getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;
.end method

.method public abstract recyleCacheImage(Ljava/lang/String;)Z
.end method
