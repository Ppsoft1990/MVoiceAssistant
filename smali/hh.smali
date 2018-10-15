.class public Lhh;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# static fields
.field private static final a:[B

.field private static b:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xdd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lhh;->a:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5bt
        -0xdt
        -0x6at
        -0x7ft
        -0x4bt
        -0x48t
        -0x78t
        0x41t
        0x24t
        0x2bt
        -0x4ft
        0x2ct
        0x51t
        -0x51t
        0x38t
        0x35t
        -0x47t
        -0x4ct
        0x28t
        -0x4dt
        -0x5ct
        0x52t
        -0x31t
        0x3bt
        -0x4bt
        0x32t
        0x28t
        -0x4bt
        0x60t
        -0x11t
        0x4ft
        -0x1t
        -0x33t
        0x1dt
        -0x4dt
        -0x6at
        0x3at
        0x33t
        0x31t
        -0x50t
        -0x8t
        0x30t
        0x70t
        0x26t
        -0x1at
        -0x5ct
        -0x19t
        0x3t
        0x25t
        0x33t
        0x72t
        0x4bt
        0x18t
        -0x7ct
        0x7ct
        0x40t
        -0x36t
        -0xbt
        0x73t
        0x12t
        -0xdt
        -0x2et
        -0xbt
        -0x7dt
        0x4bt
        -0x76t
        0x32t
        -0xdt
        -0x2et
        -0x53t
        -0x5dt
        0x19t
        -0x28t
        0x53t
        -0xdt
        -0x6et
        -0xdt
        0x53t
        0x52t
        0x53t
        0x4at
        0x18t
        -0x68t
        -0x5et
        -0x63t
        0x7ct
        0x18t
        -0x28t
        -0x2et
        -0xet
        -0x75t
        0x72t
        0x13t
        0x4bt
        0xat
        0x19t
        -0x16t
        0x18t
        0x18t
        0x7dt
        0x18t
        0x58t
        0x4at
        0x2at
        0xbt
        0x52t
        0x4bt
        0x18t
        -0x5ct
        0x21t
        0x1at
        0x61t
        -0xat
        -0x18t
        0x43t
        -0x14t
        0x51t
        0x9t
        0x1t
        0x4at
        0x5at
        0x57t
        0x14t
        -0x6ct
        0x30t
        0x30t
        -0x45t
        -0x48t
        0x6t
        -0x69t
        0x16t
        -0x7ft
        0xct
        0x58t
        -0xdt
        0x59t
        -0x4t
        0x7t
        0x1bt
        0x47t
        -0x38t
        0x3t
        0x26t
        0x6t
        -0x7at
        -0x76t
        0x2t
        0x6t
        0x6t
        0x6t
        -0x72t
        0x70t
        -0x3t
        0x6bt
        -0x59t
        -0x41t
        -0x64t
        0x3dt
        0x7bt
        0x1at
        -0x58t
        0x28t
        -0x38t
        0x31t
        -0x44t
        -0x52t
        -0x78t
        0x41t
        0x12t
        -0x65t
        -0x6dt
        -0x3ft
        0x46t
        0x31t
        0x40t
        -0x7ft
        0x10t
        0x50t
        0x6ft
        0x11t
        0x3t
        0x1ft
        0x58t
        0x1dt
        -0x38t
        -0x53t
        0x7at
        -0x52t
        0x79t
        -0x5bt
        -0x47t
        -0x38t
        -0x6et
        0x40t
        0x1bt
        -0x27t
        -0x7et
        0x5dt
        -0x63t
        -0x7dt
        0x5ct
        0x43t
        0x0t
        0x6t
        0x11t
        0x35t
        -0x9t
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 12
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outFile"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, "inStream":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 250
    .local v6, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .local v5, "inStream":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .local v7, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 253
    .local v2, "cryptoSize":I
    new-array v0, v2, [B

    .line 254
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 255
    .local v1, "count":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    .line 256
    move-object v8, v0

    .line 257
    .local v8, "temp":[B
    if-eq v1, v2, :cond_0

    .line 258
    new-array v8, v1, [B

    .line 259
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    :cond_0
    invoke-static {v8}, Lhh;->c([B)[B

    move-result-object v8

    .line 262
    if-eqz v8, :cond_3

    .line 263
    invoke-virtual {v7, v8}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 271
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "cryptoSize":I
    .end local v8    # "temp":[B
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 272
    .end local v5    # "inStream":Ljava/io/DataInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    if-eqz v4, :cond_1

    .line 276
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 281
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 283
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 289
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return v9

    .line 265
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v2    # "cryptoSize":I
    .restart local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "temp":[B
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 266
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 274
    if-eqz v5, :cond_4

    .line 276
    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 281
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 283
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    :goto_5
    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 286
    .end local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    goto :goto_3

    .line 277
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v3

    .line 278
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 284
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 285
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 270
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "temp":[B
    :cond_6
    const/4 v9, 0x1

    .line 274
    if-eqz v5, :cond_7

    .line 276
    :try_start_9
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 281
    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 283
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_8
    :goto_7
    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 286
    .end local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    goto :goto_3

    .line 277
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v3

    .line 278
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 284
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 285
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 277
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "cryptoSize":I
    .end local v5    # "inStream":Ljava/io/DataInputStream;
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v3

    .line 278
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 284
    :catch_6
    move-exception v3

    .line 285
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 274
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v4, :cond_9

    .line 276
    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 281
    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    .line 283
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 286
    :cond_a
    :goto_a
    throw v9

    .line 277
    :catch_7
    move-exception v3

    .line 278
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 284
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v3

    .line 285
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CryptoUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 274
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .restart local v5    # "inStream":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    goto :goto_8

    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    goto :goto_8

    .line 271
    :catch_9
    move-exception v3

    goto/16 :goto_1

    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .restart local v5    # "inStream":Ljava/io/DataInputStream;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5    # "inStream":Ljava/io/DataInputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "inFile"    # Ljava/lang/String;
    .param p1, "outFile"    # Ljava/lang/String;

    .prologue
    .line 350
    new-instance v2, LSevenZip/Compression/LZMA/Decoder;

    invoke-direct {v2}, LSevenZip/Compression/LZMA/Decoder;-><init>()V

    .line 351
    .local v2, "decoder":LSevenZip/Compression/LZMA/Decoder;
    const/4 v5, 0x0

    .line 352
    .local v5, "inStream":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 354
    .local v7, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .local v6, "inStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .local v10, "outStream":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x5

    .line 357
    .local v12, "propertiesSize":I
    :try_start_2
    new-array v11, v12, [B

    .line 358
    .local v11, "properties":[B
    const/4 v14, 0x0

    invoke-virtual {v6, v11, v14, v12}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v14

    if-eq v14, v12, :cond_2

    .line 359
    const/4 v14, 0x0

    .line 376
    if-eqz v6, :cond_0

    .line 378
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 383
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 385
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    move-object v7, v10

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 391
    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .end local v11    # "properties":[B
    .end local v12    # "propertiesSize":I
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    :goto_2
    return v14

    .line 379
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v11    # "properties":[B
    .restart local v12    # "propertiesSize":I
    :catch_0
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 387
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 360
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    invoke-virtual {v2, v11}, LSevenZip/Compression/LZMA/Decoder;->SetDecoderProperties([B)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v14

    if-nez v14, :cond_5

    .line 361
    const/4 v14, 0x0

    .line 376
    if-eqz v6, :cond_3

    .line 378
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 383
    :cond_3
    :goto_3
    if-eqz v10, :cond_4

    .line 385
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_4
    move-object v7, v10

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 388
    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 379
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v3

    .line 380
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 387
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 362
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const-wide/16 v8, 0x0

    .line 363
    .local v8, "outSize":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    const/16 v14, 0x8

    if-ge v4, v14, :cond_9

    .line 364
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v13

    .line 365
    .local v13, "v":I
    if-gez v13, :cond_8

    .line 366
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 367
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 368
    const/4 v14, 0x0

    .line 376
    if-eqz v6, :cond_6

    .line 378
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 383
    :cond_6
    :goto_6
    if-eqz v10, :cond_7

    .line 385
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    :goto_7
    move-object v7, v10

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 388
    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 379
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v3

    .line 380
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 387
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 370
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    int-to-long v14, v13

    mul-int/lit8 v16, v4, 0x8

    shl-long v14, v14, v16

    or-long/2addr v8, v14

    .line 363
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 372
    .end local v13    # "v":I
    :cond_9
    :try_start_b
    invoke-virtual {v2, v6, v10, v8, v9}, LSevenZip/Compression/LZMA/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v14

    .line 376
    if-eqz v6, :cond_a

    .line 378
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 383
    :cond_a
    :goto_8
    if-eqz v10, :cond_b

    .line 385
    :try_start_d
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_b
    :goto_9
    move-object v7, v10

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 388
    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 379
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v3

    .line 380
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 387
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 373
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .end local v8    # "outSize":J
    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v11    # "properties":[B
    .end local v12    # "propertiesSize":I
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v3

    .line 374
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_e
    const-string/jumbo v14, "CryptoUtils"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 376
    if-eqz v5, :cond_c

    .line 378
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 383
    :cond_c
    :goto_b
    if-eqz v7, :cond_d

    .line 385
    :try_start_10
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 391
    :cond_d
    :goto_c
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 379
    :catch_9
    move-exception v3

    .line 380
    const-string/jumbo v14, "CryptoUtils"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 386
    :catch_a
    move-exception v3

    .line 387
    const-string/jumbo v14, "CryptoUtils"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 376
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_d
    if-eqz v5, :cond_e

    .line 378
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 383
    :cond_e
    :goto_e
    if-eqz v7, :cond_f

    .line 385
    :try_start_12
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 388
    :cond_f
    :goto_f
    throw v14

    .line 379
    :catch_b
    move-exception v3

    .line 380
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v3

    .line 387
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CryptoUtils"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 376
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    goto :goto_d

    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "propertiesSize":I
    :catchall_2
    move-exception v14

    move-object v7, v10

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    goto :goto_d

    .line 373
    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v12    # "propertiesSize":I
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v3

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    goto :goto_a

    .end local v5    # "inStream":Ljava/io/BufferedInputStream;
    .end local v7    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "propertiesSize":I
    :catch_e
    move-exception v3

    move-object v7, v10

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outStream":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inStream":Ljava/io/BufferedInputStream;
    goto :goto_a
.end method

.method public static a([B)[B
    .locals 11
    .param p0, "arr"    # [B

    .prologue
    const/4 v4, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v4

    .line 45
    :cond_1
    const/4 v6, 0x0

    .line 46
    .local v6, "zipInputStream":Ljava/util/zip/GZIPInputStream;
    const/4 v1, 0x0

    .line 48
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v7, "zipInputStream":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 51
    .local v0, "buffer":[B
    const/4 v5, -0x1

    .line 52
    .local v5, "size":I
    :goto_1
    invoke-virtual {v7, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 53
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 61
    .end local v0    # "buffer":[B
    .end local v5    # "size":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .line 62
    .end local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v8, "CryptoUtils"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    if-eqz v6, :cond_2

    .line 66
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 71
    :cond_2
    :goto_3
    if-eqz v1, :cond_0

    .line 73
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 74
    :catch_1
    move-exception v3

    .line 75
    const-string/jumbo v8, "CryptoUtils"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "size":I
    .restart local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    :cond_3
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 56
    const/4 v6, 0x0

    .line 57
    .end local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v4

    .line 59
    .local v4, "result":[B
    const/4 v1, 0x0

    .line 64
    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v6, :cond_4

    .line 66
    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 71
    :cond_4
    :goto_4
    if-eqz v1, :cond_0

    .line 73
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 74
    :catch_2
    move-exception v3

    .line 75
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CryptoUtils"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 68
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CryptoUtils"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 67
    .end local v0    # "buffer":[B
    .end local v4    # "result":[B
    .end local v5    # "size":I
    :catch_4
    move-exception v3

    .line 68
    const-string/jumbo v8, "CryptoUtils"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 64
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v6, :cond_5

    .line 66
    :try_start_a
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 71
    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 73
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 76
    :cond_6
    :goto_7
    throw v8

    .line 67
    :catch_5
    move-exception v3

    .line 68
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CryptoUtils"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 74
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 75
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CryptoUtils"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 64
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_5

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_5

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "size":I
    :catchall_3
    move-exception v8

    move-object v1, v2

    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 61
    .end local v0    # "buffer":[B
    .end local v5    # "size":I
    :catch_7
    move-exception v3

    goto/16 :goto_2

    .end local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_2

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "size":I
    :catch_9
    move-exception v3

    move-object v1, v2

    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2
.end method

.method public static b([B)Ljavax/crypto/SecretKey;
    .locals 8
    .param p0, "arr"    # [B

    .prologue
    .line 90
    if-nez p0, :cond_1

    .line 91
    const/4 v4, 0x0

    .line 110
    :cond_0
    :goto_0
    return-object v4

    .line 93
    :cond_1
    const/4 v2, 0x0

    .line 94
    .local v2, "inputStream":Ljava/io/ObjectInputStream;
    const/4 v4, 0x0

    .line 96
    .local v4, "key":Ljavax/crypto/SecretKey;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v2    # "inputStream":Ljava/io/ObjectInputStream;
    .local v3, "inputStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljavax/crypto/SecretKey;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    if-eqz v3, :cond_3

    .line 103
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 106
    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "inputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 104
    .end local v2    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "inputStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CryptoUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 106
    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "inputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v5, "CryptoUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    if-eqz v2, :cond_0

    .line 103
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 104
    :catch_2
    move-exception v1

    .line 105
    const-string/jumbo v5, "CryptoUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    .line 103
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 106
    :cond_2
    :goto_3
    throw v5

    .line 104
    :catch_3
    move-exception v1

    .line 105
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CryptoUtils"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "inputStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "inputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 98
    .end local v2    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "inputStream":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "inputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .end local v2    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "inputStream":Ljava/io/ObjectInputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "inputStream":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method public static c([B)[B
    .locals 5
    .param p0, "cryptoText"    # [B

    .prologue
    const/4 v2, 0x0

    .line 145
    if-nez p0, :cond_0

    .line 160
    :goto_0
    return-object v2

    .line 149
    :cond_0
    :try_start_0
    const-string/jumbo v3, "DES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 150
    .local v0, "cipher":Ljavax/crypto/Cipher;
    sget-object v3, Lhh;->b:Ljavax/crypto/SecretKey;

    if-nez v3, :cond_1

    .line 151
    sget-object v3, Lhh;->a:[B

    invoke-static {v3}, Lhh;->a([B)[B

    move-result-object v3

    invoke-static {v3}, Lhh;->b([B)Ljavax/crypto/SecretKey;

    move-result-object v3

    sput-object v3, Lhh;->b:Ljavax/crypto/SecretKey;

    .line 153
    :cond_1
    const/4 v3, 0x2

    sget-object v4, Lhh;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 154
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    .local v2, "plainText":[B
    goto :goto_0

    .line 156
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "plainText":[B
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CryptoUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
