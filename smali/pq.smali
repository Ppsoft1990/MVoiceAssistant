.class public Lpq;
.super Ljava/lang/Object;
.source "VoiceBufferUriHelper.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/InputStream;)[B
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "byteArray":[B
    const/4 v0, 0x0

    .line 60
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v2, v6, [B

    .line 63
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    if-lez v4, :cond_2

    .line 64
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 70
    .end local v2    # "buffer":[B
    .end local v4    # "count":I
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 71
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v5, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "VoiceBufferUriHelper"

    const-string/jumbo v7, "ex happen"

    invoke-static {v6, v7, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    if-eqz p1, :cond_0

    .line 75
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 77
    :cond_0
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 86
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v3

    .line 66
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "count":I
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 67
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 68
    const-string/jumbo v6, "VoiceBufferUriHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 77
    :cond_3
    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v0, v1

    .line 82
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 80
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v5

    .line 81
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "VoiceBufferUriHelper"

    const-string/jumbo v7, "ex happen 1"

    invoke-static {v6, v7, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 84
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 80
    .end local v2    # "buffer":[B
    .end local v4    # "count":I
    :catch_2
    move-exception v5

    .line 81
    const-string/jumbo v6, "VoiceBufferUriHelper"

    const-string/jumbo v7, "ex happen 1"

    invoke-static {v6, v7, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 73
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 74
    :goto_3
    if-eqz p1, :cond_5

    .line 75
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 77
    :cond_5
    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 82
    :cond_6
    :goto_4
    throw v6

    .line 80
    :catch_3
    move-exception v5

    .line 81
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "VoiceBufferUriHelper"

    const-string/jumbo v8, "ex happen 1"

    invoke-static {v7, v8, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 73
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 70
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 34
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 35
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 36
    const-string/jumbo v7, "VoiceBufferUriHelper"

    const-string/jumbo v8, "uri is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 52
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 39
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 41
    const-string/jumbo v7, "VoiceBufferUriHelper"

    const-string/jumbo v8, "ContentResolver is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    const-string/jumbo v7, "r"

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 45
    .local v2, "file":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 46
    .local v4, "result":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 47
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {p0, v3}, Lpq;->a(Landroid/content/Context;Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 48
    goto :goto_0

    .line 49
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "file":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "result":[B
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "VoiceBufferUriHelper"

    const-string/jumbo v8, "exception happened"

    invoke-static {v7, v8, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 52
    goto :goto_0
.end method
