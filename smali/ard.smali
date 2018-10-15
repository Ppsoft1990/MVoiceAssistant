.class Lard;
.super Ljava/lang/Object;
.source "PluginAutoDownloadTimeParser.java"


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;

.field private static final b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lard;->b:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lard;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v1

    invoke-virtual {v1}, Lasg;->c()Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    move-result-object v0

    .line 30
    .local v0, "info":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    if-nez v0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getDownloadTime()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[J
    .locals 4
    .param p0, "timeStr"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "result":[J
    :try_start_0
    invoke-static {p0}, Lard;->b(Ljava/lang/String;)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginAutoDownloadTimeParser"

    const-string/jumbo v3, "parse exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[J
    .locals 18
    .param p0, "timeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 49
    const/4 v13, 0x0

    .line 103
    :goto_0
    return-object v13

    .line 51
    :cond_0
    const-string/jumbo v13, "\\|"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "timeArr":[Ljava/lang/String;
    if-eqz v8, :cond_1

    array-length v13, v8

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    .line 53
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 55
    :cond_2
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    aget-object v13, v8, v13

    .line 56
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 57
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 61
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 62
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 63
    .local v3, "currDate":Ljava/util/Date;
    sget-object v13, Lard;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "currDateStr":Ljava/lang/String;
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 66
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 67
    .local v9, "tommorrowDate":Ljava/util/Date;
    sget-object v13, Lard;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "tommorrowDateStr":Ljava/lang/String;
    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    .line 70
    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x1

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    .line 73
    sget-object v13, Lard;->a:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 74
    .local v7, "startTime":Ljava/util/Date;
    sget-object v13, Lard;->a:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 75
    .local v5, "endTime":Ljava/util/Date;
    sget-object v13, Lard;->a:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 76
    .local v12, "tomorrowStartTime":Ljava/util/Date;
    sget-object v13, Lard;->a:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 78
    .local v11, "tomorrowEndTime":Ljava/util/Date;
    const/4 v13, 0x0

    aget-object v13, v8, v13

    const/4 v14, 0x1

    aget-object v14, v8, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, "result":I
    if-gtz v6, :cond_7

    .line 81
    invoke-virtual {v3, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 83
    const/4 v13, 0x2

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    goto/16 :goto_0

    .line 84
    :cond_5
    invoke-virtual {v3, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 85
    invoke-virtual {v3, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 87
    const/4 v13, 0x2

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    goto/16 :goto_0

    .line 90
    :cond_6
    const/4 v13, 0x2

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    goto/16 :goto_0

    .line 94
    :cond_7
    invoke-virtual {v3, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 96
    const/4 v13, 0x2

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    goto/16 :goto_0

    .line 97
    :cond_8
    invoke-virtual {v3, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 98
    invoke-virtual {v3, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 100
    const/4 v13, 0x2

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    goto/16 :goto_0

    .line 103
    :cond_9
    const/4 v13, 0x2

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    aput-wide v16, v13, v14

    goto/16 :goto_0
.end method
