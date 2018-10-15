.class public Laud;
.super Ljava/lang/Object;
.source "HotScheduleParser.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 10
    .param p0, "scheduleDatetime"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v7

    .line 25
    :cond_1
    const-string/jumbo v8, "\\|"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "stringArray":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v8, v5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 29
    const/4 v8, 0x0

    aget-object v4, v5, v8

    .line 30
    .local v4, "repeat":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v2, v5, v8

    .line 31
    .local v2, "day":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v6, v5, v8

    .line 33
    .local v6, "time":Ljava/lang/String;
    const/4 v3, 0x0

    .line 34
    .local v3, "format":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 35
    .local v1, "datetime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 37
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 38
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    const-string/jumbo v8, "HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 39
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 47
    :goto_1
    invoke-static {v3, v1}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 48
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterRawtext(Ljava/lang/String;J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v7

    goto :goto_0

    .line 40
    .end local v0    # "date":Ljava/util/Date;
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 41
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    const-string/jumbo v8, "yyyy-MM-dd"

    sget-object v9, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 44
    :cond_4
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
