.class public Lazc;
.super Ljava/lang/Object;
.source "AssetUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 32
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 34
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 35
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 36
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 38
    .local v6, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 39
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 42
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "AssertUtil"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    if-eqz v5, :cond_0

    .line 46
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 53
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 60
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 44
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 46
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 51
    :cond_3
    :goto_4
    if-eqz v2, :cond_6

    .line 53
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v1, v2

    .line 56
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 47
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 48
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "AssertUtil"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 54
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 55
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "AssertUtil"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 56
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 47
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "line":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 48
    const-string/jumbo v7, "AssertUtil"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 54
    :catch_4
    move-exception v4

    .line 55
    const-string/jumbo v7, "AssertUtil"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 44
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v5, :cond_4

    .line 46
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 51
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 53
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 56
    :cond_5
    :goto_7
    throw v7

    .line 47
    :catch_5
    move-exception v4

    .line 48
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "AssertUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 54
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 55
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "AssertUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 44
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 41
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "line":Ljava/lang/String;
    :catch_7
    move-exception v4

    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_6
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method
