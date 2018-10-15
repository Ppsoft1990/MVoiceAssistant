.class public Lcom/migu/voiceads/utils/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/b/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/migu/voiceads/utils/b/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/migu/voiceads/utils/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/voiceads/utils/b/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/b/e;->c(Ljava/lang/String;)Z

    return-void
.end method

.method private a()I
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b/a;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b/a;->e()Lcom/migu/voiceads/utils/b/a$a;

    move-result-object v1

    sget-object v2, Lcom/migu/voiceads/utils/b/a$a;->b:Lcom/migu/voiceads/utils/b/a$a;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Insufficient storage space, please free storage manually!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/b/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "get sdcard write permission failed!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 11

    const/16 v10, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_4

    const/high16 v0, 0xa00000

    if-gt v2, v0, :cond_2

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->a()I

    move-result v0

    if-le v10, v0, :cond_3

    :cond_2
    const-wide v6, 0x3fd999999999999aL    # 0.4

    array-length v0, v4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    double-to-int v2, v6

    new-instance v0, Lcom/migu/voiceads/utils/b/e$a;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/migu/voiceads/utils/b/e$a;-><init>(Lcom/migu/voiceads/utils/b/e;Lcom/migu/voiceads/utils/b/e$a;)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v0, v1

    :goto_2
    if-lt v0, v2, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->a()I

    move-result v0

    if-le v0, v10, :cond_0

    move v1, v3

    goto :goto_0

    :cond_4
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".cache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    int-to-long v6, v2

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    array-length v5, v4

    if-lt v0, v5, :cond_7

    move v1, v3

    goto :goto_0

    :cond_7
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".cache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v0, ""

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b/a;->e()Lcom/migu/voiceads/utils/b/a$a;

    move-result-object v0

    sget-object v1, Lcom/migu/voiceads/utils/b/a$a;->b:Lcom/migu/voiceads/utils/b/a$a;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b/a;->c()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v2}, Lcom/migu/voiceads/utils/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v2}, Lcom/migu/voiceads/utils/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/migu/voiceads/utils/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    move-object v0, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/migu/voiceads/utils/b/e;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".cache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/b/e;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ImageFileCache"

    const-string/jumbo v1, "FileNotFoundException"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/migu/voiceads/utils/b/e;->a:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "ImageFileCache"

    const-string/jumbo v1, "IOException"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method
