.class public Lbbk;
.super Ljava/lang/Object;
.source "StarVerifyAndFileHelper.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbbk;->a:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    :goto_0
    return-object v1

    .line 128
    :cond_0
    :try_start_0
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "StarVerifyAndFileHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "sourceFile"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v17, "StarVerifyAndFileHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unZip(), sourceFile is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", destDir is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbk;->a:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 171
    const/4 v7, 0x0

    .line 172
    .local v7, "fileDir":Ljava/lang/String;
    const/4 v11, 0x0

    .line 173
    .local v11, "outStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 174
    .local v3, "bufOutStream":Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 175
    .local v8, "inputStram":Ljava/io/InputStream;
    move-object/from16 v15, p2

    .line 176
    .local v15, "tempDestDir":Ljava/lang/String;
    :try_start_0
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 178
    :goto_0
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v2, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    .local v2, "b":[B
    const/4 v13, 0x0

    .line 183
    .local v13, "readZipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v14, Ljava/util/zip/ZipFile;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 184
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .local v14, "readZipFile":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 185
    .local v6, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/16 v16, 0x0

    .local v16, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v4, v3

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .local v4, "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v12, v11

    .line 187
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .local v12, "outStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 188
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    check-cast v16, Ljava/util/zip/ZipEntry;

    .line 189
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v10, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v10, "outPutFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 191
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    :goto_2
    move-object v4, v3

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v12, v11

    .line 208
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 176
    .end local v2    # "b":[B
    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "outPutFile":Ljava/io/File;
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    :cond_0
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v15

    goto :goto_0

    .line 194
    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "b":[B
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "outPutFile":Ljava/io/File;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    :try_start_5
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 195
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 198
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    :try_start_6
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 199
    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    :try_start_7
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 202
    :goto_3
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "length":I
    if-lez v9, :cond_7

    .line 203
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v2, v0, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 209
    .end local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v9    # "length":I
    .end local v10    # "outPutFile":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v5

    move-object v13, v14

    .line 210
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_8
    const-string/jumbo v17, "StarVerifyAndFileHelper"

    const-string/jumbo v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 211
    const/4 v7, 0x0

    .line 214
    if-eqz v11, :cond_3

    .line 215
    :try_start_9
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 217
    :cond_3
    if-eqz v3, :cond_4

    .line 218
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 220
    :cond_4
    if-eqz v8, :cond_5

    .line 221
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 223
    :cond_5
    if-eqz v13, :cond_6

    .line 224
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 230
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_5
    :try_start_a
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-object v7

    .line 205
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v9    # "length":I
    .restart local v10    # "outPutFile":Ljava/io/File;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_7
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 213
    .end local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v9    # "length":I
    .end local v10    # "outPutFile":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v17

    move-object v13, v14

    .line 214
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    :goto_6
    if-eqz v11, :cond_8

    .line 215
    :try_start_c
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 217
    :cond_8
    if-eqz v3, :cond_9

    .line 218
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 220
    :cond_9
    if-eqz v8, :cond_a

    .line 221
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 223
    :cond_a
    if-eqz v13, :cond_b

    .line 224
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 228
    :cond_b
    :goto_7
    :try_start_d
    throw v17

    .line 231
    .end local v2    # "b":[B
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v17

    :goto_8
    monitor-exit v18
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v17

    .line 214
    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "b":[B
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_c
    if-eqz v12, :cond_d

    .line 215
    :try_start_e
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 217
    :cond_d
    if-eqz v4, :cond_e

    .line 218
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 220
    :cond_e
    if-eqz v8, :cond_f

    .line 221
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 223
    :cond_f
    if-eqz v14, :cond_10

    .line 224
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_10
    move-object v13, v14

    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .line 228
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 226
    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v5

    .line 227
    .local v5, "e":Ljava/io/IOException;
    :try_start_f
    const-string/jumbo v17, "StarVerifyAndFileHelper"

    const-string/jumbo v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object v13, v14

    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .line 229
    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 226
    .end local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    .local v5, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 227
    .local v5, "e":Ljava/io/IOException;
    :try_start_10
    const-string/jumbo v17, "StarVerifyAndFileHelper"

    const-string/jumbo v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 226
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "StarVerifyAndFileHelper"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_7

    .line 231
    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_2
    move-exception v17

    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    goto :goto_8

    .line 213
    .end local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v17

    goto :goto_6

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    :catchall_4
    move-exception v17

    move-object v13, v14

    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    goto :goto_6

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outPutFile":Ljava/io/File;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_5
    move-exception v17

    move-object v13, v14

    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 209
    .end local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "outPutFile":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v5

    goto/16 :goto_4

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v5

    move-object v13, v14

    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    goto/16 :goto_4

    .end local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .end local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outPutFile":Ljava/io/File;
    .restart local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_6
    move-exception v5

    move-object v13, v14

    .end local v14    # "readZipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "readZipFile":Ljava/util/zip/ZipFile;
    move-object v3, v4

    .end local v4    # "bufOutStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufOutStream":Ljava/io/BufferedOutputStream;
    goto/16 :goto_4
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z
    .locals 6
    .param p1, "star"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v2, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v2

    .line 41
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lbbk;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lbbk;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iflytek/yd/util/security/MD5Helper;->md5EncodeFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "md5":Ljava/lang/String;
    const-string/jumbo v3, "StarVerifyAndFileHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zip file md5 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 49
    .end local v1    # "md5":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z
    .locals 4
    .param p1, "star"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v0

    .line 63
    .local v0, "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z
    .locals 3
    .param p1, "star"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lbbk;->f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;
    .locals 4
    .param p1, "star"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 97
    :goto_0
    return-object v2

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbbk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbba;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbba;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    const-string/jumbo v2, ""

    .line 118
    :goto_0
    return-object v2

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbbk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbba;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/offline/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
