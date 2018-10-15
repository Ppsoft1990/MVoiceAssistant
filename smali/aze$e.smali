.class public Laze$e;
.super Landroid/os/AsyncTask;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
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
    .line 543
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 544
    iput-object p1, p0, Laze$e;->a:Laze$c;

    .line 545
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 549
    const/4 v6, 0x0

    aget-object v0, p1, v6

    .line 551
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ViaFly/Translate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/IMG_PIC_TRANSLATE.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 554
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 555
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 556
    .local v4, "success":Z
    if-nez v4, :cond_0

    move-object v0, v5

    .line 564
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "success":Z
    :goto_0
    return-object v0

    .line 560
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v0, v5

    .line 561
    goto :goto_0

    .line 563
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-static {v0, v5, v6, v3}, Lbab;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Laze$e;->a:Laze$c;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Laze$e;->a:Laze$c;

    invoke-interface {v0, p1}, Laze$c;->b(Landroid/graphics/Bitmap;)V

    .line 573
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Laze$e;->a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 540
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Laze$e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
