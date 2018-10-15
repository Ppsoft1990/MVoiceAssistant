.class public Lagm;
.super Ljava/lang/Object;
.source "GrayPremHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "grayName"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lagl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 28
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0}, Lagp;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 41
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v0}, Lagp;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 54
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lagp;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x1

    .line 58
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 67
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lagp;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v2

    invoke-virtual {v2}, Lagl;->c()Lagp;

    move-result-object v0

    .line 80
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lagp;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v0}, Lagp;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v2

    invoke-virtual {v2}, Lagl;->c()Lagp;

    move-result-object v0

    .line 96
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lagp;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v0}, Lagp;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 113
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Lagp;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 117
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 127
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lagp;->g()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static i()Z
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 140
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lagp;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static j()Z
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lagl;->c()Lagp;

    move-result-object v0

    .line 171
    .local v0, "grayControlInfo":Lagp;
    const/4 v1, 0x0

    .line 172
    .local v1, "localRecognize":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lagp;->k()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "2"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const/4 v2, 0x0

    .line 179
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x1c2

    .line 190
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 191
    const-string/jumbo v1, "2"

    .line 207
    .local v0, "adaptationItem":Lagp;
    :cond_0
    :goto_0
    return-object v1

    .line 193
    .end local v0    # "adaptationItem":Lagp;
    :cond_1
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v2

    invoke-virtual {v2}, Lagl;->c()Lagp;

    move-result-object v0

    .line 194
    .restart local v0    # "adaptationItem":Lagp;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lagp;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 195
    :cond_2
    invoke-static {}, Lagm;->r()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 196
    const-string/jumbo v1, "1"

    goto :goto_0

    .line 198
    :cond_3
    const-string/jumbo v1, "2"

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {v0}, Lagp;->j()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lagm;->r()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 203
    const-string/jumbo v1, "1"

    goto :goto_0

    .line 205
    :cond_5
    const-string/jumbo v1, "2"

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lagl;->c()Lagp;

    move-result-object v0

    .line 249
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lagp;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 255
    .end local v0    # "adaptationItem":Lagp;
    :cond_0
    :goto_0
    return-object v2

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v2

    invoke-virtual {v2}, Lagl;->c()Lagp;

    move-result-object v0

    .line 264
    .local v0, "adaptationItem":Lagp;
    const/4 v1, 0x0

    .line 265
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lagp;->h()Ljava/lang/String;

    move-result-object v1

    .line 268
    :cond_0
    return-object v1
.end method

.method public static n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v2

    invoke-virtual {v2}, Lagl;->c()Lagp;

    move-result-object v0

    .line 277
    .local v0, "adaptationItem":Lagp;
    const/4 v1, 0x0

    .line 278
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lagp;->i()Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_0
    return-object v1
.end method

.method public static o()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public static p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 326
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    const-string/jumbo v1, "0"

    .line 329
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lagp;->n()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static q()Z
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lagl;->a()Lagl;

    move-result-object v1

    invoke-virtual {v1}, Lagl;->c()Lagp;

    move-result-object v0

    .line 348
    .local v0, "adaptationItem":Lagp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lagp;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v0}, Lagp;->o()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x1

    .line 353
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static r()J
    .locals 9

    .prologue
    .line 218
    const-string/jumbo v6, "/proc/meminfo"

    .line 221
    .local v6, "temp_str1":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "initialMemory":J
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 225
    .local v5, "localFileReader":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v4, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 228
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "temp_str2":Ljava/lang/String;
    const-string/jumbo v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    int-to-long v2, v8

    .line 232
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "temp_str2":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
