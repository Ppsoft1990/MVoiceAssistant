.class public final Lazm;
.super Ljava/lang/Object;
.source "IniParser.java"


# direct methods
.method public static a(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v6, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    if-eqz p0, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string/jumbo v10, "utf-8"

    invoke-direct {v9, p0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x800

    invoke-direct {v1, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 59
    .local v4, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 60
    .local v8, "value":Ljava/lang/String;
    const/4 v5, 0x0

    .line 61
    .local v5, "properties":Ljava/util/Properties;
    const/4 v7, 0x0

    .line 62
    .local v7, "str":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 63
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 64
    const-string/jumbo v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 67
    const-string/jumbo v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "]"

    .line 68
    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 70
    const/4 v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 72
    new-instance v5, Ljava/util/Properties;

    .end local v5    # "properties":Ljava/util/Properties;
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 73
    .restart local v5    # "properties":Ljava/util/Properties;
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v5    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 88
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v9, "skin_IniParser"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    if-eqz v0, :cond_1

    .line 93
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v6

    .line 77
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v7    # "str":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    const/16 v9, 0x3d

    :try_start_4
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 78
    .local v3, "index":I
    if-lez v3, :cond_0

    .line 79
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 80
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {v5, v4, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 91
    .end local v3    # "index":I
    .end local v5    # "properties":Ljava/util/Properties;
    :catchall_0
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_3

    .line 93
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 96
    :cond_3
    :goto_4
    throw v9

    .line 91
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v7    # "str":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_1

    .line 93
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 94
    :catch_1
    move-exception v2

    .line 95
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "skin_IniParser"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 94
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "properties":Ljava/util/Properties;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 95
    const-string/jumbo v9, "skin_IniParser"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 94
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 95
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "skin_IniParser"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    goto :goto_3

    .line 87
    :catch_4
    move-exception v2

    goto :goto_1
.end method
