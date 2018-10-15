.class public Lcom/baidu/aiupdatesdk/obf/z;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v11, 0x400

    const/4 v12, 0x0

    .line 115
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v9

    .line 119
    :cond_1
    const/4 v3, 0x0

    .line 120
    .local v3, "digest":Ljava/security/MessageDigest;
    const/4 v6, 0x0

    .line 121
    .local v6, "in":Ljava/io/FileInputStream;
    new-array v1, v11, [B

    .line 124
    .local v1, "buffer":[B
    :try_start_0
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 125
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v10, 0x0

    const/16 v11, 0x400

    :try_start_1
    invoke-virtual {v7, v1, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .local v8, "len":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    .line 127
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 130
    .end local v8    # "len":I
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 131
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "len":I
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    new-instance v0, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 135
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v10, 0x10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "md5":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v2, v10, 0x10

    .line 137
    .local v2, "delta":I
    if-lez v2, :cond_0

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "00000000000"

    invoke-virtual {v11, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 130
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v2    # "delta":I
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v8    # "len":I
    .end local v9    # "md5":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_2
.end method
