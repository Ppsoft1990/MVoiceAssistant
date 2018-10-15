.class public Lawp;
.super Ljava/lang/Object;
.source "PersonalizedFileManager.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFilePath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 88
    const-string/jumbo v9, "PersonalizedFileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "copyAssetFile() assetFilePath= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " newPath= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v8

    .line 92
    :cond_1
    const/4 v5, 0x0

    .line 93
    .local v5, "inStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 94
    .local v8, "result":Z
    const/4 v3, 0x0

    .line 96
    .local v3, "fs":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 97
    .local v1, "byteread":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 98
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v6, "newFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 100
    .local v7, "parentFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 101
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 104
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 106
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v0, v9, [B

    .line 108
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_5

    .line 109
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 113
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 114
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "parentFile":Ljava/io/File;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string/jumbo v9, "PersonalizedFileManager"

    const-string/jumbo v10, "copy asset file failed "

    invoke-static {v9, v10, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    const/4 v8, 0x0

    .line 118
    if-eqz v5, :cond_4

    .line 119
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 125
    :cond_4
    :goto_3
    if-eqz v3, :cond_0

    .line 126
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 128
    :catch_1
    move-exception v2

    .line 129
    const-string/jumbo v9, "PersonalizedFileManager"

    const-string/jumbo v10, "close file failed 21 "

    invoke-static {v9, v10, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v6    # "newFile":Ljava/io/File;
    .restart local v7    # "parentFile":Ljava/io/File;
    :cond_5
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    const/4 v8, 0x1

    .line 118
    if-eqz v5, :cond_6

    .line 119
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 125
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 126
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    move-object v3, v4

    .line 130
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 121
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 122
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v9, "PersonalizedFileManager"

    const-string/jumbo v10, "close file failed 2 "

    invoke-static {v9, v10, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 128
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 129
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v9, "PersonalizedFileManager"

    const-string/jumbo v10, "close file failed 21 "

    invoke-static {v9, v10, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 131
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 121
    .end local v0    # "buffer":[B
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "parentFile":Ljava/io/File;
    :catch_4
    move-exception v2

    .line 122
    const-string/jumbo v9, "PersonalizedFileManager"

    const-string/jumbo v10, "close file failed 2 "

    invoke-static {v9, v10, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 117
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 118
    :goto_5
    if-eqz v5, :cond_8

    .line 119
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 125
    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 126
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 130
    :cond_9
    :goto_7
    throw v9

    .line 121
    :catch_5
    move-exception v2

    .line 122
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "PersonalizedFileManager"

    const-string/jumbo v11, "close file failed 2 "

    invoke-static {v10, v11, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 128
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 129
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "PersonalizedFileManager"

    const-string/jumbo v11, "close file failed 21 "

    invoke-static {v10, v11, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 117
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v6    # "newFile":Ljava/io/File;
    .restart local v7    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 113
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "parentFile":Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v2, 0x1

    .line 161
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "PersonalizedFileManager"

    const-string/jumbo v3, "isFileExist exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 29
    const-string/jumbo v11, "PersonalizedFileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "copyFile() oldPath= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " newPath= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v10

    .line 33
    :cond_1
    const/4 v5, 0x0

    .line 34
    .local v5, "inStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 35
    .local v10, "result":Z
    const/4 v3, 0x0

    .line 37
    .local v3, "fs":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 38
    .local v1, "byteread":I
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v8, "oldfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 40
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v5    # "inStream":Ljava/io/InputStream;
    .local v6, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v7, "newFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 43
    .local v9, "parentFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 44
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 47
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 49
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_2
    new-array v0, v11, [B

    .line 51
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v11, -0x1

    if-eq v1, v11, :cond_5

    .line 52
    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 57
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 58
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "newFile":Ljava/io/File;
    .end local v8    # "oldfile":Ljava/io/File;
    .end local v9    # "parentFile":Ljava/io/File;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v11, "PersonalizedFileManager"

    const-string/jumbo v12, "copy file failed "

    invoke-static {v11, v12, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    const/4 v10, 0x0

    .line 62
    if-eqz v5, :cond_4

    .line 63
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 69
    :cond_4
    :goto_3
    if-eqz v3, :cond_0

    .line 70
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v2

    .line 73
    const-string/jumbo v11, "PersonalizedFileManager"

    const-string/jumbo v12, "close file failed 11 "

    invoke-static {v11, v12, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    .restart local v8    # "oldfile":Ljava/io/File;
    .restart local v9    # "parentFile":Ljava/io/File;
    :cond_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 55
    const/4 v10, 0x1

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 62
    .end local v0    # "buffer":[B
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "newFile":Ljava/io/File;
    .end local v9    # "parentFile":Ljava/io/File;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :cond_6
    if-eqz v5, :cond_7

    .line 63
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 69
    :cond_7
    :goto_4
    if-eqz v3, :cond_0

    .line 70
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 72
    :catch_2
    move-exception v2

    .line 73
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v11, "PersonalizedFileManager"

    const-string/jumbo v12, "close file failed 11 "

    invoke-static {v11, v12, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 65
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 66
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v11, "PersonalizedFileManager"

    const-string/jumbo v12, "close file failed 1 "

    invoke-static {v11, v12, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 65
    .end local v8    # "oldfile":Ljava/io/File;
    :catch_4
    move-exception v2

    .line 66
    const-string/jumbo v11, "PersonalizedFileManager"

    const-string/jumbo v12, "close file failed 1 "

    invoke-static {v11, v12, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 61
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 62
    :goto_5
    if-eqz v5, :cond_8

    .line 63
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 69
    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 70
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 74
    :cond_9
    :goto_7
    throw v11

    .line 65
    :catch_5
    move-exception v2

    .line 66
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v12, "PersonalizedFileManager"

    const-string/jumbo v13, "close file failed 1 "

    invoke-static {v12, v13, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 72
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 73
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v12, "PersonalizedFileManager"

    const-string/jumbo v13, "close file failed 11 "

    invoke-static {v12, v13, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 61
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "oldfile":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    .restart local v9    # "parentFile":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    goto :goto_5

    .line 57
    .end local v7    # "newFile":Ljava/io/File;
    .end local v8    # "oldfile":Ljava/io/File;
    .end local v9    # "parentFile":Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_2

    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "oldfile":Ljava/io/File;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "role"    # Ljava/lang/String;
    .param p1, "wording"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lhl;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ringtone/ringtone_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "PersonalizedFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPersonalizedDataSdCardPath() result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v2
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "role"    # Ljava/lang/String;
    .param p1, "wording"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p0, p1}, Lawp;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const/4 v2, 0x0

    .line 149
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
