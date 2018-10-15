.class public Lcom/iflytek/framework/ui/share/WXShareUtils;
.super Ljava/lang/Object;
.source "WXShareUtils.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "wx78d23038a30fa08b"

.field public static final DEFAULT_THUMB_HEIGHT:I = 0xf0

.field public static final DEFAULT_THUMB_WIDTH:I = 0xf0

.field private static final MAX_LOOP_TIME:I = 0xa

.field private static final MAX_THUMB_SIZE:I = 0x7d00

.field private static final MIN_SCALE_VALUE:F = 0.9f

.field private static final SDK_SUPPORT_MIN_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "WXShareUtils"

.field private static final THUMB_SIZE:I = 0x82

.field private static final TIMELINE_SUPPORTED_VERSION:I = 0x21020001

.field private static api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "needRecycle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 364
    if-nez p0, :cond_0

    .line 388
    :goto_0
    return-object v2

    .line 368
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 370
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 383
    .local v2, "result":[B
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WXShareUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":[B
    :catch_1
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WXShareUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static buildThumbData(Ljava/lang/String;II)[B
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I

    .prologue
    .line 394
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, "imageFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 396
    .local v6, "thumbBmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 397
    .local v3, "result":[B
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 398
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 399
    .local v7, "tmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 400
    const-string/jumbo v8, "WXShareUtils"

    const-string/jumbo v9, "the share image doesn\'t exist!!!"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v8, 0x0

    .line 440
    .end local v7    # "tmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 403
    .restart local v7    # "tmp":Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v8, p1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 404
    .local v4, "scale":F
    invoke-static {v7, v4}, Lcom/iflytek/framework/ui/share/WXShareUtils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 406
    if-eq v7, v6, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 407
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    :cond_1
    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/iflytek/framework/ui/share/WXShareUtils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v3

    .line 416
    array-length v5, v3

    .line 417
    .local v5, "size":I
    const/4 v1, 0x1

    .line 418
    .local v1, "i":I
    const/4 v0, 0x0

    .line 419
    .local v0, "finalBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/16 v8, 0x7d00

    if-le v5, v8, :cond_2

    .line 420
    const/16 v8, 0xa

    if-ne v1, v8, :cond_6

    .line 434
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 435
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 438
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v8, v3

    .line 440
    goto :goto_0

    .line 411
    .end local v0    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v4    # "scale":F
    .end local v5    # "size":I
    .end local v7    # "tmp":Landroid/graphics/Bitmap;
    :cond_5
    const-string/jumbo v8, "WXShareUtils"

    const-string/jumbo v9, "the share image doesn\'t exist!!!"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v8, 0x0

    goto :goto_0

    .line 423
    .restart local v0    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "i":I
    .restart local v4    # "scale":F
    .restart local v5    # "size":I
    .restart local v7    # "tmp":Landroid/graphics/Bitmap;
    :cond_6
    invoke-static {v5}, Lcom/iflytek/framework/ui/share/WXShareUtils;->reComputeSize(I)F

    move-result v4

    .line 424
    invoke-static {v6, v4}, Lcom/iflytek/framework/ui/share/WXShareUtils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_7

    .line 426
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 429
    :cond_7
    move-object v6, v0

    .line 430
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/iflytek/framework/ui/share/WXShareUtils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v3

    .line 431
    array-length v5, v3

    .line 432
    add-int/lit8 v1, v1, 0x1

    .line 433
    goto :goto_1
.end method

.method public static buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 351
    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static createMessage(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 1
    .param p0, "object"    # Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "des"    # Ljava/lang/String;
    .param p3, "thumbData"    # [B

    .prologue
    .line 334
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 335
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    if-eqz p0, :cond_0

    .line 336
    iput-object p0, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 338
    :cond_0
    if-eqz p1, :cond_1

    .line 339
    iput-object p1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 341
    :cond_1
    if-eqz p2, :cond_2

    .line 342
    iput-object p2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 344
    :cond_2
    if-eqz p3, :cond_3

    .line 345
    iput-object p3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 347
    :cond_3
    return-object v0
.end method

.method private static cutTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x4a0

    const/16 v6, 0x1e0

    const/16 v5, 0x140

    .line 301
    if-eqz p1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    :cond_0
    const-string/jumbo v2, ""

    .line 320
    .end local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return-object v2

    .line 304
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    move-object v2, p1

    .line 305
    .local v2, "tmpTitle":Ljava/lang/String;
    const/16 v1, 0x46

    .line 306
    .local v1, "max":I
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 307
    .local v0, "height":I
    if-gt v0, v5, :cond_4

    .line 308
    const/16 v1, 0x32

    .line 316
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 317
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 309
    :cond_4
    if-le v0, v5, :cond_5

    if-gt v0, v6, :cond_5

    .line 310
    const/16 v1, 0x46

    goto :goto_1

    .line 311
    :cond_5
    if-le v0, v6, :cond_6

    if-ge v0, v7, :cond_6

    .line 312
    const/16 v1, 0x50

    goto :goto_1

    .line 313
    :cond_6
    if-lt v0, v7, :cond_3

    .line 314
    const/16 v1, 0x8c

    goto :goto_1
.end method

.method public static isPhoneSDKSupportAPI()Z
    .locals 2

    .prologue
    .line 92
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "currentapiVersion":I
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPhoneSupportWXApi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    sget-object v1, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isWXAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isWXAppSupportAPI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isPhoneSDKSupportAPI()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportTimeLine()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-object v2, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v2, :cond_1

    .line 153
    .local v0, "wxSdkVersion":I
    :cond_0
    :goto_0
    return v1

    .line 148
    .end local v0    # "wxSdkVersion":I
    :cond_1
    sget-object v2, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    .line 149
    .restart local v0    # "wxSdkVersion":I
    const-string/jumbo v2, "WXShareUtils"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const v2, 0x21020001

    if-lt v0, v2, :cond_0

    .line 151
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportWXSdk()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isWXAppInstalled()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    goto :goto_0
.end method

.method private static isWXAppSupportAPI()Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    goto :goto_0
.end method

.method protected static localImageShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "shareTitle"    # Ljava/lang/String;
    .param p4, "shareText"    # Ljava/lang/String;
    .param p5, "isTimeLine"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xf0

    .line 190
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v5

    .line 194
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>()V

    .line 200
    .local v1, "imgObj":Lcom/tencent/mm/sdk/modelmsg/WXImageObject;
    invoke-virtual {v1, p2}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    .line 202
    invoke-static {p2, v8, v8}, Lcom/iflytek/framework/ui/share/WXShareUtils;->buildThumbData(Ljava/lang/String;II)[B

    move-result-object v4

    .line 206
    .local v4, "thumbData":[B
    invoke-static {v1, p3, p4, v4}, Lcom/iflytek/framework/ui/share/WXShareUtils;->createMessage(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    .line 208
    .local v2, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 209
    .local v3, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iput-object p1, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 210
    iput-object v2, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 211
    if-eqz p5, :cond_2

    const/4 v5, 0x1

    :cond_2
    iput v5, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 213
    const-string/jumbo v5, "WXShareUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " localImageShare path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " scene = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v5, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v5, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v5

    goto :goto_0
.end method

.method public static musicShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "musicWebUrl"    # Ljava/lang/String;
    .param p3, "musicDataUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "des"    # Ljava/lang/String;
    .param p6, "bitmap"    # Ljava/lang/String;
    .param p7, "isTimeLine"    # Z

    .prologue
    const/4 v4, 0x0

    .line 270
    :try_start_0
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;-><init>()V

    .line 271
    .local v2, "music":Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;
    iput-object p2, v2, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 272
    iput-object p3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 273
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 274
    .local v1, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 275
    sget-object v5, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v5}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v5

    const v6, 0x21020001

    if-ge v5, v6, :cond_2

    .line 277
    invoke-static {p0, p4}, Lcom/iflytek/framework/ui/share/WXShareUtils;->cutTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 281
    .end local p4    # "title":Ljava/lang/String;
    :goto_0
    if-nez p5, :cond_0

    const-string/jumbo p5, ""

    .end local p5    # "des":Ljava/lang/String;
    :cond_0
    iput-object p5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 282
    if-eqz p6, :cond_1

    .line 283
    const/16 v5, 0xf0

    const/16 v6, 0xf0

    invoke-static {p6, v5, v6}, Lcom/iflytek/framework/ui/share/WXShareUtils;->buildThumbData(Ljava/lang/String;II)[B

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 287
    :cond_1
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 288
    .local v3, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iput-object p1, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 289
    iput-object v1, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 290
    if-eqz p7, :cond_4

    const/4 v5, 0x1

    :goto_1
    iput v5, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 292
    sget-object v5, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v5, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v4

    .line 295
    .end local v1    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .end local v2    # "music":Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;
    .end local v3    # "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    :goto_2
    return v4

    .line 279
    .restart local v1    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .restart local v2    # "music":Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;
    .restart local p4    # "title":Ljava/lang/String;
    .restart local p5    # "des":Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    const-string/jumbo p4, ""

    .end local p4    # "title":Ljava/lang/String;
    :cond_3
    iput-object p4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .end local v2    # "music":Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;
    .end local p5    # "des":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WXShareUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "share exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .restart local v2    # "music":Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;
    .restart local v3    # "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    :cond_4
    move v5, v4

    .line 290
    goto :goto_1
.end method

.method private static reComputeSize(I)F
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 444
    const/high16 v1, 0x46fa0000    # 32000.0f

    int-to-float v2, p0

    div-float v0, v1, v2

    .line 445
    .local v0, "scale":F
    const v1, 0x3f666666    # 0.9f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 446
    const v0, 0x3f666666    # 0.9f

    .line 448
    :cond_0
    return v0
.end method

.method public static registerToWX(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 122
    const-string/jumbo v0, "wx78d23038a30fa08b"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    sput-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 124
    :cond_0
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string/jumbo v1, "wx78d23038a30fa08b"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratio"    # F

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 452
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 453
    .local v1, "dstWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 454
    .local v0, "dstHeight":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 456
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 462
    :cond_0
    :goto_0
    return-object p0

    .line 458
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected static textShare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "shareText"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isTimeLine"    # Z

    .prologue
    const/4 v3, 0x0

    .line 162
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;-><init>()V

    .line 163
    .local v2, "textObj":Lcom/tencent/mm/sdk/modelmsg/WXTextObject;
    iput-object p0, v2, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 166
    invoke-static {v2, v3, p0, v3}, Lcom/iflytek/framework/ui/share/WXShareUtils;->createMessage(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    .line 169
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 170
    .local v1, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iput-object p1, v1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 171
    iput-object v0, v1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 172
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 173
    const-string/jumbo v3, "WXShareUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textShare shareText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "scene = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v3, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v3

    return v3

    .line 172
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static unregisterToWX()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->unregisterApp()V

    goto :goto_0
.end method

.method protected static webPageShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "des"    # Ljava/lang/String;
    .param p5, "thumbPath"    # Ljava/lang/String;
    .param p6, "isTimeLine"    # Z

    .prologue
    .line 234
    :try_start_0
    new-instance v5, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v5}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 235
    .local v5, "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    iput-object p2, v5, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 238
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 239
    :cond_0
    const/4 v4, 0x0

    .line 250
    .local v4, "thumbData":[B
    :goto_0
    invoke-static {v5, p3, p4, v4}, Lcom/iflytek/framework/ui/share/WXShareUtils;->createMessage(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    .line 251
    .local v2, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 252
    .local v3, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iput-object p1, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 253
    iput-object v2, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 254
    if-eqz p6, :cond_3

    const/4 v6, 0x1

    :goto_1
    iput v6, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 256
    const-string/jumbo v6, "WXShareUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "webPageShare url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "des = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "scene = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v6, Lcom/iflytek/framework/ui/share/WXShareUtils;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v6, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v6

    .line 261
    .end local v2    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .end local v3    # "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    .end local v4    # "thumbData":[B
    .end local v5    # "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    :goto_2
    return v6

    .line 241
    .restart local v5    # "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    const/16 v6, 0xf0

    const/16 v7, 0xf0

    invoke-static {p5, v6, v7}, Lcom/iflytek/framework/ui/share/WXShareUtils;->buildThumbData(Ljava/lang/String;II)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "thumbData":[B
    goto :goto_0

    .line 246
    .end local v4    # "thumbData":[B
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "thumbData":[B
    goto :goto_0

    .line 254
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .restart local v3    # "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 259
    .end local v2    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .end local v3    # "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    .end local v4    # "thumbData":[B
    .end local v5    # "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WXShareUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "share exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v6, 0x0

    goto :goto_2
.end method
