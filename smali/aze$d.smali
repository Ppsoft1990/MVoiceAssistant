.class Laze$d;
.super Landroid/os/AsyncTask;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Laze$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laze$c;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Laze$c;

    .prologue
    .line 436
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 437
    iput-object p1, p0, Laze$d;->a:Landroid/content/Context;

    .line 438
    iput-object p2, p0, Laze$d;->b:Laze$c;

    .line 439
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 443
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, "degrees":I
    const/4 v6, 0x1

    aget-object v4, p1, v6

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 445
    .local v4, "size":Landroid/hardware/Camera$Size;
    const/4 v0, 0x0

    .line 447
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Laze;->b()[I

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Laze;->b()[I

    move-result-object v6

    array-length v6, v6

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    if-eq v6, v7, :cond_1

    .line 448
    :cond_0
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    new-array v6, v6, [I

    invoke-static {v6}, Laze;->a([I)[I

    .line 450
    :cond_1
    const-string/jumbo v6, "CameraUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "1CameraUtil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Laze;->c()[B

    move-result-object v6

    if-nez v6, :cond_2

    .line 470
    :goto_0
    return-object v5

    .line 454
    :cond_2
    invoke-static {}, Laze;->b()[I

    move-result-object v5

    invoke-static {}, Laze;->c()[B

    move-result-object v6

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v5, v6, v7, v8}, Laze;->a([I[BII)V

    .line 455
    const/4 v5, 0x0

    invoke-static {v5}, Laze;->a([B)[B

    .line 456
    const-string/jumbo v5, "CameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "2CameraUtil"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {}, Laze;->b()[I

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 458
    const-string/jumbo v5, "CameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "3CameraUtil"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v5, p0, Laze$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Lbab;->a(Landroid/content/Context;I)F

    move-result v3

    .line 461
    .local v3, "scale":F
    const-string/jumbo v5, "CameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "4CameraUtil"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {v0, v3}, Lbab;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    const-string/jumbo v5, "CameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "5CameraUtil"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {v0, v1}, Lbab;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 466
    const-string/jumbo v5, "CameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "6CameraUtil"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "scale":F
    :goto_1
    move-object v5, v0

    .line 470
    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v2

    .line 468
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "CameraUtil"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Laze$d;->b:Laze$c;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Laze$d;->b:Laze$c;

    invoke-interface {v0, p1}, Laze$c;->a(Landroid/graphics/Bitmap;)V

    .line 481
    :cond_0
    new-instance v0, Laze$e;

    iget-object v1, p0, Laze$d;->b:Laze$c;

    invoke-direct {v0, v1}, Laze$e;-><init>(Laze$c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Laze$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 482
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Laze$d;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 432
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Laze$d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
