.class final Lbcz;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/widget/ImageView;

.field final c:Lbcu;

.field final d:Lbdd;

.field private final e:Lbcx;

.field private final f:Lbcy;

.field private final g:Landroid/os/Handler;

.field private final h:Lbcw;

.field private final i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final l:Lbdk;

.field private final m:Z

.field private final n:Ljava/lang/String;

.field private final o:Lbde;


# direct methods
.method public constructor <init>(Lbcx;Lbcy;Landroid/os/Handler;)V
    .locals 1
    .param p1, "engine"    # Lbcx;
    .param p2, "imageLoadingInfo"    # Lbcy;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lbcz;->e:Lbcx;

    .line 96
    iput-object p2, p0, Lbcz;->f:Lbcy;

    .line 97
    iput-object p3, p0, Lbcz;->g:Landroid/os/Handler;

    .line 99
    iget-object v0, p1, Lbcx;->a:Lbcw;

    iput-object v0, p0, Lbcz;->h:Lbcw;

    .line 100
    iget-object v0, p0, Lbcz;->h:Lbcw;

    iget-object v0, v0, Lbcw;->q:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lbcz;->i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 101
    iget-object v0, p0, Lbcz;->h:Lbcw;

    iget-object v0, v0, Lbcw;->v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lbcz;->j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 102
    iget-object v0, p0, Lbcz;->h:Lbcw;

    iget-object v0, v0, Lbcw;->w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lbcz;->k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 103
    iget-object v0, p0, Lbcz;->h:Lbcw;

    iget-object v0, v0, Lbcw;->r:Lbdk;

    iput-object v0, p0, Lbcz;->l:Lbdk;

    .line 104
    iget-object v0, p0, Lbcz;->h:Lbcw;

    iget-boolean v0, v0, Lbcw;->t:Z

    iput-boolean v0, p0, Lbcz;->m:Z

    .line 105
    iget-object v0, p2, Lbcy;->a:Ljava/lang/String;

    iput-object v0, p0, Lbcz;->a:Ljava/lang/String;

    .line 106
    iget-object v0, p2, Lbcy;->b:Ljava/lang/String;

    iput-object v0, p0, Lbcz;->n:Ljava/lang/String;

    .line 107
    iget-object v0, p2, Lbcy;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lbcz;->b:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p2, Lbcy;->d:Lbde;

    iput-object v0, p0, Lbcz;->o:Lbde;

    .line 109
    iget-object v0, p2, Lbcy;->e:Lbcu;

    iput-object v0, p0, Lbcz;->c:Lbcu;

    .line 110
    iget-object v0, p2, Lbcy;->f:Lbdd;

    iput-object v0, p0, Lbcz;->d:Lbdd;

    .line 111
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "imageUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v1, p0, Lbcz;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v4

    .line 289
    .local v4, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    new-instance v0, Lbdl;

    iget-object v1, p0, Lbcz;->n:Ljava/lang/String;

    iget-object v3, p0, Lbcz;->o:Lbde;

    invoke-direct {p0}, Lbcz;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v5

    iget-object v6, p0, Lbcz;->c:Lbcu;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lbdl;-><init>(Ljava/lang/String;Ljava/lang/String;Lbde;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lbcu;)V

    .line 290
    .local v0, "decodingInfo":Lbdl;
    iget-object v1, p0, Lbcz;->l:Lbdk;

    invoke-interface {v1, v0}, Lbdk;->a(Lbdl;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "targetFile"    # Ljava/io/File;

    .prologue
    .line 297
    const-string/jumbo v4, "Cache image on disc [%s]"

    invoke-direct {p0, v4}, Lbcz;->b(Ljava/lang/String;)V

    .line 300
    :try_start_0
    iget-object v4, p0, Lbcz;->h:Lbcw;

    iget v3, v4, Lbcw;->d:I

    .line 301
    .local v3, "width":I
    iget-object v4, p0, Lbcz;->h:Lbcw;

    iget v1, v4, Lbcw;->e:I

    .line 302
    .local v1, "height":I
    const/4 v2, 0x0

    .line 303
    .local v2, "saved":Z
    if-gtz v3, :cond_0

    if-lez v1, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0, p1, v3, v1}, Lbcz;->a(Ljava/io/File;II)Z

    move-result v2

    .line 306
    :cond_1
    if-nez v2, :cond_2

    .line 307
    invoke-direct {p0, p1}, Lbcz;->b(Ljava/io/File;)V

    .line 310
    :cond_2
    iget-object v4, p0, Lbcz;->h:Lbcw;

    iget-object v4, v4, Lbcw;->p:Lbce;

    iget-object v5, p0, Lbcz;->a:Ljava/lang/String;

    invoke-interface {v4, v5, p1}, Lbce;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 311
    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 314
    .end local v1    # "height":I
    .end local v2    # "saved":Z
    .end local v3    # "width":I
    :goto_0
    return-object v4

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lbdw;->a(Ljava/lang/Throwable;)V

    .line 314
    iget-object v4, p0, Lbcz;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "failType"    # Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .param p2, "failCause"    # Ljava/lang/Throwable;

    .prologue
    .line 354
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lbcz;->g:Landroid/os/Handler;

    new-instance v1, Lbcz$2;

    invoke-direct {v1, p0, p1, p2}, Lbcz$2;-><init>(Lbcz;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    :cond_0
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 388
    iget-boolean v0, p0, Lbcz;->m:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;II)Z
    .locals 10
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v3, Lbde;

    invoke-direct {v3, p2, p3}, Lbde;-><init>(II)V

    .line 321
    .local v3, "targetImageSize":Lbde;
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    iget-object v2, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v1, v2}, Lbcu$a;->a(Lbcu;)Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v6

    .line 322
    .local v6, "specialOptions":Lbcu;
    new-instance v0, Lbdl;

    iget-object v1, p0, Lbcz;->n:Ljava/lang/String;

    iget-object v2, p0, Lbcz;->a:Ljava/lang/String;

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lbcz;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lbdl;-><init>(Ljava/lang/String;Ljava/lang/String;Lbde;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lbcu;)V

    .line 323
    .local v0, "decodingInfo":Lbdl;
    iget-object v1, p0, Lbcz;->l:Lbdk;

    invoke-interface {v1, v0}, Lbdk;->a(Lbdl;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 324
    .local v7, "bmp":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 325
    .local v9, "savedSuccessfully":Z
    if-eqz v7, :cond_0

    .line 326
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v8, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 328
    .local v8, "os":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lbcz;->h:Lbcw;

    iget-object v1, v1, Lbcw;->f:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lbcz;->h:Lbcw;

    iget v2, v2, Lbcw;->g:I

    invoke-virtual {v7, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 330
    invoke-static {v8}, Lbdv;->a(Ljava/io/Closeable;)V

    .line 332
    if-eqz v9, :cond_0

    .line 333
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    .end local v8    # "os":Ljava/io/OutputStream;
    :cond_0
    return v9

    .line 330
    .restart local v8    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lbdv;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private b(Ljava/io/File;)V
    .locals 5
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0}, Lbcz;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v2

    iget-object v3, p0, Lbcz;->a:Ljava/lang/String;

    iget-object v4, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v4}, Lbcu;->p()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 342
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v0, v1}, Lbdv;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    invoke-static {v1}, Lbdv;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    invoke-static {v0}, Lbdv;->a(Ljava/io/Closeable;)V

    .line 351
    return-void

    .line 346
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v1}, Lbdv;->a(Ljava/io/Closeable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    .end local v1    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    invoke-static {v0}, Lbdv;->a(Ljava/io/Closeable;)V

    throw v2
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-boolean v0, p0, Lbcz;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lbcz;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-object v3, p0, Lbcz;->e:Lbcx;

    invoke-virtual {v3}, Lbcx;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 175
    .local v1, "pause":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    monitor-enter v1

    .line 177
    :try_start_0
    const-string/jumbo v3, "ImageLoader is paused. Waiting...  [%s]"

    invoke-direct {p0, v3}, Lbcz;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    const-string/jumbo v2, ".. Resume loading [%s]"

    invoke-direct {p0, v2}, Lbcz;->b(Ljava/lang/String;)V

    .line 185
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lbcz;->d()Z

    move-result v2

    :goto_0
    return v2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "Task was interrupted [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lbcz;->n:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lbdw;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    monitor-exit v1

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v3, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v3}, Lbcu;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const-string/jumbo v3, "Delay %d ms before loading...  [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v5}, Lbcu;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lbcz;->n:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-direct {p0, v3, v4}, Lbcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :try_start_0
    iget-object v3, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v3}, Lbcu;->o()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    invoke-direct {p0}, Lbcz;->d()Z

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Task was interrupted [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lbcz;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lbdw;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v1, v2

    .line 204
    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 212
    iget-object v2, p0, Lbcz;->e:Lbcx;

    iget-object v3, p0, Lbcz;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lbcx;->a(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lbcz;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 216
    .local v1, "imageViewWasReused":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Lbcz;->g:Landroid/os/Handler;

    new-instance v3, Lbcz$1;

    invoke-direct {v3, p0}, Lbcz$1;-><init>(Lbcz;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "ImageView is reused for another image. Task is cancelled. [%s]"

    invoke-direct {p0, v2}, Lbcz;->b(Ljava/lang/String;)V

    .line 226
    :cond_1
    return v1

    .line 215
    .end local v1    # "imageViewWasReused":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 232
    .local v0, "interrupted":Z
    if-eqz v0, :cond_0

    const-string/jumbo v1, "Task was interrupted [%s]"

    invoke-direct {p0, v1}, Lbcz;->b(Ljava/lang/String;)V

    .line 233
    :cond_0
    return v0
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 237
    invoke-direct {p0}, Lbcz;->g()Ljava/io/File;

    move-result-object v2

    .line 239
    .local v2, "imageFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 241
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const-string/jumbo v4, "Load image from disc cache [%s]"

    invoke-direct {p0, v4}, Lbcz;->b(Ljava/lang/String;)V

    .line 244
    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lbcz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    :cond_0
    if-nez v0, :cond_1

    .line 247
    const-string/jumbo v4, "Load image from network [%s]"

    invoke-direct {p0, v4}, Lbcz;->b(Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v4}, Lbcu;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lbcz;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "imageUriForDecoding":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Lbcz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    if-nez v0, :cond_1

    .line 252
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lbcz;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 270
    .end local v3    # "imageUriForDecoding":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 249
    :cond_2
    iget-object v3, p0, Lbcz;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v6}, Lbcz;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 257
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lbdw;->a(Ljava/lang/Throwable;)V

    .line 259
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lbcz;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 263
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1}, Lbdw;->a(Ljava/lang/Throwable;)V

    .line 265
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lbcz;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 266
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lbdw;->a(Ljava/lang/Throwable;)V

    .line 268
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lbcz;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private g()Ljava/io/File;
    .locals 5

    .prologue
    .line 274
    iget-object v3, p0, Lbcz;->h:Lbcw;

    iget-object v1, v3, Lbcw;->p:Lbce;

    .line 275
    .local v1, "discCache":Lbce;
    iget-object v3, p0, Lbcz;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lbce;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 276
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 277
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    :cond_0
    iget-object v3, p0, Lbcz;->h:Lbcw;

    iget-object v3, v3, Lbcw;->u:Lbce;

    iget-object v4, p0, Lbcz;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Lbce;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 284
    :cond_2
    return-object v2
.end method

.method private h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lbcz;->e:Lbcx;

    invoke-virtual {v1}, Lbcx;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v0, p0, Lbcz;->j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 376
    .local v0, "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :goto_0
    return-object v0

    .line 371
    .end local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :cond_0
    iget-object v1, p0, Lbcz;->e:Lbcx;

    invoke-virtual {v1}, Lbcx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v0, p0, Lbcz;->k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .restart local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    goto :goto_0

    .line 374
    .end local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :cond_1
    iget-object v0, p0, Lbcz;->i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .restart local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lbcz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 115
    invoke-direct {p0}, Lbcz;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Lbcz;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lbcz;->f:Lbcy;

    iget-object v2, v3, Lbcy;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 119
    .local v2, "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    const-string/jumbo v3, "Start display image task [%s]"

    invoke-direct {p0, v3}, Lbcz;->b(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    const-string/jumbo v3, "Image already is loading. Waiting... [%s]"

    invoke-direct {p0, v3}, Lbcz;->b(Ljava/lang/String;)V

    .line 124
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 127
    :try_start_0
    invoke-direct {p0}, Lbcz;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 129
    :cond_3
    :try_start_1
    iget-object v3, p0, Lbcz;->h:Lbcw;

    iget-object v3, v3, Lbcw;->o:Lbcn;

    iget-object v4, p0, Lbcz;->n:Ljava/lang/String;

    invoke-interface {v3, v4}, Lbcn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 130
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_a

    .line 131
    invoke-direct {p0}, Lbcz;->f()Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 132
    if-nez v0, :cond_4

    .line 160
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 134
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lbcz;->d()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lbcz;->e()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    .line 160
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 136
    :cond_6
    :try_start_3
    iget-object v3, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v3}, Lbcu;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 137
    const-string/jumbo v3, "PreProcess image before caching in memory [%s]"

    invoke-direct {p0, v3}, Lbcz;->b(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v3}, Lbcu;->q()Lbdt;

    move-result-object v3

    invoke-interface {v3, v0}, Lbdt;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    if-nez v0, :cond_7

    .line 140
    const-string/jumbo v3, "Pre-processor returned null [%s]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v3}, Lbcu;->k()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 145
    const-string/jumbo v3, "Cache image in memory [%s]"

    invoke-direct {p0, v3}, Lbcz;->b(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lbcz;->h:Lbcw;

    iget-object v3, v3, Lbcw;->o:Lbcn;

    iget-object v4, p0, Lbcz;->n:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lbcn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    iget-object v3, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v3}, Lbcu;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 153
    const-string/jumbo v3, "PostProcess image before displaying [%s]"

    invoke-direct {p0, v3}, Lbcz;->b(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lbcz;->c:Lbcu;

    invoke-virtual {v3}, Lbcu;->r()Lbdt;

    move-result-object v3

    invoke-interface {v3, v0}, Lbdt;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    if-nez v0, :cond_9

    .line 156
    const-string/jumbo v3, "Pre-processor returned null [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lbcz;->n:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :cond_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 163
    invoke-direct {p0}, Lbcz;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lbcz;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    new-instance v1, Lbct;

    iget-object v3, p0, Lbcz;->f:Lbcy;

    iget-object v4, p0, Lbcz;->e:Lbcx;

    invoke-direct {v1, v0, v3, v4}, Lbct;-><init>(Landroid/graphics/Bitmap;Lbcy;Lbcx;)V

    .line 166
    .local v1, "displayBitmapTask":Lbct;
    iget-boolean v3, p0, Lbcz;->m:Z

    invoke-virtual {v1, v3}, Lbct;->a(Z)V

    .line 167
    iget-object v3, p0, Lbcz;->g:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 149
    .end local v1    # "displayBitmapTask":Lbct;
    :cond_a
    :try_start_4
    const-string/jumbo v3, "...Get cached bitmap from memory after waiting. [%s]"

    invoke-direct {p0, v3}, Lbcz;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 160
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
