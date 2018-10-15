.class public final Lcom/iflytek/base/skin/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x5000

.field public static final DEFAULT_THEME_PARENT_DIR:Ljava/lang/String; = "skin"

.field public static final FLYIME_DIR:Ljava/lang/String; = "ViaFly"

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field public static final THEME_FORMAT:Ljava/lang/String; = ".ivs"

.field private static mScreenDensity:F

.field private static mScreenHeight:I

.field private static mScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/lang/String;Z)Z
    .locals 13
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "cover"    # Z

    .prologue
    const/4 v9, 0x0

    .line 400
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v9

    .line 404
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v4, "destFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez p2, :cond_2

    .line 407
    const/4 v9, 0x1

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 411
    .local v7, "destParentFile":Ljava/io/File;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 413
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 416
    :cond_3
    const/4 v9, 0x0

    .line 417
    .local v9, "succeed":Z
    const/4 v5, 0x0

    .line 418
    .local v5, "destOutStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 420
    .local v0, "bufOutStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .end local v5    # "destOutStream":Ljava/io/OutputStream;
    .local v6, "destOutStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    .end local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .local v1, "bufOutStream":Ljava/io/BufferedOutputStream;
    const/16 v10, 0x5000

    :try_start_2
    new-array v2, v10, [B

    .line 424
    .local v2, "buffer":[B
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_6

    .line 425
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 431
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    :catch_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 433
    .end local v6    # "destOutStream":Ljava/io/OutputStream;
    .restart local v5    # "destOutStream":Ljava/io/OutputStream;
    .local v8, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 434
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    :cond_4
    const/4 v9, 0x0

    .line 439
    if-eqz v0, :cond_5

    .line 441
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 448
    :cond_5
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 449
    :catch_1
    move-exception v8

    .line 450
    const-string/jumbo v10, "ThemeUtils"

    const-string/jumbo v11, "copyFile()"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 429
    .end local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "destOutStream":Ljava/io/OutputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v1    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "destOutStream":Ljava/io/OutputStream;
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 430
    const/4 v9, 0x1

    .line 439
    if-eqz v1, :cond_7

    .line 441
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 448
    :cond_7
    :goto_4
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v0, v1

    .end local v1    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 451
    .end local v6    # "destOutStream":Ljava/io/OutputStream;
    .restart local v5    # "destOutStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 442
    .end local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "destOutStream":Ljava/io/OutputStream;
    .restart local v1    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "destOutStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    .line 443
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "ThemeUtils"

    const-string/jumbo v11, "copyFile()"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 449
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 450
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "ThemeUtils"

    const-string/jumbo v11, "copyFile()"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 452
    .end local v6    # "destOutStream":Ljava/io/OutputStream;
    .restart local v5    # "destOutStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 442
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    :catch_4
    move-exception v8

    .line 443
    const-string/jumbo v10, "ThemeUtils"

    const-string/jumbo v11, "copyFile()"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 439
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v0, :cond_8

    .line 441
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 448
    :cond_8
    :goto_6
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 451
    :goto_7
    throw v10

    .line 442
    :catch_5
    move-exception v8

    .line 443
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "ThemeUtils"

    const-string/jumbo v12, "copyFile()"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 449
    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 450
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "ThemeUtils"

    const-string/jumbo v12, "copyFile()"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 439
    .end local v5    # "destOutStream":Ljava/io/OutputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "destOutStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "destOutStream":Ljava/io/OutputStream;
    .restart local v5    # "destOutStream":Ljava/io/OutputStream;
    goto :goto_5

    .end local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "destOutStream":Ljava/io/OutputStream;
    .restart local v1    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "destOutStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "destOutStream":Ljava/io/OutputStream;
    .restart local v5    # "destOutStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 431
    :catch_7
    move-exception v8

    goto :goto_2

    .end local v5    # "destOutStream":Ljava/io/OutputStream;
    .restart local v6    # "destOutStream":Ljava/io/OutputStream;
    :catch_8
    move-exception v8

    move-object v5, v6

    .end local v6    # "destOutStream":Ljava/io/OutputStream;
    .restart local v5    # "destOutStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "cover"    # Z

    .prologue
    const/4 v4, 0x0

    .line 466
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v4

    .line 470
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 477
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    const/4 v4, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 486
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 487
    .local v3, "srcInStream":Ljava/io/InputStream;
    invoke-static {v3, p1, p2}, Lcom/iflytek/base/skin/ThemeUtils;->copyFile(Ljava/io/InputStream;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 488
    .end local v3    # "srcInStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 489
    .local v1, "e":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method public static copyThemeFromSkinPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "skin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "destDir":Ljava/lang/String;
    const/4 v7, 0x0

    .line 252
    .local v7, "succ":Z
    const/4 v5, 0x0

    .line 254
    .local v5, "readZipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    .local v6, "readZipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 256
    .local v2, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/4 v8, 0x0

    .line 257
    .local v8, "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 258
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 259
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 262
    .local v4, "outFilePath":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 263
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v4, v10}, Lcom/iflytek/base/skin/ThemeUtils;->copyFile(Ljava/io/InputStream;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 269
    .end local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "outFilePath":Ljava/lang/String;
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 270
    .end local v6    # "readZipFile":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/io/IOException;
    .restart local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    :goto_1
    const/4 v7, 0x0

    .line 273
    if-eqz v5, :cond_1

    .line 274
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 280
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return v7

    .line 268
    .end local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    const/4 v7, 0x1

    .line 273
    if-eqz v6, :cond_3

    .line 274
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v5, v6

    .line 277
    .end local v6    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 276
    .end local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v6    # "readZipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v9

    move-object v5, v6

    .line 278
    .end local v6    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 272
    .end local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v9

    .line 273
    :goto_3
    if-eqz v5, :cond_4

    .line 274
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 277
    :cond_4
    :goto_4
    throw v9

    .line 276
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 272
    .end local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v6    # "readZipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v5    # "readZipFile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 269
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 494
    if-nez p0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v2

    .line 497
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 499
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 500
    .local v0, "files":[Ljava/io/File;
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 501
    .local v1, "subFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 502
    invoke-static {v1}, Lcom/iflytek/base/skin/ThemeUtils;->deleteFile(Ljava/io/File;)Z

    .line 500
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 504
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 508
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "subFile":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 509
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static deleteSkinApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p0, "fileDir"    # Ljava/lang/String;
    .param p1, "srcThemeFileName"    # Ljava/lang/String;
    .param p2, "themeName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 365
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "fileParent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    new-instance v4, Lcom/iflytek/base/skin/ThemeUtils$1;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/ThemeUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 378
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 379
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 380
    .local v3, "themeFile":Ljava/io/File;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/ThemeManager;->getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v2

    .line 381
    .local v2, "info":Lcom/iflytek/base/skin/ThemeInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->isInitialize()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 379
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "fileParent":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "info":Lcom/iflytek/base/skin/ThemeInfo;
    .end local v3    # "themeFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static getBool(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 238
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ThemeUtils"

    const-string/jumbo v2, "getFloat()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "ThemeUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 545
    const/4 v0, 0x0

    sget v1, Lcom/iflytek/base/skin/ThemeUtils;->mScreenDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/iflytek/base/skin/ThemeUtils;->mScreenDensity:F

    .line 548
    :cond_0
    sget v0, Lcom/iflytek/base/skin/ThemeUtils;->mScreenDensity:F

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    sget v1, Lcom/iflytek/base/skin/ThemeUtils;->mScreenHeight:I

    if-nez v1, :cond_0

    .line 534
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 535
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/iflytek/base/skin/ThemeUtils;->mScreenHeight:I

    .line 537
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    sget v1, Lcom/iflytek/base/skin/ThemeUtils;->mScreenHeight:I

    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 520
    sget v1, Lcom/iflytek/base/skin/ThemeUtils;->mScreenWidth:I

    if-nez v1, :cond_0

    .line 521
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 522
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/iflytek/base/skin/ThemeUtils;->mScreenWidth:I

    .line 524
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    sget v1, Lcom/iflytek/base/skin/ThemeUtils;->mScreenWidth:I

    return v1
.end method

.method public static installSkinNewVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ".ivs"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 285
    :cond_0
    const/4 v3, 0x2

    .line 352
    :cond_1
    :goto_0
    return v3

    .line 288
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ViaFly"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "skin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "tempFileDir":Ljava/lang/String;
    move-object v8, p1

    .line 292
    .local v8, "themeFileName":Ljava/lang/String;
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 293
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 296
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "tempFilePath":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {p1, v6, v9}, Lcom/iflytek/base/skin/ThemeUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 304
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v4, "tempFile":Ljava/io/File;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/iflytek/base/skin/ThemeManager;->getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v2

    .line 308
    .local v2, "info":Lcom/iflytek/base/skin/ThemeInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->isInitialize()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 309
    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->isSupportAndroidPlatform()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 310
    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->checkSkinVersion()I

    move-result v0

    .line 311
    .local v0, "checkVersionResult":I
    if-nez v0, :cond_5

    .line 312
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "skin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 313
    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "destThemeDir":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v7, "themeFile":Ljava/io/File;
    invoke-static {v7}, Lcom/iflytek/base/skin/ThemeUtils;->deleteFile(Ljava/io/File;)Z

    .line 318
    invoke-static {p0, v6}, Lcom/iflytek/base/skin/ThemeUtils;->copyThemeFromSkinPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 319
    const/4 v3, 0x0

    .line 337
    .end local v0    # "checkVersionResult":I
    .end local v1    # "destThemeDir":Ljava/lang/String;
    .end local v7    # "themeFile":Ljava/io/File;
    .local v3, "result":I
    :goto_1
    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 339
    invoke-virtual {v2}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9, p0}, Lcom/iflytek/base/skin/ThemeUtils;->deleteSkinApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 341
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 342
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 322
    .end local v3    # "result":I
    .restart local v0    # "checkVersionResult":I
    .restart local v1    # "destThemeDir":Ljava/lang/String;
    .restart local v7    # "themeFile":Ljava/io/File;
    :cond_4
    invoke-static {v7}, Lcom/iflytek/base/skin/ThemeUtils;->deleteFile(Ljava/io/File;)Z

    .line 323
    const/4 v3, 0x1

    .restart local v3    # "result":I
    goto :goto_1

    .line 325
    .end local v1    # "destThemeDir":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v7    # "themeFile":Ljava/io/File;
    :cond_5
    if-lez v0, :cond_6

    .line 326
    const/4 v3, 0x4

    .restart local v3    # "result":I
    goto :goto_1

    .line 328
    .end local v3    # "result":I
    :cond_6
    const/4 v3, 0x5

    .restart local v3    # "result":I
    goto :goto_1

    .line 331
    .end local v0    # "checkVersionResult":I
    .end local v3    # "result":I
    :cond_7
    const/4 v3, 0x3

    .restart local v3    # "result":I
    goto :goto_1

    .line 334
    .end local v3    # "result":I
    :cond_8
    const/4 v3, 0x1

    .restart local v3    # "result":I
    goto :goto_1

    .line 346
    :cond_9
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 349
    .end local v2    # "info":Lcom/iflytek/base/skin/ThemeInfo;
    .end local v3    # "result":I
    .end local v4    # "tempFile":Ljava/io/File;
    :cond_a
    const/4 v3, 0x6

    .restart local v3    # "result":I
    goto/16 :goto_0
.end method

.method public static intToBytes(I)[B
    .locals 4
    .param p0, "value"    # I

    .prologue
    const/4 v3, 0x4

    .line 122
    new-array v0, v3, [B

    .line 123
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 124
    mul-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-object v0
.end method

.method public static recyleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 156
    if-eqz p0, :cond_1

    .line 157
    :try_start_0
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 158
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 159
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ThemeUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static scaleDrawable(Landroid/content/Context;Lcom/iflytek/base/skin/ResourceType;Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/iflytek/base/skin/ResourceType;
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "limitWidth"    # I
    .param p4, "limitHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 185
    const-string/jumbo v8, "ThemeUtils"

    const-string/jumbo v9, "scaleDrawable drawable path is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 227
    :goto_0
    return-object v0

    .line 189
    :cond_0
    if-nez p0, :cond_1

    .line 190
    const-string/jumbo v8, "ThemeUtils"

    const-string/jumbo v9, "scaleDrawable context is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 191
    goto :goto_0

    .line 194
    :cond_1
    const/4 v4, 0x0

    .line 195
    .local v4, "is":Ljava/io/InputStream;
    sget-object v8, Lcom/iflytek/base/skin/ResourceType;->RES_TYPE_ASSETS:Lcom/iflytek/base/skin/ResourceType;

    if-ne p1, v8, :cond_2

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 201
    :goto_1
    if-nez v4, :cond_3

    .line 202
    const-string/jumbo v8, "ThemeUtils"

    const-string/jumbo v9, "scaleDrawable picture file not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 203
    goto :goto_0

    .line 198
    :cond_2
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "is":Ljava/io/InputStream;
    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 206
    :cond_3
    const/4 v0, 0x0

    .line 209
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 210
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 211
    invoke-static {v4, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 212
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 213
    .local v2, "imageHeight":I
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 214
    .local v3, "imageWidth":I
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 215
    if-gt v2, p4, :cond_4

    if-le v3, p3, :cond_6

    .line 217
    :cond_4
    int-to-float v8, v2

    int-to-float v9, p4

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 218
    .local v1, "heightRatio":I
    int-to-float v8, v3

    int-to-float v9, p3

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 221
    .local v6, "widthRatio":I
    if-ge v1, v6, :cond_5

    .end local v1    # "heightRatio":I
    :goto_2
    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 222
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v4, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    .restart local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .restart local v1    # "heightRatio":I
    :cond_5
    move v1, v6

    .line 221
    goto :goto_2

    .line 224
    .end local v1    # "heightRatio":I
    .end local v6    # "widthRatio":I
    :cond_6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method

.method public static splitInt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/iflytek/base/skin/ThemeUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "strValues":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 104
    array-length v3, v2

    new-array v1, v3, [I

    .line 105
    .local v1, "intValues":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 106
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/iflytek/base/skin/ThemeUtils;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    .end local v1    # "intValues":[I
    :cond_0
    const/4 v3, 0x0

    new-array v1, v3, [I

    :cond_1
    return-object v1
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 58
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "valueArray":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 61
    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    .line 62
    .local v2, "newValueArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 63
    .local v3, "newValueLen":I
    const-string/jumbo v6, ""

    aput-object v6, v2, v3

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_4

    .line 65
    aget-object v1, v5, v0

    .line 66
    .local v1, "indexValue":Ljava/lang/String;
    const-string/jumbo v6, "\\"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "\\\\"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-lt v0, v6, :cond_0

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_2

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 69
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_1

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v6, "\\\\"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 78
    :goto_2
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    const-string/jumbo v6, ""

    aput-object v6, v2, v3

    goto :goto_1

    .line 76
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    goto :goto_2

    .line 84
    .end local v1    # "indexValue":Ljava/lang/String;
    :cond_4
    if-lez v3, :cond_5

    .line 85
    new-array v4, v3, [Ljava/lang/String;

    .line 86
    .local v4, "returnValue":[Ljava/lang/String;
    invoke-static {v2, v8, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .end local v0    # "i":I
    .end local v2    # "newValueArray":[Ljava/lang/String;
    .end local v3    # "newValueLen":I
    .end local v4    # "returnValue":[Ljava/lang/String;
    .end local v5    # "valueArray":[Ljava/lang/String;
    :goto_3
    return-object v4

    :cond_5
    new-array v4, v8, [Ljava/lang/String;

    goto :goto_3
.end method
