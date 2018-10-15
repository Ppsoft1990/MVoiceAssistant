.class public Lwb;
.super Ljava/lang/Object;
.source "DataUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".gz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v7, "target":Ljava/io/File;
    const/4 v2, 0x0

    .line 176
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 178
    .local v5, "out":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    .end local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    .local v6, "out":Ljava/util/zip/GZIPOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 181
    .local v0, "array":[B
    const/4 v4, -0x1

    .line 182
    .local v4, "number":I
    :goto_0
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 183
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 185
    .end local v0    # "array":[B
    .end local v4    # "number":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .line 186
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    if-eqz v2, :cond_0

    .line 192
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 198
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 200
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 206
    :cond_1
    :goto_3
    return-object v7

    .line 190
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "array":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "number":I
    .restart local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 192
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 198
    :cond_3
    :goto_4
    if-eqz v6, :cond_7

    .line 200
    :try_start_7
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .line 203
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 193
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .line 203
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 193
    .end local v0    # "array":[B
    .end local v4    # "number":I
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 187
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 188
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 190
    if-eqz v2, :cond_4

    .line 192
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 198
    :cond_4
    :goto_6
    if-eqz v5, :cond_1

    .line 200
    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 201
    :catch_6
    move-exception v1

    .line 202
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 193
    :catch_7
    move-exception v1

    .line 194
    const-string/jumbo v8, "DataUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v2, :cond_5

    .line 192
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 198
    :cond_5
    :goto_8
    if-eqz v5, :cond_6

    .line 200
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 203
    :cond_6
    :goto_9
    throw v8

    .line 193
    :catch_8
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "DataUtil"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "DataUtil"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .line 187
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    :catch_b
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 185
    :catch_c
    move-exception v1

    goto/16 :goto_1

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_d
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "array":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "number":I
    .restart local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    :cond_7
    move-object v5, v6

    .end local v6    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "out":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static a([B)[B
    .locals 11
    .param p0, "bContent"    # [B

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "bIn":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 38
    .local v2, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 39
    .local v7, "gOut":Ljava/util/zip/GZIPOutputStream;
    const/4 v5, 0x0

    .line 42
    .local v5, "data":[B
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .local v3, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    .end local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .local v8, "gOut":Ljava/util/zip/GZIPOutputStream;
    const/16 v9, 0x2000

    :try_start_3
    new-array v5, v9, [B

    .line 48
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    .line 49
    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 57
    .end local v4    # "count":I
    :catch_0
    move-exception v6

    move-object v7, v8

    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .line 58
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string/jumbo v9, "DataUtil"

    const-string/jumbo v10, "gZip() error!"

    invoke-static {v9, v10, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    if-eqz v7, :cond_0

    .line 64
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 65
    const/4 v7, 0x0

    .line 70
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 72
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 73
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    .line 74
    const/4 v2, 0x0

    .line 79
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 81
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 82
    const/4 v0, 0x0

    .line 88
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-object v5

    .line 51
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "count":I
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 53
    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x13

    if-eq v9, v10, :cond_4

    .line 54
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 56
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v5

    .line 62
    if-eqz v8, :cond_c

    .line 64
    :try_start_9
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 65
    const/4 v7, 0x0

    .line 70
    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :goto_5
    if-eqz v3, :cond_b

    .line 72
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 73
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 74
    const/4 v2, 0x0

    .line 79
    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    :goto_6
    if-eqz v1, :cond_a

    .line 81
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 82
    const/4 v0, 0x0

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 66
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    goto :goto_5

    .line 75
    :catch_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 83
    :catch_3
    move-exception v9

    move-object v0, v1

    .line 84
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 59
    .end local v4    # "count":I
    :catch_4
    move-exception v6

    .line 60
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_7
    :try_start_c
    const-string/jumbo v9, "DataUtil"

    const-string/jumbo v10, "gZip() error!"

    invoke-static {v9, v10, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 62
    if-eqz v7, :cond_5

    .line 64
    :try_start_d
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 65
    const/4 v7, 0x0

    .line 70
    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 72
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 73
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 74
    const/4 v2, 0x0

    .line 79
    :cond_6
    :goto_9
    if-eqz v0, :cond_2

    .line 81
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 82
    const/4 v0, 0x0

    goto :goto_4

    .line 62
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v9

    :goto_a
    if-eqz v7, :cond_7

    .line 64
    :try_start_10
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 65
    const/4 v7, 0x0

    .line 70
    :cond_7
    :goto_b
    if-eqz v2, :cond_8

    .line 72
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 73
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 74
    const/4 v2, 0x0

    .line 79
    :cond_8
    :goto_c
    if-eqz v0, :cond_9

    .line 81
    :try_start_12
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 82
    const/4 v0, 0x0

    .line 84
    :cond_9
    :goto_d
    throw v9

    .line 66
    .local v6, "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_2

    .line 83
    :catch_6
    move-exception v9

    goto :goto_4

    .line 66
    .local v6, "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v9

    goto :goto_8

    .line 83
    :catch_8
    move-exception v9

    goto :goto_4

    .line 66
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v10

    goto :goto_b

    .line 83
    :catch_a
    move-exception v10

    goto :goto_d

    .line 75
    :catch_b
    move-exception v10

    goto :goto_c

    .line 62
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .line 75
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_c
    move-exception v9

    goto :goto_9

    .line 59
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception v6

    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v6

    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :catch_f
    move-exception v6

    move-object v7, v8

    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 75
    .local v6, "e":Ljava/io/IOException;
    :catch_10
    move-exception v9

    goto/16 :goto_3

    .line 57
    .end local v6    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v6

    goto/16 :goto_1

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    :catch_12
    move-exception v6

    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_13
    move-exception v6

    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "count":I
    :cond_a
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    :cond_b
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6

    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :cond_c
    move-object v7, v8

    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gOut":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_5
.end method

.method public static final a([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "keyData"    # [B

    .prologue
    .line 155
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_2

    .line 156
    :cond_0
    const/4 p0, 0x0

    .line 161
    .end local p0    # "data":[B
    :cond_1
    return-object p0

    .line 158
    .restart local p0    # "data":[B
    :cond_2
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 159
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 13
    .param p0, "bContent"    # [B

    .prologue
    .line 99
    array-length v11, p0

    mul-int/lit8 v11, v11, 0x64

    new-array v1, v11, [B

    .line 100
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 101
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    const/4 v8, 0x0

    .line 102
    .local v8, "pIn":Ljava/util/zip/GZIPInputStream;
    const/4 v6, 0x0

    .line 103
    .local v6, "objIn":Ljava/io/DataInputStream;
    const/4 v10, 0x0

    .line 105
    .local v10, "trueData":[B
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .local v4, "in":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .local v9, "pIn":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .local v7, "objIn":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 109
    .local v5, "len":I
    const/4 v0, 0x0

    .line 110
    .local v0, "count":I
    :goto_0
    add-int/lit16 v11, v5, 0x400

    :try_start_3
    invoke-virtual {v7, v1, v5, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_0

    .line 111
    add-int/2addr v5, v0

    goto :goto_0

    .line 113
    :cond_0
    new-array v10, v5, [B

    .line 114
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v11, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 118
    if-eqz v7, :cond_9

    .line 120
    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    const/4 v6, 0x0

    .line 126
    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    :goto_1
    if-eqz v4, :cond_8

    .line 128
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 129
    const/4 v3, 0x0

    .line 134
    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    :goto_2
    if-eqz v9, :cond_7

    .line 136
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 137
    const/4 v8, 0x0

    .line 143
    .end local v0    # "count":I
    .end local v5    # "len":I
    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    :cond_1
    :goto_3
    return-object v10

    .line 122
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "count":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v11

    move-object v6, v7

    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    goto :goto_1

    .line 130
    :catch_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 138
    :catch_2
    move-exception v11

    move-object v8, v9

    .line 139
    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    goto :goto_3

    .line 115
    .end local v0    # "count":I
    .end local v5    # "len":I
    :catch_3
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string/jumbo v11, "DataUtil"

    const-string/jumbo v12, "unGZip() error!"

    invoke-static {v11, v12, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 118
    if-eqz v6, :cond_2

    .line 120
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 121
    const/4 v6, 0x0

    .line 126
    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    .line 128
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 129
    const/4 v3, 0x0

    .line 134
    :cond_3
    :goto_6
    if-eqz v8, :cond_1

    .line 136
    :try_start_a
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 137
    const/4 v8, 0x0

    goto :goto_3

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v6, :cond_4

    .line 120
    :try_start_b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 121
    const/4 v6, 0x0

    .line 126
    :cond_4
    :goto_8
    if-eqz v3, :cond_5

    .line 128
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 129
    const/4 v3, 0x0

    .line 134
    :cond_5
    :goto_9
    if-eqz v8, :cond_6

    .line 136
    :try_start_d
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 137
    const/4 v8, 0x0

    .line 139
    :cond_6
    :goto_a
    throw v11

    .line 122
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 130
    :catch_5
    move-exception v11

    goto :goto_6

    .line 138
    :catch_6
    move-exception v11

    goto :goto_3

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    goto :goto_8

    .line 130
    :catch_8
    move-exception v12

    goto :goto_9

    .line 138
    :catch_9
    move-exception v12

    goto :goto_a

    .line 118
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "count":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 115
    .end local v0    # "count":I
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "len":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catch_b
    move-exception v2

    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "count":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catch_c
    move-exception v2

    move-object v6, v7

    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :cond_7
    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    goto :goto_3

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :cond_8
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "objIn":Ljava/io/DataInputStream;
    :cond_9
    move-object v6, v7

    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    goto :goto_1
.end method
