.class public Laze;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laze$a;,
        Laze$c;,
        Laze$e;,
        Laze$b;,
        Laze$d;
    }
.end annotation


# static fields
.field private static a:[B

.field private static b:[I


# direct methods
.method private static a(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 335
    if-le p0, p2, :cond_0

    .line 339
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 337
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 338
    goto :goto_0

    :cond_1
    move p2, p0

    .line 339
    goto :goto_0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 11
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 92
    const/4 v6, 0x0

    .line 93
    .local v6, "tmp":F
    const/high16 v3, 0x42c80000    # 100.0f

    .line 94
    .local v3, "mindiff":F
    const/4 v2, 0x0

    .line 95
    .local v2, "maxWidth":I
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 96
    .local v7, "x_d_y":F
    const/4 v0, 0x0

    .line 97
    .local v0, "best":Landroid/hardware/Camera$Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "bestSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 99
    .local v5, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 100
    .local v4, "s":Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 101
    cmpg-float v9, v6, v3

    if-gtz v9, :cond_0

    .line 102
    move v3, v6

    .line 103
    move-object v0, v4

    goto :goto_0

    .line 106
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 107
    .restart local v4    # "s":Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 108
    cmpl-float v9, v6, v3

    if-nez v9, :cond_2

    .line 109
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 114
    .restart local v4    # "s":Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v9

    .line 115
    int-to-float v9, v2

    cmpl-float v9, v6, v9

    if-lez v9, :cond_4

    .line 116
    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    .line 117
    move-object v0, v4

    goto :goto_2

    .line 120
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_5
    new-instance v8, Landroid/graphics/Point;

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    return-object v8
.end method

.method private static a(IIFFFIIII)Landroid/graphics/Rect;
    .locals 13
    .param p0, "focusWidth"    # I
    .param p1, "focusHeight"    # I
    .param p2, "areaMultiple"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "previewleft"    # I
    .param p6, "previewRight"    # I
    .param p7, "previewTop"    # I
    .param p8, "previewBottom"    # I

    .prologue
    .line 320
    int-to-float v10, p0

    mul-float/2addr v10, p2

    float-to-int v1, v10

    .line 321
    .local v1, "areaWidth":I
    int-to-float v10, p1

    mul-float/2addr v10, p2

    float-to-int v0, v10

    .line 322
    .local v0, "areaHeight":I
    add-int v10, p5, p6

    div-int/lit8 v3, v10, 0x2

    .line 323
    .local v3, "centerX":I
    add-int v10, p7, p8

    div-int/lit8 v4, v10, 0x2

    .line 324
    .local v4, "centerY":I
    sub-int v10, p6, p5

    int-to-float v10, v10

    const/high16 v11, 0x44fa0000    # 2000.0f

    div-float v8, v10, v11

    .line 325
    .local v8, "unitx":F
    sub-int v10, p8, p7

    int-to-float v10, v10

    const/high16 v11, 0x44fa0000    # 2000.0f

    div-float v9, v10, v11

    .line 326
    .local v9, "unity":F
    int-to-float v10, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float v10, p3, v10

    int-to-float v11, v3

    sub-float/2addr v10, v11

    div-float/2addr v10, v8

    float-to-int v10, v10

    const/16 v11, -0x3e8

    const/16 v12, 0x3e8

    invoke-static {v10, v11, v12}, Laze;->a(III)I

    move-result v5

    .line 327
    .local v5, "left":I
    int-to-float v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float v10, p4, v10

    int-to-float v11, v4

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    float-to-int v10, v10

    const/16 v11, -0x3e8

    const/16 v12, 0x3e8

    invoke-static {v10, v11, v12}, Laze;->a(III)I

    move-result v7

    .line 328
    .local v7, "top":I
    int-to-float v10, v5

    int-to-float v11, v1

    div-float/2addr v11, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/16 v11, -0x3e8

    const/16 v12, 0x3e8

    invoke-static {v10, v11, v12}, Laze;->a(III)I

    move-result v6

    .line 329
    .local v6, "right":I
    int-to-float v10, v7

    int-to-float v11, v0

    div-float/2addr v11, v9

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/16 v11, -0x3e8

    const/16 v12, 0x3e8

    invoke-static {v10, v11, v12}, Laze;->a(III)I

    move-result v2

    .line 331
    .local v2, "bottom":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v5, v7, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v10
.end method

.method public static a(Landroid/app/Activity;)Landroid/hardware/Camera;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 345
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 346
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 348
    invoke-static {p0, v0}, Laze;->a(Landroid/app/Activity;Landroid/hardware/Camera;)V

    .line 349
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 351
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    new-instance v5, Landroid/graphics/Point;

    invoke-static {p0}, Lhl;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static {p0}, Lhl;->e(Landroid/content/Context;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 352
    .local v5, "screenResolution":Landroid/graphics/Point;
    invoke-static {v2, v5}, Laze;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 353
    .local v4, "preview":Landroid/graphics/Point;
    invoke-static {v2, v5}, Laze;->b(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 354
    .local v3, "picture":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 356
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 357
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    .end local v3    # "picture":Landroid/graphics/Point;
    .end local v4    # "preview":Landroid/graphics/Point;
    .end local v5    # "screenResolution":Landroid/graphics/Point;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 363
    const-string/jumbo v6, "android.permission.CAMERA"

    invoke-static {p0, v6}, Lpd;->b(Landroid/content/Context;Ljava/lang/String;)Lpe;

    .line 365
    :cond_1
    return-object v0

    .line 359
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "camera":Landroid/hardware/Camera;
    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 619
    sput-object v0, Laze;->a:[B

    .line 620
    sput-object v0, Laze;->b:[I

    .line 621
    return-void
.end method

.method public static a(FFLandroid/hardware/Camera;Landroid/view/SurfaceView;)V
    .locals 19
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "mCamera"    # Landroid/hardware/Camera;
    .param p3, "mSurfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 249
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 250
    .local v14, "location":[I
    if-nez p3, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    if-eqz p2, :cond_0

    .line 256
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    .line 257
    const/16 v2, 0x64

    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aget v7, v14, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    add-int v8, v5, v6

    const/4 v5, 0x1

    aget v9, v14, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    add-int v10, v5, v6

    move/from16 v5, p0

    move/from16 v6, p1

    .line 257
    invoke-static/range {v2 .. v10}, Laze;->a(IIFFFIIII)Landroid/graphics/Rect;

    move-result-object v13

    .line 259
    .local v13, "focusRect":Landroid/graphics/Rect;
    const/16 v2, 0x64

    const/16 v3, 0x64

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v5, 0x0

    aget v7, v14, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    add-int v8, v5, v6

    const/4 v5, 0x1

    aget v9, v14, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    add-int v10, v5, v6

    move/from16 v5, p0

    move/from16 v6, p1

    .line 259
    invoke-static/range {v2 .. v10}, Laze;->a(IIFFFIIII)Landroid/graphics/Rect;

    move-result-object v16

    .line 262
    .local v16, "meteringRect":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v17

    .line 265
    .local v17, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v18

    .line 266
    .local v18, "userAgent":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "AOSON"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    const-string/jumbo v2, "continuous-picture"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 271
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_2

    .line 272
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v12, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v2, Landroid/hardware/Camera$Area;

    const/16 v3, 0x3e8

    invoke-direct {v2, v13, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 277
    .end local v12    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-lez v2, :cond_3

    .line 278
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v15, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v2, Landroid/hardware/Camera$Area;

    const/16 v3, 0x3e8

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 283
    .end local v15    # "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 285
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :goto_2
    const-string/jumbo v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1onAutoFocus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_1
    new-instance v2, Laze$1;

    invoke-direct {v2}, Laze$1;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 298
    :catch_0
    move-exception v11

    .line 299
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CameraUtil"

    const-string/jumbo v3, "onAutoFocus"

    invoke-static {v2, v3, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 269
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v2, "auto"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :catch_1
    move-exception v11

    .line 287
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CameraUtil"

    const-string/jumbo v3, "onAutoFocus"

    invoke-static {v2, v3, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;Landroid/hardware/Camera;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 369
    invoke-static {p0, p1}, Laze;->b(Landroid/app/Activity;Landroid/hardware/Camera;)I

    move-result v0

    .line 370
    .local v0, "result":I
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 371
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/hardware/Camera;Laze$c;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "listener"    # Laze$c;

    .prologue
    const/4 v6, 0x0

    .line 410
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->checkSDCardStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    const v2, 0x7f0c0300

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string/jumbo v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1CameraUtil"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-eqz p1, :cond_0

    .line 416
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Laze$2;

    invoke-direct {v3, p1}, Laze$2;-><init>(Landroid/hardware/Camera;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 423
    .local v1, "size":Landroid/hardware/Camera$Size;
    invoke-static {p0, p1}, Laze;->b(Landroid/app/Activity;Landroid/hardware/Camera;)I

    move-result v0

    .line 424
    .local v0, "degrees":I
    new-instance v2, Laze$d;

    invoke-direct {v2, p0, p2}, Laze$d;-><init>(Landroid/content/Context;Laze$c;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Laze$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a(Landroid/hardware/Camera;)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 48
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "mParameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Laze$c;)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "listener"    # Laze$c;

    .prologue
    .line 429
    new-instance v0, Laze$b;

    invoke-direct {v0, p1}, Laze$b;-><init>(Laze$c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Laze$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 430
    return-void
.end method

.method public static a([I[BII)V
    .locals 17
    .param p0, "rgb"    # [I
    .param p1, "yuv420sp"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 577
    mul-int v2, p2, p3

    .line 579
    .local v2, "frameSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    const/4 v13, 0x0

    .local v13, "yp":I
    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_8

    .line 580
    shr-int/lit8 v14, v5, 0x1

    mul-int v14, v14, p2

    add-int v8, v2, v14

    .local v8, "uvp":I
    const/4 v7, 0x0

    .local v7, "u":I
    const/4 v10, 0x0

    .line 581
    .local v10, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v9, v8

    .end local v8    # "uvp":I
    .local v9, "uvp":I
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_7

    .line 582
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v11, v14, -0x10

    .line 583
    .local v11, "y":I
    if-gez v11, :cond_0

    const/4 v11, 0x0

    .line 584
    :cond_0
    and-int/lit8 v14, v4, 0x1

    if-nez v14, :cond_9

    .line 585
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v14, -0x80

    .line 586
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "uvp":I
    .restart local v9    # "uvp":I
    aget-byte v14, p1, v8

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v7, v14, -0x80

    move v8, v9

    .line 589
    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    :goto_2
    mul-int/lit16 v12, v11, 0x4a8

    .line 590
    .local v12, "y1192":I
    mul-int/lit16 v14, v10, 0x662

    add-int v6, v12, v14

    .line 591
    .local v6, "r":I
    mul-int/lit16 v14, v10, 0x341

    sub-int v14, v12, v14

    mul-int/lit16 v15, v7, 0x190

    sub-int v3, v14, v15

    .line 592
    .local v3, "g":I
    mul-int/lit16 v14, v7, 0x812

    add-int v1, v12, v14

    .line 594
    .local v1, "b":I
    if-gez v6, :cond_4

    const/4 v6, 0x0

    .line 595
    :cond_1
    :goto_3
    if-gez v3, :cond_5

    const/4 v3, 0x0

    .line 596
    :cond_2
    :goto_4
    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 598
    :cond_3
    :goto_5
    const/high16 v14, -0x1000000

    shl-int/lit8 v15, v6, 0x6

    const/high16 v16, 0xff0000

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v3, 0x2

    const v16, 0xff00

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v1, 0xa

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aput v14, p0, v13

    .line 581
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v13, v13, 0x1

    move v9, v8

    .end local v8    # "uvp":I
    .restart local v9    # "uvp":I
    goto :goto_1

    .line 594
    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    :cond_4
    const v14, 0x3ffff

    if-le v6, v14, :cond_1

    const v6, 0x3ffff

    goto :goto_3

    .line 595
    :cond_5
    const v14, 0x3ffff

    if-le v3, v14, :cond_2

    const v3, 0x3ffff

    goto :goto_4

    .line 596
    :cond_6
    const v14, 0x3ffff

    if-le v1, v14, :cond_3

    const v1, 0x3ffff

    goto :goto_5

    .line 579
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v6    # "r":I
    .end local v8    # "uvp":I
    .end local v11    # "y":I
    .end local v12    # "y1192":I
    .restart local v9    # "uvp":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 601
    .end local v4    # "i":I
    .end local v7    # "u":I
    .end local v9    # "uvp":I
    .end local v10    # "v":I
    :cond_8
    return-void

    .restart local v4    # "i":I
    .restart local v7    # "u":I
    .restart local v9    # "uvp":I
    .restart local v10    # "v":I
    .restart local v11    # "y":I
    :cond_9
    move v8, v9

    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    goto :goto_2
.end method

.method static synthetic a([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 38
    sput-object p0, Laze;->a:[B

    return-object p0
.end method

.method static synthetic a([I)[I
    .locals 0
    .param p0, "x0"    # [I

    .prologue
    .line 38
    sput-object p0, Laze;->b:[I

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Landroid/hardware/Camera;)I
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 374
    const/16 v3, 0x5a

    .line 376
    .local v3, "result":I
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 377
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v5, 0x0

    invoke-static {v5, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 379
    .local v4, "rotation":I
    const/4 v0, 0x0

    .line 380
    .local v0, "degrees":I
    packed-switch v4, :pswitch_data_0

    .line 396
    :goto_0
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 397
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v3, v5, 0x168

    .line 398
    rsub-int v5, v3, 0x168

    rem-int/lit16 v3, v5, 0x168

    .line 405
    .end local v0    # "degrees":I
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v4    # "rotation":I
    :goto_1
    return v3

    .line 382
    .restart local v0    # "degrees":I
    .restart local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v4    # "rotation":I
    :pswitch_0
    const/4 v0, 0x0

    .line 383
    goto :goto_0

    .line 385
    :pswitch_1
    const/16 v0, 0x5a

    .line 386
    goto :goto_0

    .line 388
    :pswitch_2
    const/16 v0, 0xb4

    .line 389
    goto :goto_0

    .line 391
    :pswitch_3
    const/16 v0, 0x10e

    .line 392
    goto :goto_0

    .line 400
    :cond_0
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v3, v5, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 402
    .end local v0    # "degrees":I
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v4    # "rotation":I
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CameraUtil"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 11
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 124
    const/4 v6, 0x0

    .line 125
    .local v6, "tmp":F
    const/high16 v3, 0x42c80000    # 100.0f

    .line 126
    .local v3, "mindiff":F
    const/16 v2, 0x2710

    .line 127
    .local v2, "minWidth":I
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 128
    .local v7, "x_d_y":F
    const/4 v0, 0x0

    .line 129
    .local v0, "best":Landroid/hardware/Camera$Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "bestSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 133
    .local v4, "s":Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 134
    cmpg-float v9, v6, v3

    if-gez v9, :cond_0

    .line 135
    move v3, v6

    goto :goto_0

    .line 138
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 139
    .restart local v4    # "s":Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 140
    cmpl-float v9, v6, v3

    if-nez v9, :cond_2

    .line 141
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 146
    .restart local v4    # "s":Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v9

    .line 147
    int-to-float v9, v2

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    .line 148
    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    .line 149
    move-object v0, v4

    goto :goto_2

    .line 152
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_5
    new-instance v8, Landroid/graphics/Point;

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    return-object v8
.end method

.method public static b(Landroid/hardware/Camera;)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 62
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "mParameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Laze;->b:[I

    return-object v0
.end method

.method public static c(Landroid/hardware/Camera;)Z
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 80
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "flashMode":Ljava/lang/String;
    const-string/jumbo v4, "torch"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const/4 v3, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "flashMode":Ljava/lang/String;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static synthetic c()[B
    .locals 1

    .prologue
    .line 38
    sget-object v0, Laze;->a:[B

    return-object v0
.end method
