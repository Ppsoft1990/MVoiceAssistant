.class public Lbaa;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u661f\u671f\u65e5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u661f\u671f\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u661f\u671f\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u661f\u671f\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u661f\u671f\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u661f\u671f\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u661f\u671f\u516d"

    aput-object v2, v0, v1

    sput-object v0, Lbaa;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)I
    .locals 14
    .param p0, "oldDate"    # Ljava/util/Date;
    .param p1, "newDate"    # Ljava/util/Date;

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v8, 0x1

    .line 1278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1279
    .local v4, "oldCalendar":Ljava/util/Calendar;
    invoke-virtual {v4, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1280
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1281
    .local v7, "oldYear":I
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 1282
    .local v6, "oldMonth":I
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1283
    .local v5, "oldDay":I
    const-string/jumbo v9, "--------"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oldYear:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "oldMonth:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "oldDay:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1286
    .local v0, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1287
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1288
    .local v3, "newYear":I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 1289
    .local v2, "newMonth":I
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1290
    .local v1, "newDay":I
    const-string/jumbo v9, "--------"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "newYear:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "newMonth:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "newDay:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    if-ge v7, v3, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return v8

    .line 1296
    :cond_1
    if-ne v7, v3, :cond_2

    .line 1297
    if-lt v6, v2, :cond_0

    .line 1301
    if-ne v6, v2, :cond_2

    .line 1302
    if-lt v5, v1, :cond_0

    .line 1304
    if-ne v5, v1, :cond_2

    .line 1305
    const/4 v8, 0x0

    goto :goto_0

    .line 1309
    :cond_2
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public static a()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 824
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 825
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 826
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 827
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 828
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 829
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7
    .param p0, "msec"    # I

    .prologue
    const/4 v2, 0x0

    .line 129
    if-gez p0, :cond_0

    move v0, v2

    .line 130
    .local v0, "min":I
    :goto_0
    if-gez p0, :cond_1

    move v1, v2

    .line 131
    .local v1, "sec":I
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 129
    .end local v0    # "min":I
    .end local v1    # "sec":I
    :cond_0
    const v3, 0xea60

    div-int v0, p0, v3

    goto :goto_0

    .line 130
    .restart local v0    # "min":I
    :cond_1
    div-int/lit16 v3, p0, 0x3e8

    rem-int/lit8 v1, v3, 0x3c

    goto :goto_1
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMs"    # J
    .param p2, "dtFormat"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2}, Lbaa;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcID"    # I

    .prologue
    .line 1021
    const-string/jumbo v1, ""

    .line 1023
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1024
    .local v2, "src":Landroid/content/res/Resources;
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1029
    .end local v2    # "src":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    .line 1027
    const-string/jumbo v3, "DateUtil"

    const-string/jumbo v4, "getString error!"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 942
    const/4 v6, 0x0

    invoke-static {v6}, Lbaa;->c(I)J

    move-result-wide v2

    .line 943
    .local v2, "today":J
    sub-long v4, p1, v2

    .line 944
    .local v4, "value":J
    cmp-long v6, v4, v8

    if-ltz v6, :cond_0

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 946
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0c01c1

    invoke-static {p0, v7}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0, p1, p2}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 958
    :goto_0
    return-object v6

    .line 947
    :cond_0
    const-wide/32 v6, -0x5265c00

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    .line 949
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0c01c4

    invoke-static {p0, v7}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 950
    invoke-static {p0, p1, p2}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 951
    :cond_1
    const-wide/32 v6, -0xa4cb800

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    cmp-long v6, v4, v8

    if-gez v6, :cond_2

    .line 953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0c01ad

    invoke-static {p0, v7}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 954
    invoke-static {p0, p1, p2}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 956
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 957
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v6, 0x7f0c01af

    invoke-static {p0, v6}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 958
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1363
    const-string/jumbo v3, ""

    .line 1364
    .local v3, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1365
    const-string/jumbo v4, "-"

    const-string/jumbo v5, "/"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1366
    new-instance v1, Ljava/util/Date;

    invoke-static {p0}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1368
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1369
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1370
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1371
    .local v2, "day":I
    packed-switch v2, :pswitch_data_0

    .line 1397
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "day":I
    :cond_0
    :goto_0
    return-object v3

    .line 1373
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v2    # "day":I
    :pswitch_0
    const-string/jumbo v3, "\u661f\u671f\u65e5"

    .line 1374
    goto :goto_0

    .line 1376
    :pswitch_1
    const-string/jumbo v3, "\u661f\u671f\u4e00"

    .line 1377
    goto :goto_0

    .line 1379
    :pswitch_2
    const-string/jumbo v3, "\u661f\u671f\u4e8c"

    .line 1380
    goto :goto_0

    .line 1382
    :pswitch_3
    const-string/jumbo v3, "\u661f\u671f\u4e09"

    .line 1383
    goto :goto_0

    .line 1385
    :pswitch_4
    const-string/jumbo v3, "\u661f\u671f\u56db"

    .line 1386
    goto :goto_0

    .line 1388
    :pswitch_5
    const-string/jumbo v3, "\u661f\u671f\u4e94"

    .line 1389
    goto :goto_0

    .line 1391
    :pswitch_6
    const-string/jumbo v3, "\u661f\u671f\u516d"

    .line 1392
    goto :goto_0

    .line 1371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "dateTime"    # J

    .prologue
    .line 916
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 917
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v2, p0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 918
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 921
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DateUtil"

    const-string/jumbo v4, "getBaseFormatOutput()"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "addOrMinus"    # Z

    .prologue
    const-wide/32 v8, 0x5265c00

    .line 1619
    invoke-static {p0}, Lbaa;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1620
    .local v0, "dateTime":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd"

    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1622
    .local v2, "format":Ljava/text/SimpleDateFormat;
    if-eqz p1, :cond_1

    .line 1623
    add-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1628
    .local v3, "formateString":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 1629
    .local v5, "transformedDateString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1630
    const-string/jumbo v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1631
    .local v4, "splitStrings":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 1632
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1635
    .end local v4    # "splitStrings":[Ljava/lang/String;
    :cond_0
    return-object v5

    .line 1625
    .end local v3    # "formateString":Ljava/lang/String;
    .end local v5    # "transformedDateString":Ljava/lang/String;
    :cond_1
    sub-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "formateString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "dtFormat"    # Ljava/lang/String;

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const-string/jumbo v2, ""

    .line 158
    :goto_0
    return-object v2

    .line 154
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 156
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DateUtil"

    const-string/jumbo v3, "fmtDateToStr error"

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static a(J)Ljava/util/Calendar;
    .locals 2
    .param p0, "timeInMillis"    # J

    .prologue
    .line 802
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 803
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 804
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "dtFormat"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 201
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DateUtil"

    const-string/jumbo v3, "fmtStrToDate error"

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "format"    # Ljava/text/SimpleDateFormat;
    .param p1, "date_or_time"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1189
    if-nez p1, :cond_0

    .line 1196
    :goto_0
    return-object v0

    .line 1193
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(JJ)Z
    .locals 6
    .param p0, "timeInMillisOne"    # J
    .param p2, "timeInMillisTwo"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 778
    cmp-long v2, p0, v4

    if-eqz v2, :cond_0

    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    .line 779
    :cond_0
    const/4 v2, 0x1

    .line 783
    :goto_0
    return v2

    .line 781
    :cond_1
    invoke-static {p0, p1}, Lbaa;->a(J)Ljava/util/Calendar;

    move-result-object v0

    .line 782
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-static {p2, p3}, Lbaa;->a(J)Ljava/util/Calendar;

    move-result-object v1

    .line 783
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-static {v0, v1}, Lbaa;->b(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 768
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 772
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 773
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b(I)J
    .locals 8
    .param p0, "date_interval"    # I

    .prologue
    .line 1205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1206
    .local v0, "result":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    int-to-long v6, p0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1207
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1208
    const-string/jumbo v1, "DateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--------->> getNextDateLongFromToday()|date_internal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> Long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p0, "strTime"    # Ljava/lang/String;
    .param p1, "dtFormat"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0, p1}, Lbaa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 207
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 6
    .param p0, "dateTime"    # J

    .prologue
    .line 891
    :try_start_0
    const-string/jumbo v3, "hh:mm"

    invoke-static {v3, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 893
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 895
    :cond_0
    const-string/jumbo v3, "HH:mm"

    invoke-static {v3, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, "temp_result":Ljava/lang/String;
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u4e0a\u5348"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 904
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "temp_result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 899
    .restart local v1    # "result":Ljava/lang/String;
    .restart local v2    # "temp_result":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u4e0b\u5348"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 902
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "temp_result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DateUtil"

    const-string/jumbo v4, "formatTimeWithCnNoon()"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    .line 987
    invoke-static {p1, p2}, Lbaa;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    const-string/jumbo v0, "yy\u5e74MM\u6708dd\u65e5"

    invoke-static {v0, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 990
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c01ae

    invoke-static {p0, v0}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x8

    .line 1489
    if-eqz p0, :cond_2

    const/16 v11, 0x2d

    :try_start_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-lez v11, :cond_2

    .line 1490
    const-string/jumbo v11, "-"

    const-string/jumbo v12, "/"

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1491
    new-instance v6, Ljava/util/Date;

    invoke-static {p0}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 1493
    .local v6, "targetDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1494
    .local v5, "targetCalendar":Ljava/util/Calendar;
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1496
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1497
    .local v9, "targetYear":I
    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v8, v11, 0x1

    .line 1498
    .local v8, "targetMonth":I
    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1500
    .local v7, "targetDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1502
    .local v1, "currentYear":I
    if-ne v9, v1, :cond_1

    .line 1503
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u6708"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u65e5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1525
    .end local v1    # "currentYear":I
    .end local v5    # "targetCalendar":Ljava/util/Calendar;
    .end local v6    # "targetDate":Ljava/util/Date;
    .end local v7    # "targetDay":I
    .end local v8    # "targetMonth":I
    .end local v9    # "targetYear":I
    .end local p0    # "source":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1505
    .restart local v1    # "currentYear":I
    .restart local v5    # "targetCalendar":Ljava/util/Calendar;
    .restart local v6    # "targetDate":Ljava/util/Date;
    .restart local v7    # "targetDay":I
    .restart local v8    # "targetMonth":I
    .restart local v9    # "targetYear":I
    .restart local p0    # "source":Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u5e74"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u6708"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u65e5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1506
    .end local v1    # "currentYear":I
    .end local v5    # "targetCalendar":Ljava/util/Calendar;
    .end local v6    # "targetDate":Ljava/util/Date;
    .end local v7    # "targetDay":I
    .end local v8    # "targetMonth":I
    .end local v9    # "targetYear":I
    :cond_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v12, :cond_0

    .line 1507
    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1508
    .local v10, "year":Ljava/lang/String;
    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1509
    .local v4, "month":Ljava/lang/String;
    const/4 v11, 0x6

    const/16 v12, 0x8

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1511
    .local v2, "day":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1512
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1514
    .restart local v1    # "currentYear":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1516
    .restart local v9    # "targetYear":I
    if-ne v9, v1, :cond_3

    .line 1517
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u6708"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u65e5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1519
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u5e74"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u6708"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u65e5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 1523
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "currentYear":I
    .end local v2    # "day":Ljava/lang/String;
    .end local v4    # "month":Ljava/lang/String;
    .end local v9    # "targetYear":I
    .end local v10    # "year":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1524
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DateUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "format date: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static b()Ljava/util/Locale;
    .locals 6

    .prologue
    .line 859
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 861
    .local v0, "available":Ljava/util/Locale;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 862
    .local v1, "defaultLocales":[Ljava/util/Locale;
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 863
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 864
    aget-object v4, v1, v3

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 865
    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 866
    :cond_0
    aget-object v0, v1, v3

    .line 880
    .end local v1    # "defaultLocales":[Ljava/util/Locale;
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v0

    .line 869
    .restart local v1    # "defaultLocales":[Ljava/util/Locale;
    .restart local v3    # "i":I
    :cond_2
    aget-object v4, v1, v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v1, v3

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 870
    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 871
    :cond_3
    aget-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    goto :goto_1

    .line 863
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 876
    .end local v1    # "defaultLocales":[Ljava/util/Locale;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 877
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DateUtil"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static b(JJ)Z
    .locals 4
    .param p0, "time1InMillis"    # J
    .param p2, "time2InMillis"    # J

    .prologue
    .line 815
    invoke-static {p0, p1}, Lbaa;->a(J)Ljava/util/Calendar;

    move-result-object v0

    .line 816
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-static {p2, p3}, Lbaa;->a(J)Ljava/util/Calendar;

    move-result-object v1

    .line 817
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-static {v0, v1}, Lbaa;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static b(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 787
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 791
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 792
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static c(I)J
    .locals 9
    .param p0, "day_interval"    # I

    .prologue
    const/4 v8, 0x0

    .line 1218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1219
    .local v0, "result":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    int-to-long v6, p0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1220
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 1221
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 1222
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 1223
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 1224
    const-string/jumbo v1, "DateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNextPointDayLongFromToday()|interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> Long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .param p0, "str_date"    # Ljava/lang/String;
    .param p1, "str_time"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    .line 1145
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1146
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v3, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1147
    .local v3, "timeFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1150
    .local v2, "dateTimeFormat":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1153
    .local v5, "tmp_datetime":Ljava/util/Date;
    if-eqz v5, :cond_0

    .line 1154
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 1184
    :goto_0
    return-wide v8

    .line 1157
    :cond_0
    invoke-static {v1, p0}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 1158
    .local v4, "tmp_date":Ljava/util/Date;
    invoke-static {v3, p1}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 1159
    .local v6, "tmp_time":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1162
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v4, :cond_2

    .line 1163
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "HH:mm:00"

    sget-object v9, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 1164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1165
    if-nez v5, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    goto :goto_0

    .line 1168
    :cond_2
    if-eqz v6, :cond_4

    .line 1169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 1170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1171
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lbaa;->f(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1173
    invoke-virtual {v0, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 1174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 1175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1177
    :cond_3
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    goto/16 :goto_0

    .line 1181
    :cond_4
    invoke-virtual {v0, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 1182
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 1183
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 1184
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    goto/16 :goto_0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTime"    # J

    .prologue
    .line 966
    const-string/jumbo v0, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-static {v0, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    const-wide/32 v6, 0xa4cb800

    const-wide/32 v4, 0x5265c00

    .line 1000
    const/4 v2, 0x0

    invoke-static {v2}, Lbaa;->c(I)J

    move-result-wide v2

    sub-long v0, p1, v2

    .line 1001
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 1003
    const v2, 0x7f0c01c1

    invoke-static {p0, v2}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1016
    :goto_0
    return-object v2

    .line 1004
    :cond_0
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 1006
    const v2, 0x7f0c01c2

    invoke-static {p0, v2}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1007
    :cond_1
    cmp-long v2, v0, v6

    if-ltz v2, :cond_2

    const-wide/32 v2, 0xf731400

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1009
    const v2, 0x7f0c01ac

    invoke-static {p0, v2}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1016
    :cond_2
    const v2, 0x7f0c01ae

    invoke-static {p0, v2}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 1549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1550
    .local v7, "today":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1551
    .local v6, "target":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd"

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1553
    .local v1, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1554
    .local v8, "todayDate":Ljava/util/Date;
    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1555
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1556
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1557
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1558
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1559
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1560
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1561
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 1567
    .local v4, "intervalMilli":J
    const-wide/32 v10, 0x5265c00

    div-long v10, v4, v10

    long-to-int v0, v10

    .line 1569
    .local v0, "days":I
    const/16 v9, 0x2d

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1570
    .local v3, "index":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 1571
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1575
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1583
    .end local v0    # "days":I
    .end local v3    # "index":I
    .end local v4    # "intervalMilli":J
    .end local v8    # "todayDate":Ljava/util/Date;
    .end local p0    # "date":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object p0

    .line 1562
    .restart local p0    # "date":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1563
    .local v2, "e":Ljava/text/ParseException;
    const-string/jumbo v9, "DateUtil"

    const-string/jumbo v10, "getDateDetail()"

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1564
    const/4 p0, 0x0

    goto :goto_0

    .line 1577
    .end local v2    # "e":Ljava/text/ParseException;
    .restart local v0    # "days":I
    .restart local v3    # "index":I
    .restart local v4    # "intervalMilli":J
    .restart local v8    # "todayDate":Ljava/util/Date;
    :pswitch_1
    const-string/jumbo p0, " "

    goto :goto_0

    .line 1581
    :pswitch_2
    const-string/jumbo p0, "\u6628\u5929"

    goto :goto_0

    .line 1575
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "starTime"    # Ljava/lang/String;
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 1661
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-wide v4

    .line 1664
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1668
    .local v2, "parse":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1670
    .local v3, "parse1":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long v4, v6, v4

    goto :goto_0

    .line 1671
    .end local v2    # "parse":Ljava/util/Date;
    .end local v3    # "parse1":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 1672
    .local v1, "e":Ljava/text/ParseException;
    const-string/jumbo v6, "DateUtil"

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTime"    # J

    .prologue
    .line 973
    const-string/jumbo v0, "yyyyMMddhhmmss"

    invoke-static {v0, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    .line 1039
    const v0, 0x7f0c01bd

    invoke-static {p0, v0}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1596
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-object v5

    .line 1600
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1601
    .local v4, "year":Ljava/lang/String;
    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1602
    .local v3, "month":Ljava/lang/String;
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, "day":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd"

    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1605
    .local v2, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1606
    .end local v0    # "day":Ljava/lang/String;
    .end local v2    # "fmt":Ljava/text/SimpleDateFormat;
    .end local v3    # "month":Ljava/lang/String;
    .end local v4    # "year":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1607
    .local v1, "e":Ljava/text/ParseException;
    const-string/jumbo v6, "DateUtil"

    const-string/jumbo v7, "DateFormat()"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTime"    # J

    .prologue
    .line 980
    const-string/jumbo v0, "yyyyMMddHHmmss"

    invoke-static {v0, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    .line 1049
    const-string/jumbo v0, ""

    .line 1052
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lbaa;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lbaa;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    const-string/jumbo v2, "hh:mm"

    invoke-static {v2, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, "time":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1060
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1062
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    const-string/jumbo v2, "DateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "------->> getCnNaturalOfDate()|result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "startDate"    # Ljava/lang/String;
    .param p1, "endDate"    # Ljava/lang/String;

    .prologue
    .line 1680
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1681
    :cond_0
    const/4 v10, 0x0

    .line 1709
    :goto_0
    return-object v10

    .line 1683
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd"

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 1685
    .local v3, "startDateparse":Ljava/util/Date;
    const/4 v2, 0x0

    .line 1687
    .local v2, "endDateparse":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1688
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1689
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1690
    .local v6, "startTime":J
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1692
    .local v4, "endTime":J
    sub-long v8, v4, v6

    .line 1693
    .local v8, "value":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_2

    const-wide/32 v10, 0x5265c00

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    .line 1695
    const-string/jumbo v10, "\u4eca\u5929"

    goto :goto_0

    .line 1696
    :cond_2
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v8, v10

    if-ltz v10, :cond_3

    const-wide/32 v10, 0xa4cb800

    cmp-long v10, v8, v10

    if-gez v10, :cond_3

    .line 1698
    const-string/jumbo v10, "\u660e\u5929"

    goto :goto_0

    .line 1699
    :cond_3
    const-wide/32 v10, 0xa4cb800

    cmp-long v10, v8, v10

    if-ltz v10, :cond_4

    const-wide/32 v10, 0xf731400

    cmp-long v10, v8, v10

    if-gez v10, :cond_4

    .line 1701
    const-string/jumbo v10, "\u540e\u5929"

    goto :goto_0

    .line 1702
    :cond_4
    const-wide/32 v10, 0xf731400

    cmp-long v10, v8, v10

    if-ltz v10, :cond_5

    const-wide/32 v10, 0x14997000

    cmp-long v10, v8, v10

    if-gez v10, :cond_5

    .line 1704
    const-string/jumbo v10, "\u5927\u540e\u5929"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1706
    .end local v4    # "endTime":J
    .end local v6    # "startTime":J
    .end local v8    # "value":J
    :catch_0
    move-exception v1

    .line 1707
    .local v1, "e":Ljava/text/ParseException;
    const-string/jumbo v10, "DateUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1709
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/4 v3, 0x6

    .line 1069
    const-string/jumbo v2, ""

    .line 1070
    .local v2, "result":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1071
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 1072
    .local v1, "hour":I
    if-ltz v1, :cond_1

    if-ge v1, v3, :cond_1

    .line 1074
    const v3, 0x7f0c01bc

    invoke-static {p0, v3}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1088
    :cond_0
    :goto_0
    return-object v2

    .line 1075
    :cond_1
    if-lt v1, v3, :cond_2

    if-ge v1, v4, :cond_2

    .line 1077
    const v3, 0x7f0c01be

    invoke-static {p0, v3}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1078
    :cond_2
    if-lt v1, v4, :cond_3

    if-ge v1, v5, :cond_3

    .line 1080
    const v3, 0x7f0c01c0

    invoke-static {p0, v3}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1081
    :cond_3
    if-lt v1, v5, :cond_4

    if-ge v1, v6, :cond_4

    .line 1083
    const v3, 0x7f0c01bb

    invoke-static {p0, v3}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1084
    :cond_4
    if-lt v1, v6, :cond_0

    const/16 v3, 0x18

    if-ge v1, v3, :cond_0

    .line 1086
    const v3, 0x7f0c01bf

    invoke-static {p0, v3}, Lbaa;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static f(J)Z
    .locals 6
    .param p0, "datetime"    # J

    .prologue
    const/4 v1, 0x0

    .line 1235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1236
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1237
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1238
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1239
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1}, Lbaa;->b(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1240
    const-string/jumbo v1, "DateUtil"

    const-string/jumbo v2, "------>> isDated()|datetime is dated"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v1, 0x1

    .line 1244
    :goto_0
    return v1

    .line 1243
    :cond_0
    const-string/jumbo v2, "DateUtil"

    const-string/jumbo v3, "------>> isDated()|datetime is not dated"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static g(J)Ljava/lang/String;
    .locals 4
    .param p0, "dateTime"    # J

    .prologue
    .line 1401
    const-string/jumbo v2, ""

    .line 1402
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1403
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1404
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1405
    .local v1, "day":I
    packed-switch v1, :pswitch_data_0

    .line 1430
    :goto_0
    return-object v2

    .line 1407
    :pswitch_0
    const-string/jumbo v2, "\u5468\u65e5"

    .line 1408
    goto :goto_0

    .line 1410
    :pswitch_1
    const-string/jumbo v2, "\u5468\u4e00"

    .line 1411
    goto :goto_0

    .line 1413
    :pswitch_2
    const-string/jumbo v2, "\u5468\u4e8c"

    .line 1414
    goto :goto_0

    .line 1416
    :pswitch_3
    const-string/jumbo v2, "\u5468\u4e09"

    .line 1417
    goto :goto_0

    .line 1419
    :pswitch_4
    const-string/jumbo v2, "\u5468\u56db"

    .line 1420
    goto :goto_0

    .line 1422
    :pswitch_5
    const-string/jumbo v2, "\u5468\u4e94"

    .line 1423
    goto :goto_0

    .line 1425
    :pswitch_6
    const-string/jumbo v2, "\u5468\u516d"

    .line 1426
    goto :goto_0

    .line 1405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    .line 1098
    const-string/jumbo v0, ""

    .line 1101
    .local v0, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lbaa;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    const-string/jumbo v2, "hh:mm"

    invoke-static {v2, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "time":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1108
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-string/jumbo v2, "DateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "------->> getCnNaturalOfTime()|result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-object v0
.end method

.method public static h(J)J
    .locals 4
    .param p0, "milliseconds"    # J

    .prologue
    const/4 v2, 0x0

    .line 1535
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1536
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1537
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1538
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1539
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static i(J)Z
    .locals 4
    .param p0, "dateTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 1644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1645
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1646
    .local v1, "year":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1647
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1650
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
