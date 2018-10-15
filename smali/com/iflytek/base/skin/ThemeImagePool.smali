.class final Lcom/iflytek/base/skin/ThemeImagePool;
.super Ljava/lang/Object;
.source "ThemeImagePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/ThemeImagePool$InstanceHolder;
    }
.end annotation


# instance fields
.field private mImageCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/ThemeImagePool;->mImageCache:Ljava/util/WeakHashMap;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/skin/ThemeImagePool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/skin/ThemeImagePool$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/iflytek/base/skin/ThemeImagePool;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/iflytek/base/skin/ThemeImagePool;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/iflytek/base/skin/ThemeImagePool$InstanceHolder;->instance:Lcom/iflytek/base/skin/ThemeImagePool;

    return-object v0
.end method

.method private static makeKey(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/lang/String;
    .locals 2
    .param p0, "imageName"    # Ljava/lang/String;
    .param p1, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    sget-object p1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/base/skin/Orientation;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeImagePool;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 78
    return-void
.end method

.method public getImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeImagePool;->mImageCache:Ljava/util/WeakHashMap;

    invoke-static {p1, p2}, Lcom/iflytek/base/skin/ThemeImagePool;->makeKey(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public putImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/iflytek/base/skin/Orientation;)V
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .param p3, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeImagePool;->mImageCache:Ljava/util/WeakHashMap;

    invoke-static {p1, p3}, Lcom/iflytek/base/skin/ThemeImagePool;->makeKey(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-void
.end method

.method public removeImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeImagePool;->mImageCache:Ljava/util/WeakHashMap;

    invoke-static {p1, p2}, Lcom/iflytek/base/skin/ThemeImagePool;->makeKey(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-void
.end method
