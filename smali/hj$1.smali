.class final Lhj$1;
.super Ljava/lang/Object;
.source "DebugLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lhj$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lhj$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lhj$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lhj$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 249
    new-instance v1, Ljava/io/File;

    sget-object v9, Lhj;->a:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhj$1;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v3, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 252
    .local v4, "fs":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lhj$1;->b:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 253
    iget-object v9, p0, Lhj$1;->c:Ljava/lang/String;

    iget-object v10, p0, Lhj$1;->b:Ljava/lang/String;

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 257
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v5, v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .local v5, "fs":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_1

    .line 259
    iget-object v9, p0, Lhj$1;->d:Landroid/content/Context;

    if-eqz v9, :cond_1

    .line 260
    iget-object v9, p0, Lhj$1;->d:Landroid/content/Context;

    invoke-static {v9}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v9

    invoke-virtual {v9}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 261
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 262
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lhj$1;->d:Landroid/content/Context;

    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhj$1;->d:Landroid/content/Context;

    .line 263
    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "osInfo":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 265
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 266
    iget-object v9, p0, Lhj$1;->d:Landroid/content/Context;

    invoke-static {v9}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v9

    invoke-virtual {v9}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lhj$1;->d:Landroid/content/Context;

    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhj$1;->d:Landroid/content/Context;

    .line 269
    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, "imei_info":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 271
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 274
    .end local v6    # "imei_info":Ljava/lang/String;
    .end local v8    # "osInfo":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lhj;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 275
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 276
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lhj$1;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhj$1;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "logInfo":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 279
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 281
    :cond_2
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    if-eqz v5, :cond_5

    .line 291
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 297
    .end local v0    # "buffer":[B
    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .end local v7    # "logInfo":Ljava/lang/String;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 292
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "logInfo":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 294
    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 282
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "logInfo":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 289
    :goto_1
    if-eqz v4, :cond_3

    .line 291
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 292
    :catch_2
    move-exception v2

    .line 293
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 289
    :goto_2
    if-eqz v4, :cond_3

    .line 291
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 292
    :catch_4
    move-exception v2

    .line 293
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 289
    :goto_3
    if-eqz v4, :cond_3

    .line 291
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 292
    :catch_6
    move-exception v2

    .line 293
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v4, :cond_4

    .line 291
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 294
    :cond_4
    :goto_5
    throw v9

    .line 292
    :catch_7
    move-exception v2

    .line 293
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 289
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 286
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v9

    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 284
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v9

    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 282
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v9

    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "logInfo":Ljava/lang/String;
    :cond_5
    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
