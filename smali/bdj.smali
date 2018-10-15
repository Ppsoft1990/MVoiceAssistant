.class public Lbdj;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"

# interfaces
.implements Lbdk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdj$b;,
        Lbdj$a;
    }
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lbdj;->a:Z

    .line 57
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;Lbdl;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "subsampledBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "decodingInfo"    # Lbdl;
    .param p3, "rotation"    # I
    .param p4, "flipHorizontal"    # Z

    .prologue
    .line 165
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Lbdl;->d()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v9

    .line 168
    .local v9, "scaleType":Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq v9, v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v9, v0, :cond_1

    .line 169
    :cond_0
    new-instance v10, Lbde;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v10, v0, v1, p3}, Lbde;-><init>(III)V

    .line 170
    .local v10, "srcSize":Lbde;
    invoke-virtual {p2}, Lbdl;->c()Lbde;

    move-result-object v1

    invoke-virtual {p2}, Lbdl;->e()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v2

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v9, v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-static {v10, v1, v2, v0}, Lbdu;->b(Lbde;Lbde;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F

    move-result v8

    .line 172
    .local v8, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v8, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 175
    iget-boolean v0, p0, Lbdj;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v10, v8}, Lbde;->a(F)Lbde;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Lbdl;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .end local v8    # "scale":F
    .end local v10    # "srcSize":Lbde;
    :cond_1
    if-eqz p4, :cond_2

    .line 180
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 182
    iget-boolean v0, p0, Lbdj;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Flip image horizontally [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lbdl;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_2
    if-eqz p3, :cond_3

    .line 186
    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 188
    iget-boolean v0, p0, Lbdj;->a:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Rotate image on %1$d\u00b0 [%2$s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lbdl;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 192
    .local v7, "finalBitmap":Landroid/graphics/Bitmap;
    if-eq v7, p1, :cond_4

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_4
    return-object v7

    .line 170
    .end local v7    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "srcSize":Lbde;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a(Lbdl;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "decodingInfo"    # Lbdl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lbdj;->b(Lbdl;)Ljava/io/InputStream;

    move-result-object v3

    .line 71
    .local v3, "imageStream":Ljava/io/InputStream;
    invoke-virtual {p1}, Lbdl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lbdj;->a(Ljava/io/InputStream;Ljava/lang/String;)Lbdj$b;

    move-result-object v2

    .line 72
    .local v2, "imageInfo":Lbdj$b;
    iget-object v4, v2, Lbdj$b;->a:Lbde;

    invoke-virtual {p0, v4, p1}, Lbdj;->a(Lbde;Lbdl;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 73
    .local v1, "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0, p1}, Lbdj;->b(Lbdl;)Ljava/io/InputStream;

    move-result-object v3

    .line 74
    invoke-virtual {p0, v3, v1}, Lbdj;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v4, "Image can\'t be decoded [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lbdl;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lbdw;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v4, v2, Lbdj$b;->b:Lbdj$a;

    iget v4, v4, Lbdj$a;->a:I

    iget-object v5, v2, Lbdj$b;->b:Lbdj$a;

    iget-boolean v5, v5, Lbdj$a;->b:Z

    invoke-virtual {p0, v0, p1, v4, v5}, Lbdj;->a(Landroid/graphics/Bitmap;Lbdl;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageStream"    # Ljava/io/InputStream;
    .param p2, "decodingOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 160
    invoke-static {p1}, Lbdv;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lbdv;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected a(Lbde;Lbdl;)Landroid/graphics/BitmapFactory$Options;
    .locals 9
    .param p1, "imageSize"    # Lbde;
    .param p2, "decodingInfo"    # Lbdl;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 142
    invoke-virtual {p2}, Lbdl;->d()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v3

    .line 143
    .local v3, "scaleType":Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    invoke-virtual {p2}, Lbdl;->c()Lbde;

    move-result-object v4

    .line 144
    .local v4, "targetSize":Lbde;
    const/4 v2, 0x1

    .line 145
    .local v2, "scale":I
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq v3, v7, :cond_0

    .line 146
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v3, v7, :cond_1

    move v1, v5

    .line 147
    .local v1, "powerOf2":Z
    :goto_0
    invoke-virtual {p2}, Lbdl;->e()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v7

    invoke-static {p1, v4, v7, v1}, Lbdu;->a(Lbde;Lbde;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I

    move-result v2

    .line 149
    iget-boolean v7, p0, Lbdj;->a:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-virtual {p1, v2}, Lbde;->a(I)Lbde;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x3

    invoke-virtual {p2}, Lbdl;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .end local v1    # "powerOf2":Z
    :cond_0
    invoke-virtual {p2}, Lbdl;->h()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 152
    .local v0, "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 153
    return-object v0

    .end local v0    # "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    move v1, v6

    .line 146
    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lbdj$a;
    .locals 8
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, "rotation":I
    const/4 v3, 0x0

    .line 108
    .local v3, "flip":Z
    const-string/jumbo v5, "image/jpeg"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v5

    sget-object v6, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v5, v6, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v5, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 112
    .local v2, "exifOrientation":I
    packed-switch v2, :pswitch_data_0

    .line 138
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "exifOrientation":I
    :cond_0
    :goto_0
    new-instance v5, Lbdj$a;

    invoke-direct {v5, v4, v3}, Lbdj$a;-><init>(IZ)V

    return-object v5

    .line 114
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exifOrientation":I
    :pswitch_0
    const/4 v3, 0x1

    .line 116
    :pswitch_1
    const/4 v4, 0x0

    .line 117
    goto :goto_0

    .line 119
    :pswitch_2
    const/4 v3, 0x1

    .line 121
    :pswitch_3
    const/16 v4, 0x5a

    .line 122
    goto :goto_0

    .line 124
    :pswitch_4
    const/4 v3, 0x1

    .line 126
    :pswitch_5
    const/16 v4, 0xb4

    .line 127
    goto :goto_0

    .line 129
    :pswitch_6
    const/4 v3, 0x1

    .line 131
    :pswitch_7
    const/16 v4, 0x10e

    goto :goto_0

    .line 134
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "exifOrientation":I
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Can\'t read EXIF tags from file [%s]"

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method protected a(Ljava/io/InputStream;Ljava/lang/String;)Lbdj$b;
    .locals 7
    .param p1, "imageStream"    # Ljava/io/InputStream;
    .param p2, "imageUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {p1}, Lbdv;->a(Ljava/io/Closeable;)V

    .line 97
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 98
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lbdj;->a(Ljava/lang/String;Ljava/lang/String;)Lbdj$a;

    move-result-object v0

    .line 102
    .local v0, "exif":Lbdj$a;
    :goto_0
    new-instance v2, Lbdj$b;

    new-instance v3, Lbde;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v0, Lbdj$a;->a:I

    invoke-direct {v3, v4, v5, v6}, Lbde;-><init>(III)V

    invoke-direct {v2, v3, v0}, Lbdj$b;-><init>(Lbde;Lbdj$a;)V

    return-object v2

    .line 93
    .end local v0    # "exif":Lbdj$a;
    :catchall_0
    move-exception v2

    invoke-static {p1}, Lbdv;->a(Ljava/io/Closeable;)V

    throw v2

    .line 100
    :cond_0
    new-instance v0, Lbdj$a;

    invoke-direct {v0}, Lbdj$a;-><init>()V

    .restart local v0    # "exif":Lbdj$a;
    goto :goto_0
.end method

.method protected b(Lbdl;)Ljava/io/InputStream;
    .locals 3
    .param p1, "decodingInfo"    # Lbdl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Lbdl;->f()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lbdl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbdl;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
