.class final Lcom/iflytek/base/skin/ThemeBitmap;
.super Ljava/lang/Object;
.source "ThemeBitmap.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "NAME"

.field private static final ATTR_NEED_CACHE:Ljava/lang/String; = "NEED_CACHE"

.field private static final ATTR_NEED_SCALE:Ljava/lang/String; = "NEED_SCALE"

.field private static final ATTR_PADDING:Ljava/lang/String; = "PADDING"

.field private static final ATTR_SCALE_RATIO:Ljava/lang/String; = "SCALE_RATIO"

.field private static final ATTR_TYPE:Ljava/lang/String; = "TYPE"

.field private static final ATTR_X_DIVS:Ljava/lang/String; = "X_DIVS"

.field private static final ATTR_X_TILE_MODE:Ljava/lang/String; = "X_TILE_MODE"

.field private static final ATTR_Y_DIVS:Ljava/lang/String; = "Y_DIVS"

.field private static final ATTR_Y_TILE_MODE:Ljava/lang/String; = "Y_TILE_MODE"

.field private static final TAG:Ljava/lang/String; = "skin_ThemeBitmap"

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static final TYPE_9PATCH:I = 0x1


# instance fields
.field private isTransformByDensity:Z

.field private mChunk:[B

.field private mDefaultResolutionPath:Ljava/lang/String;

.field private mDefaultResolutionX:I

.field private mName:Ljava/lang/String;

.field private mNeedCache:Z

.field private mNeedScale:Z

.field private mPadding:Landroid/graphics/Rect;

.field private mScaleRatio:F

.field private mSystemResolutionPath:Ljava/lang/String;

.field private mSystemResolutionX:I

.field private mType:I

.field private mXDivs:[I

.field private mXTileMode:I

.field private mYDivs:[I

.field private mYTileMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/base/skin/ThemeBitmap;->isTransformByDensity:Z

    .line 114
    return-void
.end method

.method private static calculateScale(Landroid/content/Context;I)F
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolutionX"    # I

    .prologue
    .line 490
    const/high16 v2, 0x3f800000    # 1.0f

    .line 493
    .local v2, "scale":F
    const/16 v1, 0x1e0

    .line 495
    .local v1, "resolutionY":I
    const/16 v6, 0x140

    if-ne v6, p1, :cond_2

    .line 496
    const/16 v1, 0x1e0

    .line 508
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    .line 509
    .local v3, "sysResolutionX":I
    invoke-static {p0}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    .line 511
    .local v4, "sysResolutionY":I
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 512
    int-to-float v6, v3

    int-to-float v7, p1

    div-float v5, v6, v7

    .line 513
    .local v5, "widthScale":F
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v0, v6, v7

    .line 514
    .local v0, "heightScale":F
    cmpg-float v6, v5, v0

    if-gez v6, :cond_6

    move v2, v5

    .line 517
    .end local v0    # "heightScale":F
    .end local v5    # "widthScale":F
    :cond_1
    :goto_1
    return v2

    .line 497
    .end local v3    # "sysResolutionX":I
    .end local v4    # "sysResolutionY":I
    :cond_2
    const/16 v6, 0x1e0

    if-ne v6, p1, :cond_3

    .line 498
    const/16 v1, 0x320

    goto :goto_0

    .line 499
    :cond_3
    const/16 v6, 0x21c

    if-ne v6, p1, :cond_4

    .line 500
    const/16 v1, 0x3c0

    goto :goto_0

    .line 501
    :cond_4
    const/16 v6, 0x280

    if-ne v6, p1, :cond_5

    .line 502
    const/16 v1, 0x3c0

    goto :goto_0

    .line 503
    :cond_5
    const/16 v6, 0x2d0

    if-ne v6, p1, :cond_0

    .line 504
    const/16 v1, 0x500

    goto :goto_0

    .restart local v0    # "heightScale":F
    .restart local v3    # "sysResolutionX":I
    .restart local v4    # "sysResolutionY":I
    .restart local v5    # "widthScale":F
    :cond_6
    move v2, v0

    .line 514
    goto :goto_1
.end method

.method private static createBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 435
    const/4 v2, 0x0

    .line 438
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v4, Lcom/iflytek/base/skin/ResourceType;->RES_TYPE_ASSETS:Lcom/iflytek/base/skin/ResourceType;

    if-ne p2, v4, :cond_0

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 443
    :goto_0
    if-eqz v2, :cond_1

    .line 444
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 452
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 441
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "skin_ThemeBitmap"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static createCompressBitmap(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 456
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 457
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 458
    invoke-static {p1, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 459
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 461
    .local v0, "imageWidth":I
    invoke-static {p0}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 462
    .local v2, "sysResolutionX":I
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 463
    if-le v0, v2, :cond_0

    .line 464
    int-to-float v5, v0

    int-to-float v6, v2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 465
    .local v3, "widthRatio":I
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 466
    const-string/jumbo v5, "skin_ThemeBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createCompressBitmap samplesize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eq v8, v5, :cond_0

    .line 468
    invoke-static {p1, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 472
    .end local v3    # "widthRatio":I
    :cond_0
    return-object v4
.end method

.method private getBitmap(Landroid/content/Context;Ljava/lang/String;ZLcom/iflytek/base/skin/ResourceType;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "landscape"    # Z
    .param p4, "resType"    # Lcom/iflytek/base/skin/ResourceType;
    .param p5, "ninepatch"    # Z

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 378
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 381
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget v5, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mSystemResolutionX:I

    .line 383
    .local v5, "resolutionX":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mSystemResolutionPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "path":Ljava/lang/String;
    invoke-static {p1, v4, p4}, Lcom/iflytek/base/skin/ThemeBitmap;->getFileStream(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Ljava/io/InputStream;

    move-result-object v3

    .line 385
    if-nez v3, :cond_0

    .line 387
    iget v5, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mDefaultResolutionX:I

    .line 388
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mDefaultResolutionPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    invoke-static {p1, v4, p4}, Lcom/iflytek/base/skin/ThemeBitmap;->getFileStream(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Ljava/io/InputStream;

    move-result-object v3

    .line 392
    :cond_0
    invoke-static {p1}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v7

    const/high16 v8, 0x43200000    # 160.0f

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 394
    .local v1, "density":I
    invoke-static {p1, v3}, Lcom/iflytek/base/skin/ThemeBitmap;->createCompressBitmap(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    if-nez v0, :cond_5

    .line 396
    invoke-static {p1, v4, p4}, Lcom/iflytek/base/skin/ThemeBitmap;->createBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_3

    .line 398
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 399
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 402
    :cond_1
    if-nez p5, :cond_3

    iget-boolean v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mNeedScale:Z

    if-eqz v7, :cond_3

    .line 403
    iget v6, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mScaleRatio:F

    .line 404
    .local v6, "scale":F
    const/4 v7, 0x0

    cmpl-float v7, v7, v6

    if-nez v7, :cond_2

    .line 405
    invoke-static {p1, v5}, Lcom/iflytek/base/skin/ThemeBitmap;->calculateScale(Landroid/content/Context;I)F

    move-result v6

    .line 407
    :cond_2
    invoke-static {v0, v6}, Lcom/iflytek/base/skin/ThemeBitmap;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 416
    .end local v6    # "scale":F
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 417
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 423
    .end local v1    # "density":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "resolutionX":I
    :cond_4
    :goto_1
    return-object v0

    .line 412
    .restart local v1    # "density":I
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "resolutionX":I
    :cond_5
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-eq v7, v1, :cond_3

    .line 413
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v1    # "density":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "resolutionX":I
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "skin_ThemeBitmap"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;ZLcom/iflytek/base/skin/ResourceType;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "landscape"    # Z
    .param p4, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 325
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/base/skin/ThemeBitmap;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZLcom/iflytek/base/skin/ResourceType;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 326
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 327
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 329
    :catch_0
    move-exception v7

    .line 330
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "skin_ThemeBitmap"

    const-string/jumbo v1, "getBitmapDrawable()"

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFileStream(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/skin/ResourceType;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v3, Lcom/iflytek/base/skin/ResourceType;->RES_TYPE_ASSETS:Lcom/iflytek/base/skin/ResourceType;

    if-ne p2, v3, :cond_0

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    .line 481
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "skin_ThemeBitmap"

    const-string/jumbo v4, "file stream not found"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;ZLcom/iflytek/base/skin/ResourceType;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "landscape"    # Z
    .param p6, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    const/4 v7, 0x0

    .line 347
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 360
    :goto_0
    return-object v0

    .line 351
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/base/skin/ThemeBitmap;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZLcom/iflytek/base/skin/ResourceType;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 352
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 354
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v6

    .line 357
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "skin_ThemeBitmap"

    const-string/jumbo v1, "getNinePatchDrawable()"

    invoke-static {v0, v1, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v7

    .line 360
    goto :goto_0
.end method

.method private getPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    iget-boolean v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->isTransformByDensity:Z

    if-nez v1, :cond_0

    .line 205
    const-string/jumbo v1, "skin_ThemeBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "img is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " getPadding transformByDensity begin, mPadding is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p1}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    .line 210
    .local v0, "screenDensity":F
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 211
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 212
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 213
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->isTransformByDensity:Z

    .line 215
    const-string/jumbo v1, "skin_ThemeBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPadding transformByDensity end, mPadding is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0    # "screenDensity":F
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    return-object v1
.end method

.method private static getTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "mode_value"    # I

    .prologue
    .line 280
    packed-switch p0, :pswitch_data_0

    .line 289
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 282
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 284
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static obtain(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeBitmap;
    .locals 15
    .param p0, "bitmapConfig"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    :cond_0
    return-object v5

    .line 121
    :cond_1
    const-string/jumbo v7, "\\|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 126
    new-instance v5, Lcom/iflytek/base/skin/ThemeBitmap;

    invoke-direct {v5}, Lcom/iflytek/base/skin/ThemeBitmap;-><init>()V

    .line 127
    .local v5, "themeBitmap":Lcom/iflytek/base/skin/ThemeBitmap;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    .line 129
    const-string/jumbo v1, ""

    .line 130
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 132
    .local v6, "value":Ljava/lang/String;
    array-length v9, v4

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v3, v4, v7

    .line 133
    .local v3, "string":Ljava/lang/String;
    const/16 v10, 0x3d

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 136
    .local v0, "index":I
    const/4 v10, -0x1

    if-le v0, v10, :cond_2

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 132
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 141
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 145
    const-string/jumbo v10, "TYPE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 146
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mType:I

    goto :goto_1

    .line 147
    :cond_4
    const-string/jumbo v10, "NAME"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 148
    iput-object v6, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mName:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_5
    const-string/jumbo v10, "NEED_SCALE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 150
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getBool(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mNeedScale:Z

    goto :goto_1

    .line 151
    :cond_6
    const-string/jumbo v10, "SCALE_RATIO"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 152
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mScaleRatio:F

    goto :goto_1

    .line 153
    :cond_7
    const-string/jumbo v10, "NEED_CACHE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 154
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getBool(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mNeedCache:Z

    goto :goto_1

    .line 155
    :cond_8
    const-string/jumbo v10, "X_TILE_MODE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 156
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mXTileMode:I

    goto :goto_1

    .line 157
    :cond_9
    const-string/jumbo v10, "Y_TILE_MODE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 158
    invoke-static {v6}, Lcom/iflytek/base/skin/ThemeUtils;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mYTileMode:I

    goto/16 :goto_1

    .line 159
    :cond_a
    const-string/jumbo v10, "PADDING"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 160
    const-string/jumbo v10, ","

    invoke-static {v6, v10}, Lcom/iflytek/base/skin/ThemeUtils;->splitInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 161
    .local v2, "paddingArray":[I
    if-eqz v2, :cond_2

    array-length v10, v2

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 162
    new-instance v10, Landroid/graphics/Rect;

    aget v11, v2, v8

    const/4 v12, 0x1

    aget v12, v2, v12

    const/4 v13, 0x2

    aget v13, v2, v13

    const/4 v14, 0x3

    aget v14, v2, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mPadding:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 165
    .end local v2    # "paddingArray":[I
    :cond_b
    const-string/jumbo v10, "X_DIVS"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 166
    const-string/jumbo v10, ","

    invoke-static {v6, v10}, Lcom/iflytek/base/skin/ThemeUtils;->splitInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mXDivs:[I

    goto/16 :goto_1

    .line 167
    :cond_c
    const-string/jumbo v10, "Y_DIVS"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    const-string/jumbo v10, ","

    invoke-static {v6, v10}, Lcom/iflytek/base/skin/ThemeUtils;->splitInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, v5, Lcom/iflytek/base/skin/ThemeBitmap;->mYDivs:[I

    goto/16 :goto_1
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    float-to-double v4, p1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpg-double v3, v4, v6

    if-lez v3, :cond_1

    :cond_0
    float-to-double v4, p1

    const-wide v6, 0x3ff199999999999aL    # 1.1

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_2

    .line 523
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-double v4, v3

    add-double/2addr v4, v8

    double-to-int v1, v4

    .line 524
    .local v1, "dstWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-double v4, v3

    add-double/2addr v4, v8

    double-to-int v0, v4

    .line 527
    .local v0, "dstHeight":I
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 528
    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 529
    if-eq v2, p0, :cond_2

    .line 530
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 531
    const/4 p0, 0x0

    .line 536
    .end local v0    # "dstHeight":I
    .end local v1    # "dstWidth":I
    :cond_2
    if-eqz p0, :cond_3

    if-nez v2, :cond_3

    .line 539
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object p0, v2

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;ZLcom/iflytek/base/skin/ResourceType;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "landscape"    # Z
    .param p3, "resType"    # Lcom/iflytek/base/skin/ResourceType;

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/iflytek/base/skin/ThemeBitmap;->isNinePatch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/base/skin/ThemeBitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 305
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/ThemeBitmap;->getPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    .line 304
    invoke-direct/range {v0 .. v6}, Lcom/iflytek/base/skin/ThemeBitmap;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;ZLcom/iflytek/base/skin/ResourceType;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v7

    .line 319
    :cond_0
    :goto_0
    return-object v7

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/iflytek/base/skin/ThemeBitmap;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;ZLcom/iflytek/base/skin/ResourceType;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    .line 311
    .local v7, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v7, :cond_0

    .line 312
    iget v0, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mXTileMode:I

    if-lez v0, :cond_2

    .line 313
    iget v0, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mXTileMode:I

    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeBitmap;->getTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 315
    :cond_2
    iget v0, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mYTileMode:I

    if-lez v0, :cond_0

    .line 316
    iget v0, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mYTileMode:I

    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeBitmap;->getTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_0
.end method

.method public getNinePatchChunk()[B
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 223
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/iflytek/base/skin/ThemeBitmap;->isNinePatch()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 224
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mXDivs:[I

    array-length v5, v7

    .line 225
    .local v5, "xDivsLen":I
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mYDivs:[I

    array-length v6, v7

    .line 226
    .local v6, "yDivsLen":I
    invoke-virtual {p0}, Lcom/iflytek/base/skin/ThemeBitmap;->getSegmentCount()I

    move-result v1

    .line 228
    .local v1, "colorLen":I
    add-int v7, v5, v6

    add-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x20

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    .line 230
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    const/4 v8, 0x0

    aput-byte v10, v7, v8

    .line 231
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    int-to-byte v8, v5

    aput-byte v8, v7, v10

    .line 232
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    const/4 v8, 0x2

    int-to-byte v9, v6

    aput-byte v9, v7, v8

    .line 233
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    const/4 v8, 0x3

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 235
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 236
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mXDivs:[I

    aget v7, v7, v3

    invoke-static {v7}, Lcom/iflytek/base/skin/ThemeUtils;->intToBytes(I)[B

    move-result-object v0

    .line 237
    .local v0, "b":[B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v11, :cond_0

    .line 240
    :try_start_0
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    mul-int/lit8 v8, v3, 0x4

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x20

    rsub-int/lit8 v9, v4, 0x3

    aget-byte v9, v0, v9

    aput-byte v9, v7, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "skin_ThemeBitmap"

    const-string/jumbo v8, "getNinePatchChunk()"

    invoke-static {v7, v8, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 235
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "b":[B
    .end local v4    # "j":I
    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_3

    .line 248
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mYDivs:[I

    aget v7, v7, v3

    invoke-static {v7}, Lcom/iflytek/base/skin/ThemeUtils;->intToBytes(I)[B

    move-result-object v0

    .line 249
    .restart local v0    # "b":[B
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v11, :cond_2

    .line 251
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    add-int v8, v3, v5

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x20

    rsub-int/lit8 v9, v4, 0x3

    aget-byte v9, v0, v9

    aput-byte v9, v7, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 252
    :catch_1
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "skin_ThemeBitmap"

    const-string/jumbo v8, "getNinePatchChunk()"

    invoke-static {v7, v8, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 258
    .end local v0    # "b":[B
    .end local v4    # "j":I
    :cond_3
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_5

    .line 259
    invoke-static {v10}, Lcom/iflytek/base/skin/ThemeUtils;->intToBytes(I)[B

    move-result-object v0

    .line 260
    .restart local v0    # "b":[B
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_7
    if-ge v4, v11, :cond_4

    .line 262
    :try_start_2
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    add-int v8, v3, v5

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x20

    rsub-int/lit8 v9, v4, 0x3

    aget-byte v9, v0, v9

    aput-byte v9, v7, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 263
    :catch_2
    move-exception v2

    .line 264
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "skin_ThemeBitmap"

    const-string/jumbo v8, "getNinePatchChunk()"

    invoke-static {v7, v8, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 258
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 270
    .end local v0    # "b":[B
    .end local v1    # "colorLen":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "xDivsLen":I
    .end local v6    # "yDivsLen":I
    :cond_5
    iget-object v7, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mChunk:[B

    return-object v7
.end method

.method public getSegmentCount()I
    .locals 3

    .prologue
    .line 192
    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mXDivs:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mYDivs:[I

    if-nez v2, :cond_1

    .line 193
    :cond_0
    const/4 v2, 0x1

    .line 198
    :goto_0
    return v2

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mXDivs:[I

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 197
    .local v0, "columnCount":I
    iget-object v2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mYDivs:[I

    array-length v2, v2

    add-int/lit8 v1, v2, 0x1

    .line 198
    .local v1, "rowCount":I
    mul-int v2, v0, v1

    goto :goto_0
.end method

.method public isNinePatch()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 188
    iget v1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needCache()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mNeedCache:Z

    return v0
.end method

.method public setEnviroment(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "defaultPath"    # Ljava/lang/String;
    .param p2, "resolutionPath"    # Ljava/lang/String;
    .param p3, "defaultResolutionX"    # I
    .param p4, "resolutionX"    # I

    .prologue
    .line 177
    iput p4, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mSystemResolutionX:I

    .line 178
    iput p3, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mDefaultResolutionX:I

    .line 179
    iput-object p2, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mSystemResolutionPath:Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/iflytek/base/skin/ThemeBitmap;->mDefaultResolutionPath:Ljava/lang/String;

    .line 181
    return-void
.end method
