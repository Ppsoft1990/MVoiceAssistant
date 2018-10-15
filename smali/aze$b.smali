.class Laze$b;
.super Landroid/os/AsyncTask;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Laze$c;


# direct methods
.method public constructor <init>(Laze$c;)V
    .locals 0
    .param p1, "listener"    # Laze$c;

    .prologue
    .line 488
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 489
    iput-object p1, p0, Laze$b;->a:Laze$c;

    .line 490
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/16 v5, 0x640

    const/4 v4, 0x0

    .line 494
    aget-object v3, p1, v4

    .line 495
    .local v3, "picUrl":Ljava/lang/String;
    const/4 v0, 0x0

    .line 497
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 499
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 501
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v4, v5, :cond_1

    .line 503
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 504
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 505
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 507
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 525
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 509
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v4, v5, :cond_2

    .line 510
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit16 v4, v4, 0x640

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 515
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 516
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 517
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 519
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    const/16 v4, 0x640

    invoke-static {v0, v4}, Lcom/iflytek/viafly/im/ImageUtils;->resizeImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit16 v4, v4, 0x640

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 522
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 523
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraUtil"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Laze$b;->a:Laze$c;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Laze$b;->a:Laze$c;

    invoke-interface {v0, p1}, Laze$c;->a(Landroid/graphics/Bitmap;)V

    .line 536
    :cond_0
    new-instance v0, Laze$e;

    iget-object v1, p0, Laze$b;->a:Laze$c;

    invoke-direct {v0, v1}, Laze$e;-><init>(Laze$c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Laze$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 537
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Laze$b;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 485
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Laze$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
