.class public Lbao;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "ViaFly_FileUtil"

    sput-object v0, Lbao;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "destDir"    # Ljava/lang/String;
    .param p2, "desName"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v12, 0x0

    .line 28
    .local v12, "outStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 29
    .local v3, "bufOutStream":Ljava/io/BufferedOutputStream;
    const/4 v9, 0x0

    .line 30
    .local v9, "inputStram":Ljava/io/InputStream;
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 31
    :goto_0
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 33
    .local v2, "b":[B
    const/4 v14, 0x0

    .line 36
    .local v14, "readZipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v15, Ljava/util/zip/ZipFile;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .local v15, "readZipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 38
    .local v7, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/16 v16, 0x0

    .local v16, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v4, v3

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .local v4, "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v13, v12

    .line 40
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .local v13, "outStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 41
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    check-cast v16, Ljava/util/zip/ZipEntry;

    .line 42
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "fileName":Ljava/lang/String;
    :goto_2
    new-instance v11, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v11, "outPutFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 46
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    :goto_3
    move-object v4, v3

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v13, v12

    .line 62
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v13    # "outStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 30
    .end local v2    # "b":[B
    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v11    # "outPutFile":Ljava/io/File;
    .end local v13    # "outStream":Ljava/io/OutputStream;
    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "b":[B
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    move-object/from16 v8, p2

    .line 42
    goto :goto_2

    .line 48
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v11    # "outPutFile":Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_3

    .line 49
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_3
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 52
    .end local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    :try_start_4
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 53
    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    :try_start_5
    invoke-virtual/range {v15 .. v16}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 56
    :goto_4
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "length":I
    if-lez v10, :cond_c

    .line 57
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v2, v0, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 63
    .end local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v10    # "length":I
    .end local v11    # "outPutFile":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v5

    move-object v14, v15

    .line 64
    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .local v5, "e":Ljava/io/IOException;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    :goto_5
    :try_start_6
    sget-object v17, Lbao;->a:Ljava/lang/String;

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 66
    if-eqz v12, :cond_4

    .line 67
    :try_start_7
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 69
    :cond_4
    if-eqz v3, :cond_5

    .line 70
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 72
    :cond_5
    if-eqz v9, :cond_6

    .line 73
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 75
    :cond_6
    if-eqz v14, :cond_7

    .line 76
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 81
    :cond_7
    :goto_6
    const/16 v17, 0x0

    .line 84
    if-eqz v12, :cond_8

    .line 85
    :try_start_8
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 87
    :cond_8
    if-eqz v3, :cond_9

    .line 88
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 90
    :cond_9
    if-eqz v9, :cond_a

    .line 91
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_a
    if-eqz v14, :cond_b

    .line 94
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 101
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    :goto_7
    return v17

    .line 59
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v10    # "length":I
    .restart local v11    # "outPutFile":Ljava/io/File;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_c
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 83
    .end local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v10    # "length":I
    .end local v11    # "outPutFile":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v17

    move-object v14, v15

    .line 84
    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    :goto_8
    if-eqz v12, :cond_d

    .line 85
    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 87
    :cond_d
    if-eqz v3, :cond_e

    .line 88
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 90
    :cond_e
    if-eqz v9, :cond_f

    .line 91
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_f
    if-eqz v14, :cond_10

    .line 94
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 98
    :cond_10
    :goto_9
    throw v17

    .line 84
    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_11
    if-eqz v13, :cond_12

    .line 85
    :try_start_b
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 87
    :cond_12
    if-eqz v4, :cond_13

    .line 88
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 90
    :cond_13
    if-eqz v9, :cond_14

    .line 91
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_14
    if-eqz v15, :cond_15

    .line 94
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 101
    :cond_15
    :goto_a
    const/16 v17, 0x1

    move-object v14, v15

    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    goto :goto_7

    .line 96
    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v5

    .line 97
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v17, Lbao;->a:Ljava/lang/String;

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 78
    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v13    # "outStream":Ljava/io/OutputStream;
    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v6

    .line 79
    .local v6, "e1":Ljava/io/IOException;
    :try_start_c
    sget-object v17, Lbao;->a:Ljava/lang/String;

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    .line 83
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e1":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    goto :goto_8

    .line 96
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 97
    sget-object v18, Lbao;->a:Ljava/lang/String;

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 96
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 97
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v18, Lbao;->a:Ljava/lang/String;

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 83
    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v17

    move-object v14, v15

    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    goto :goto_8

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v11    # "outPutFile":Ljava/io/File;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_3
    move-exception v17

    move-object v14, v15

    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    goto :goto_8

    .line 63
    .end local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v11    # "outPutFile":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_5
    move-exception v5

    goto/16 :goto_5

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v5

    move-object v14, v15

    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    goto/16 :goto_5

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v11    # "outPutFile":Ljava/io/File;
    .restart local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_7
    move-exception v5

    move-object v14, v15

    .end local v15    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    goto/16 :goto_5
.end method
