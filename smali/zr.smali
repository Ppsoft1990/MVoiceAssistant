.class public Lzr;
.super Ljava/lang/Object;
.source "UnitUtils.java"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "callfees"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 26
    :cond_0
    const/4 v11, 0x0

    .line 51
    :goto_0
    return-object v11

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    .local v0, "balance":Ljava/lang/String;
    const/4 v7, 0x0

    .line 31
    .local v7, "unit":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 32
    .local v6, "format":Ljava/text/NumberFormat;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 33
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 34
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 35
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 36
    .local v2, "callfee":D
    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    .line 37
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 38
    .local v8, "integerPart":J
    long-to-double v12, v8

    sub-double v4, v2, v12

    .line 39
    .local v4, "decimalPart":D
    const-wide/32 v12, 0x5f5e100

    div-long v12, v8, v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 40
    long-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    const-wide v14, 0x4197d78400000000L    # 1.0E8

    div-double/2addr v12, v14

    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string/jumbo v7, "\u4ebf\u5143"

    .line 49
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 42
    :cond_2
    const-wide/16 v12, 0x2710

    div-long v12, v8, v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3

    .line 43
    long-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    const-wide v14, 0x40c3880000000000L    # 10000.0

    div-double/2addr v12, v14

    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v7, "\u4e07\u5143"

    goto :goto_1

    .line 46
    :cond_3
    long-to-double v12, v8

    add-double/2addr v12, v4

    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string/jumbo v7, "\u5143"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    .end local v2    # "callfee":D
    .end local v4    # "decimalPart":D
    .end local v6    # "format":Ljava/text/NumberFormat;
    .end local v8    # "integerPart":J
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "flow"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 63
    :cond_0
    const/4 v11, 0x0

    .line 88
    :goto_0
    return-object v11

    .line 65
    :cond_1
    const/4 v6, 0x0

    .line 66
    .local v6, "left":Ljava/lang/String;
    const/4 v7, 0x0

    .line 68
    .local v7, "unit":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 69
    .local v3, "format":Ljava/text/NumberFormat;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 70
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 71
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 72
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 73
    .local v8, "transfer":D
    invoke-virtual {v3, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 75
    .local v4, "integerPart":J
    long-to-double v12, v4

    sub-double v0, v8, v12

    .line 76
    .local v0, "decimalPart":D
    const-wide/32 v12, 0x100000

    div-long v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 77
    long-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4130000000000000L    # 1048576.0

    div-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 78
    const-string/jumbo v7, "T"

    .line 86
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 79
    :cond_2
    const-wide/16 v12, 0x400

    div-long v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3

    .line 80
    long-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 81
    const-string/jumbo v7, "G"

    goto :goto_1

    .line 83
    :cond_3
    long-to-double v12, v4

    add-double/2addr v12, v0

    invoke-virtual {v3, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 84
    const-string/jumbo v7, "M"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    .end local v0    # "decimalPart":D
    .end local v3    # "format":Ljava/text/NumberFormat;
    .end local v4    # "integerPart":J
    .end local v8    # "transfer":D
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto :goto_0
.end method
