.class public Lbab;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static a(Landroid/content/Context;I)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolutionX"    # I

    .prologue
    .line 266
    const/high16 v0, 0x3f800000    # 1.0f

    .line 269
    .local v0, "scale":F
    invoke-static {p0}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 270
    .local v1, "sysResolutionX":I
    if-eqz v1, :cond_0

    .line 271
    int-to-float v3, v1

    int-to-float v4, p1

    div-float v2, v3, v4

    .line 272
    .local v2, "widthScale":F
    move v0, v2

    .line 275
    .end local v2    # "widthScale":F
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 404
    invoke-static {p1}, Lbab;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 405
    .local v2, "overlay":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 420
    :goto_0
    return-object v0

    .line 408
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 409
    .local v6, "start":J
    const/high16 v4, 0x41800000    # 16.0f

    .line 410
    .local v4, "scaleFactor":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    float-to-int v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    float-to-int v9, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 411
    .local v5, "sentBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 412
    .local v1, "canvas":Landroid/graphics/Canvas;
    div-float v8, v12, v4

    div-float v9, v12, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 413
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 414
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFlags(I)V

    .line 415
    invoke-virtual {v1, v2, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 417
    const/4 v8, 0x4

    invoke-static {p0, v5, v8}, Lbac;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 419
    const-string/jumbo v8, "BitmapUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u6a21\u7cca\u5316\u65f6\u95f4 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 29
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 347
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 348
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 351
    .local v15, "height":I
    move/from16 v0, v24

    if-gt v0, v15, :cond_0

    .line 353
    div-int/lit8 v25, v24, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v21, v0

    .line 354
    .local v21, "roundPx":F
    const/16 v23, 0x0

    .line 355
    .local v23, "top":F
    move/from16 v0, v24

    int-to-float v5, v0

    .line 356
    .local v5, "bottom":F
    const/16 v16, 0x0

    .line 357
    .local v16, "left":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 358
    .local v20, "right":F
    move/from16 v15, v24

    .line 359
    const/4 v11, 0x0

    .line 360
    .local v11, "dst_left":F
    const/4 v13, 0x0

    .line 361
    .local v13, "dst_top":F
    move/from16 v0, v24

    int-to-float v12, v0

    .line 362
    .local v12, "dst_right":F
    move/from16 v0, v24

    int-to-float v10, v0

    .line 378
    .local v10, "dst_bottom":F
    :goto_0
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 379
    .local v17, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    .local v6, "canvas":Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 381
    .local v8, "color":I
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 382
    .local v18, "paint":Landroid/graphics/Paint;
    new-instance v22, Landroid/graphics/Rect;

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v27, v0

    float-to-int v0, v5

    move/from16 v28, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 383
    .local v22, "src":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v0, v11

    move/from16 v25, v0

    float-to-int v0, v13

    move/from16 v26, v0

    float-to-int v0, v12

    move/from16 v27, v0

    float-to-int v0, v10

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 384
    .local v9, "dst":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 385
    .local v19, "rectF":Landroid/graphics/RectF;
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 387
    const v25, -0xbdbdbe

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 389
    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v25 .. v26}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v6, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 400
    .end local v5    # "bottom":F
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "color":I
    .end local v9    # "dst":Landroid/graphics/Rect;
    .end local v10    # "dst_bottom":F
    .end local v11    # "dst_left":F
    .end local v12    # "dst_right":F
    .end local v13    # "dst_top":F
    .end local v15    # "height":I
    .end local v16    # "left":F
    .end local v17    # "output":Landroid/graphics/Bitmap;
    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v19    # "rectF":Landroid/graphics/RectF;
    .end local v20    # "right":F
    .end local v21    # "roundPx":F
    .end local v22    # "src":Landroid/graphics/Rect;
    .end local v23    # "top":F
    .end local v24    # "width":I
    :goto_1
    return-object v17

    .line 366
    .restart local v15    # "height":I
    .restart local v24    # "width":I
    :cond_0
    div-int/lit8 v25, v15, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v21, v0

    .line 367
    .restart local v21    # "roundPx":F
    sub-int v25, v24, v15

    div-int/lit8 v25, v25, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v25

    int-to-float v7, v0

    .line 368
    .local v7, "clip":F
    move/from16 v16, v7

    .line 369
    .restart local v16    # "left":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v20, v25, v7

    .line 370
    .restart local v20    # "right":F
    const/16 v23, 0x0

    .line 371
    .restart local v23    # "top":F
    int-to-float v5, v15

    .line 372
    .restart local v5    # "bottom":F
    move/from16 v24, v15

    .line 373
    const/4 v11, 0x0

    .line 374
    .restart local v11    # "dst_left":F
    const/4 v13, 0x0

    .line 375
    .restart local v13    # "dst_top":F
    int-to-float v12, v15

    .line 376
    .restart local v12    # "dst_right":F
    int-to-float v10, v15

    .restart local v10    # "dst_bottom":F
    goto/16 :goto_0

    .line 395
    .end local v5    # "bottom":F
    .end local v7    # "clip":F
    .end local v10    # "dst_bottom":F
    .end local v11    # "dst_left":F
    .end local v12    # "dst_right":F
    .end local v13    # "dst_top":F
    .end local v15    # "height":I
    .end local v16    # "left":F
    .end local v20    # "right":F
    .end local v21    # "roundPx":F
    .end local v23    # "top":F
    .end local v24    # "width":I
    :catch_0
    move-exception v14

    .line 397
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    const/16 v17, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 285
    if-nez p0, :cond_1

    move-object p0, v4

    .line 311
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 288
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    .line 289
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    float-to-double v6, p1

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    cmpg-double v5, v6, v8

    if-lez v5, :cond_3

    :cond_2
    float-to-double v6, p1

    const-wide v8, 0x3ff199999999999aL    # 1.1

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_4

    .line 290
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-double v6, v5

    add-double/2addr v6, v10

    double-to-int v1, v6

    .line 291
    .local v1, "dstWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-double v6, v5

    add-double/2addr v6, v10

    double-to-int v0, v6

    .line 294
    .local v0, "dstHeight":I
    if-lez v1, :cond_4

    if-lez v0, :cond_4

    .line 296
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p0, v1, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 297
    if-eq v3, p0, :cond_4

    .line 298
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    const/4 p0, 0x0

    .line 308
    .end local v0    # "dstHeight":I
    .end local v1    # "dstWidth":I
    :cond_4
    if-eqz p0, :cond_5

    if-eqz v3, :cond_0

    :cond_5
    move-object p0, v3

    .line 311
    goto :goto_0

    .line 301
    .restart local v0    # "dstHeight":I
    .restart local v1    # "dstWidth":I
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BitmapUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v4

    .line 303
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    .line 324
    const/4 v7, 0x0

    .line 326
    .local v7, "returnBm":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 327
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 330
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 331
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 330
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 334
    :goto_0
    if-nez v7, :cond_0

    .line 335
    move-object v7, p0

    .line 337
    :cond_0
    if-eq p0, v7, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 340
    :cond_1
    return-object v7

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BitmapUtils"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Z
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v0, "a":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 86
    const/4 v4, 0x0

    .line 88
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 92
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 93
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 95
    .local v1, "buffer":[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v5, v1, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    const/4 v6, 0x1

    .line 100
    invoke-static {v5}, Lazj;->a(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v6

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "BitmapUtils"

    const-string/jumbo v8, "saveBitmap error"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-static {v4}, Lazj;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v4}, Lazj;->a(Ljava/io/OutputStream;)V

    throw v6

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 97
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 221
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v4

    .line 224
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x64

    .line 226
    .local v3, "options":I
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 227
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    const/high16 v6, 0x200000

    if-le v5, v6, :cond_2

    .line 228
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 229
    add-int/lit8 v3, v3, -0xa

    .line 230
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 232
    :cond_2
    const/4 v1, 0x0

    .line 234
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 236
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 237
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    const/4 v4, 0x1

    .line 242
    invoke-static {v2}, Lazj;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 239
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 242
    :goto_2
    invoke-static {v1}, Lazj;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v1}, Lazj;->a(Ljava/io/OutputStream;)V

    throw v4

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 239
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)I
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 427
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 431
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 432
    const-string/jumbo v5, "Orientation"

    invoke-virtual {v2, v5, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 433
    .local v4, "orientation":I
    if-eq v4, v8, :cond_0

    .line 434
    packed-switch v4, :pswitch_data_0

    .line 447
    .end local v4    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v5, "BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot read exif"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 437
    goto :goto_1

    .line 439
    :pswitch_2
    const/16 v0, 0xb4

    .line 440
    goto :goto_1

    .line 442
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
