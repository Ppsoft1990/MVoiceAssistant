.class public Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;
.super Ljava/lang/Object;
.source "TrafficUtil.java"


# static fields
.field public static final ONE_DAY_IN_MILLIS:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "TrafficUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatUpdateTime(J)Ljava/lang/String;
    .locals 24
    .param p0, "updateTime"    # J

    .prologue
    .line 32
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 33
    .local v9, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 34
    .local v10, "dateFormat2":Ljava/text/SimpleDateFormat;
    const-wide/16 v20, -0x1

    cmp-long v20, p0, v20

    if-nez v20, :cond_0

    .line 35
    const-string/jumbo v20, "\u66f4\u65b0\u5931\u8d25"

    .line 76
    :goto_0
    return-object v20

    .line 38
    :cond_0
    const/4 v14, 0x0

    .line 39
    .local v14, "prefix":Ljava/lang/String;
    const/4 v15, 0x0

    .line 40
    .local v15, "suffix":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 41
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 42
    .local v6, "currentTimeInMillis":J
    cmp-long v20, v6, p0

    if-lez v20, :cond_4

    .line 43
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 44
    .local v4, "currentDay":I
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 45
    .local v8, "currentYear":I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v5, v20, 0x1

    .line 46
    .local v5, "currentMonth":I
    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 48
    .local v11, "day":I
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 49
    .local v19, "year":I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v13, v20, 0x1

    .line 51
    .local v13, "month":I
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 52
    .local v3, "current":Ljava/util/Date;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    .line 53
    .local v18, "update":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    const-wide/32 v22, 0x5265c00

    div-long v16, v20, v22

    .line 54
    .local v16, "temp":J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_3

    .line 55
    const-wide/16 v20, 0x1

    cmp-long v20, v16, v20

    if-nez v20, :cond_2

    .line 56
    const-string/jumbo v14, "\u6628\u5929"

    .line 57
    const-string/jumbo v15, "\u66f4\u65b0"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v3    # "current":Ljava/util/Date;
    .end local v4    # "currentDay":I
    .end local v5    # "currentMonth":I
    .end local v8    # "currentYear":I
    .end local v11    # "day":I
    .end local v13    # "month":I
    .end local v16    # "temp":J
    .end local v18    # "update":Ljava/util/Date;
    .end local v19    # "year":I
    :goto_1
    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 72
    if-nez v15, :cond_1

    .line 73
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\u66f4\u65b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 75
    :cond_1
    const-string/jumbo v20, "TrafficUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "the update time is  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 59
    .restart local v3    # "current":Ljava/util/Date;
    .restart local v4    # "currentDay":I
    .restart local v5    # "currentMonth":I
    .restart local v8    # "currentYear":I
    .restart local v11    # "day":I
    .restart local v13    # "month":I
    .restart local v16    # "temp":J
    .restart local v18    # "update":Ljava/util/Date;
    .restart local v19    # "year":I
    :cond_2
    :try_start_1
    const-string/jumbo v14, "\u51e0\u5929\u524d"

    .line 60
    const-string/jumbo v15, "\u66f4\u65b0"

    goto :goto_1

    .line 63
    :cond_3
    const-string/jumbo v14, ""
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    .end local v3    # "current":Ljava/util/Date;
    .end local v16    # "temp":J
    .end local v18    # "update":Ljava/util/Date;
    :catch_0
    move-exception v12

    .line 66
    .local v12, "e":Ljava/text/ParseException;
    const-string/jumbo v20, "TrafficUtil"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 69
    .end local v4    # "currentDay":I
    .end local v5    # "currentMonth":I
    .end local v8    # "currentYear":I
    .end local v11    # "day":I
    .end local v12    # "e":Ljava/text/ParseException;
    .end local v13    # "month":I
    .end local v19    # "year":I
    :cond_4
    const-string/jumbo v14, ""

    goto :goto_1
.end method

.method public static getFloatWInDismissTime(J)J
    .locals 12
    .param p0, "currentTime"    # J

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 95
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gtz v6, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 99
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 105
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 107
    .local v4, "lastDay":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "lastDayString":Ljava/lang/String;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "currentTimeString":Ljava/lang/String;
    const-string/jumbo v6, "TrafficUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lastDayString "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string/jumbo v6, "TrafficUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "currentTimeString "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    cmp-long v6, p0, v4

    if-gtz v6, :cond_1

    .line 113
    add-long v6, p0, v10

    .line 115
    :goto_0
    return-wide v6

    :cond_1
    add-long v6, v4, v10

    goto :goto_0
.end method

.method public static getTomorrowZeroTime()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    const/16 v6, 0x18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 132
    .local v2, "tomorrow":J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "tomorrowString":Ljava/lang/String;
    const-string/jumbo v5, "TrafficUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tomorrowString "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-wide v2
.end method

.method public static launchHomeOpenBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string/jumbo v1, "TrafficUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchHomeOpenBrowser() , url is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intentToHome":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_CONTTENT_BROWSER"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_CODE_SCAN_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
