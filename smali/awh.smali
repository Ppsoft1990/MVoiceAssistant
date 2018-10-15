.class public Lawh;
.super Ljava/lang/Object;
.source "ScheduleUtil.java"


# direct methods
.method public static a(J)I
    .locals 4
    .param p0, "datetime"    # J

    .prologue
    .line 353
    const-string/jumbo v1, "ScheduleUtil"

    const-string/jumbo v2, "getMonthDay()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private static a(Landroid/content/Context;I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # I

    .prologue
    const/4 v3, 0x0

    .line 570
    const-string/jumbo v6, "ScheduleUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getScheduleByUuid | uuid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {p0}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v6

    invoke-virtual {v6, p1}, Lavj;->a(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    .line 573
    .local v0, "runDataItem":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    if-nez v0, :cond_0

    .line 574
    const-string/jumbo v6, "ScheduleUtil"

    const-string/jumbo v7, "getScheduleByUuid | runDataItem is null"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-object v3

    .line 577
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getStatus()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    move-result-object v6

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->finish:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    if-ne v6, v7, :cond_1

    .line 578
    const-string/jumbo v6, "ScheduleUtil"

    const-string/jumbo v7, "getScheduleByUuid | runDataItem.status = finish"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :cond_1
    invoke-static {p0}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lavj;->b(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)V

    .line 582
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getScheduleid()I

    move-result v2

    .line 583
    .local v2, "scheduleId":I
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getScheduletriggertime()J

    move-result-wide v4

    .line 584
    .local v4, "triggertime":J
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    .line 585
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    .line 586
    const-string/jumbo v3, "ScheduleUtil"

    const-string/jumbo v6, "getScheduleByUuid | schedule.getTriggerTime() != triggertime"

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    :cond_2
    move-object v3, v1

    .line 589
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz p1, :cond_0

    .line 601
    const-string/jumbo v3, "ScheduleUtil"

    const-string/jumbo v4, "getScheduleFromIntent | get schedule by uuid"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :try_start_0
    const-string/jumbo v3, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE_UUID"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 604
    .local v2, "uuid":I
    invoke-static {p0, v2}, Lawh;->a(Landroid/content/Context;I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 635
    .end local v2    # "uuid":I
    :cond_0
    :goto_0
    return-object v1

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScheduleUtil"

    const-string/jumbo v4, "getScheduleFromIntent error"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/base/newalarm/entities/AlarmData;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 397
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 398
    const/4 v3, 0x0

    .line 404
    :goto_0
    return-object v3

    .line 401
    :cond_0
    const-string/jumbo v3, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE_UUID"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 402
    .local v2, "uuid":I
    invoke-static {p0, v2}, Lawh;->a(Landroid/content/Context;I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    move-object v3, v1

    .line 404
    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "week"    # I

    .prologue
    .line 243
    const-string/jumbo v0, ""

    .line 244
    .local v0, "result":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 269
    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    const-string/jumbo v0, "\u5468\u4e00"

    .line 247
    goto :goto_0

    .line 249
    :pswitch_1
    const-string/jumbo v0, "\u5468\u4e8c"

    .line 250
    goto :goto_0

    .line 252
    :pswitch_2
    const-string/jumbo v0, "\u5468\u4e09"

    .line 253
    goto :goto_0

    .line 255
    :pswitch_3
    const-string/jumbo v0, "\u5468\u56db"

    .line 256
    goto :goto_0

    .line 258
    :pswitch_4
    const-string/jumbo v0, "\u5468\u4e94"

    .line 259
    goto :goto_0

    .line 261
    :pswitch_5
    const-string/jumbo v0, "\u5468\u516d"

    .line 262
    goto :goto_0

    .line 264
    :pswitch_6
    const-string/jumbo v0, "\u5468\u65e5"

    .line 265
    goto :goto_0

    .line 244
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

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # J

    .prologue
    const-wide/32 v6, 0xa4cb800

    const-wide/32 v4, 0x5265c00

    .line 366
    const/4 v2, 0x0

    invoke-static {v2}, Lbaa;->c(I)J

    move-result-wide v2

    sub-long v0, p1, v2

    .line 367
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    :goto_0
    return-object v2

    .line 370
    :cond_0
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 373
    :cond_1
    cmp-long v2, v0, v6

    if-ltz v2, :cond_2

    const-wide/32 v2, 0xf731400

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 377
    :cond_2
    const-string/jumbo v2, "yyyy/MM/dd"

    invoke-static {v2, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "datetimeInfor"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .prologue
    .line 117
    if-eqz p1, :cond_a

    .line 118
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v6

    .line 119
    .local v6, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_0

    .line 120
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .end local p1    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 121
    .local v1, "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 123
    const/4 v8, 0x2

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/4 v8, 0x5

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 125
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lawh;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 173
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v6    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :goto_0
    return-object v8

    .line 126
    .restart local v6    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .restart local p1    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_0
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_1

    .line 127
    const-string/jumbo v8, "\u6bcf\u5929"

    goto :goto_0

    .line 128
    :cond_1
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_7

    .line 129
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    .end local p1    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getWeekList()Ljava/util/List;

    move-result-object v7

    .line 130
    .local v7, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 131
    .local v3, "length":I
    if-lez v3, :cond_a

    .line 132
    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    .line 133
    const-string/jumbo v8, "\u5468\u672b"

    goto :goto_0

    .line 134
    :cond_2
    const/4 v8, 0x5

    if-ne v3, v8, :cond_3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    .line 135
    const-string/jumbo v8, "\u5de5\u4f5c\u65e5"

    goto :goto_0

    .line 136
    :cond_3
    const/4 v8, 0x7

    if-ne v3, v8, :cond_4

    .line 137
    const-string/jumbo v8, "\u6bcf\u5929"

    goto :goto_0

    .line 139
    :cond_4
    const/4 v8, 0x2

    if-lt v3, v8, :cond_5

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v9, v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_5

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6bcf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u5230"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 142
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6bcf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/4 v8, 0x1

    if-le v3, v8, :cond_6

    .line 145
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\uff0c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "index":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 153
    .end local v3    # "length":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    .restart local p1    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_7
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_a

    .line 154
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    .end local p1    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMonthDayList()Ljava/util/List;

    move-result-object v4

    .line 156
    .local v4, "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 157
    .restart local v3    # "length":I
    if-lez v3, :cond_a

    .line 158
    const/4 v8, 0x2

    if-lt v3, v8, :cond_8

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v9, v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_8

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6bcf\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u5230"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 161
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6bcf\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v8, 0x1

    if-le v3, v8, :cond_9

    .line 164
    const/4 v2, 0x1

    .restart local v2    # "index":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_9

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 168
    .end local v2    # "index":I
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 173
    .end local v3    # "length":I
    .end local v4    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_a
    const-string/jumbo v8, ""

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v10, 0x0

    .line 660
    if-nez p1, :cond_1

    .line 661
    const-string/jumbo v5, ""

    .line 703
    :cond_0
    :goto_0
    return-object v5

    .line 663
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    .line 664
    .local v1, "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    const/4 v4, 0x0

    .line 665
    .local v4, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const-string/jumbo v5, ""

    .line 666
    .local v5, "timeShow":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v2, "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v6

    .line 668
    .local v6, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_2

    .line 669
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v8, v1

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v9

    move-object v8, v1

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 670
    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v8

    invoke-direct {v4, v9, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .restart local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v8, v1

    .line 672
    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 673
    .local v7, "xTime":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    new-instance v9, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v10

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 675
    .end local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_2
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v8, v6, :cond_3

    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v8, v6, :cond_3

    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v8, v6, :cond_4

    :cond_3
    move-object v8, v1

    .line 676
    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .restart local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v8, v1

    .line 678
    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 679
    .local v7, "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    new-instance v9, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v10

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 683
    .end local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_4
    if-eqz v4, :cond_0

    .line 684
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 685
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isMultiple()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 686
    const/4 v3, 0x0

    .line 687
    .local v3, "n":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 688
    .restart local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/4 v9, 0x2

    if-le v3, v9, :cond_5

    .line 689
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 690
    goto/16 :goto_0

    .line 692
    :cond_5
    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v9

    invoke-virtual {v0, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 693
    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v9

    invoke-virtual {v0, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 694
    add-int/lit8 v3, v3, 0x1

    .line 695
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {p0, v10, v11}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 696
    goto :goto_3

    .line 698
    .end local v3    # "n":I
    .end local v7    # "xTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_6
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v8

    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 699
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v8

    invoke-virtual {v0, v13, v8}, Ljava/util/Calendar;->set(II)V

    .line 700
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;
    .locals 13
    .param p0, "datetimeInfor"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 182
    if-eqz p0, :cond_a

    .line 183
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v4

    .line 184
    .local v4, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v4, :cond_0

    .line 185
    const-string/jumbo v6, "\u4e00\u6b21"

    .line 233
    .end local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :goto_0
    return-object v6

    .line 186
    .restart local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_0
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v4, :cond_1

    .line 187
    const-string/jumbo v6, "\u6bcf\u5929"

    goto :goto_0

    .line 188
    :cond_1
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v4, :cond_7

    .line 189
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    .end local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getWeekList()Ljava/util/List;

    move-result-object v5

    .line 190
    .local v5, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 191
    .local v1, "length":I
    if-lez v1, :cond_a

    .line 192
    if-ne v1, v10, :cond_2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 193
    const-string/jumbo v6, "\u5468\u672b"

    goto :goto_0

    .line 194
    :cond_2
    if-ne v1, v11, :cond_3

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_3

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 195
    const-string/jumbo v6, "\u5de5\u4f5c\u65e5"

    goto :goto_0

    .line 196
    :cond_3
    if-ne v1, v12, :cond_4

    .line 197
    const-string/jumbo v6, "\u6bcf\u5929"

    goto :goto_0

    .line 199
    :cond_4
    if-lt v1, v10, :cond_5

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6bcf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5230"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 202
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6bcf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    if-le v1, v9, :cond_6

    .line 205
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\uff0c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "index":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 213
    .end local v1    # "length":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    .restart local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_7
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v4, :cond_a

    .line 214
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    .end local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMonthDayList()Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "monthList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 217
    .restart local v1    # "length":I
    if-lez v1, :cond_a

    .line 218
    if-lt v1, v10, :cond_8

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_8

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6bcf\u6708"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5230"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 221
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6bcf\u6708"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    if-le v1, v9, :cond_9

    .line 224
    const/4 v0, 0x1

    .restart local v0    # "index":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lawh;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 228
    .end local v0    # "index":I
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 233
    .end local v1    # "length":I
    .end local v2    # "monthList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const-string/jumbo v6, ""

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p0, :cond_1

    .line 67
    const/4 p0, 0x0

    .line 82
    .end local p0    # "src":Ljava/lang/String;
    .local v0, "end":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 70
    .end local v0    # "end":Ljava/lang/String;
    .restart local p0    # "src":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 72
    const-string/jumbo p0, ""

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "end":Ljava/lang/String;
    const-string/jumbo v1, "\"\'[`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 80
    const-string/jumbo p0, ""

    goto :goto_0

    .line 82
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v0, Lawh$1;

    invoke-direct {v0}, Lawh$1;-><init>()V

    .line 454
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 455
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleUtil"

    const-string/jumbo v2, "showToast() error!"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 10
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v6, 0x0

    .line 646
    if-nez p0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v6

    .line 650
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 651
    .local v0, "currentTime":J
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    .line 652
    .local v4, "triggerTime":J
    sub-long v2, v0, v4

    .line 653
    .local v2, "interval":J
    const-wide/32 v8, 0x927c0

    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "week"    # I

    .prologue
    .line 279
    const-string/jumbo v0, ""

    .line 280
    .local v0, "result":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 305
    :goto_0
    return-object v0

    .line 282
    :pswitch_0
    const-string/jumbo v0, "\u4e00"

    .line 283
    goto :goto_0

    .line 285
    :pswitch_1
    const-string/jumbo v0, "\u4e8c"

    .line 286
    goto :goto_0

    .line 288
    :pswitch_2
    const-string/jumbo v0, "\u4e09"

    .line 289
    goto :goto_0

    .line 291
    :pswitch_3
    const-string/jumbo v0, "\u56db"

    .line 292
    goto :goto_0

    .line 294
    :pswitch_4
    const-string/jumbo v0, "\u4e94"

    .line 295
    goto :goto_0

    .line 297
    :pswitch_5
    const-string/jumbo v0, "\u516d"

    .line 298
    goto :goto_0

    .line 300
    :pswitch_6
    const-string/jumbo v0, "\u65e5"

    .line 301
    goto :goto_0

    .line 280
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

.method public static b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    const-string/jumbo v3, ""

    .line 766
    :goto_0
    return-object v3

    .line 737
    :cond_0
    const/4 v0, 0x0

    .line 738
    .local v0, "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v4, v5, :cond_5

    .line 740
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "subType":Ljava/lang/String;
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 742
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v4

    invoke-virtual {v4}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 751
    .end local v2    # "subType":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v0, :cond_6

    .line 752
    const-string/jumbo v1, "(\u65e0)"

    .line 756
    .local v1, "speakerName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "title":Ljava/lang/String;
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v5

    if-eq v4, v5, :cond_2

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 759
    :cond_2
    const-string/jumbo v1, ""

    .line 761
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u751f\u6d3b\u63d0\u9192"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 743
    .end local v1    # "speakerName":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .restart local v2    # "subType":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 744
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v4

    invoke-virtual {v4}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    goto :goto_1

    .line 748
    .end local v2    # "subType":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v4

    invoke-virtual {v4}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    goto :goto_1

    .line 754
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "speakerName":Ljava/lang/String;
    goto :goto_2

    .line 764
    .restart local v3    # "title":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 3
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 786
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 787
    const-string/jumbo v1, "weather"

    .line 797
    :goto_0
    return-object v1

    .line 788
    :cond_0
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 789
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "subType":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    const-string/jumbo v1, "morning"

    goto :goto_0

    .line 792
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    const-string/jumbo v1, "night"

    goto :goto_0

    .line 795
    :cond_2
    const-string/jumbo v1, "normal"

    goto :goto_0

    .line 797
    .end local v0    # "subType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "normal"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 92
    const-string/jumbo v5, "ScheduleUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filterSymbol() | before="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-nez p0, :cond_0

    .line 106
    :goto_0
    return-object v4

    .line 98
    :cond_0
    const-string/jumbo v3, "[`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 100
    .local v3, "regEx":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 101
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 102
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v5, "ScheduleUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filterSymbol() | after="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 104
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ScheduleUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v0, Lawh$2;

    invoke-direct {v0}, Lawh$2;-><init>()V

    .line 510
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 511
    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2
    .param p0, "monthDate"    # I

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 774
    if-nez p1, :cond_0

    .line 775
    const-string/jumbo v0, ""

    .line 777
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lawh;->d(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lawh;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getSmartScheduleId(Ljava/lang/String;)I

    move-result v0

    .line 831
    .local v0, "id":I
    invoke-static {v0}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v0, Lawh$3;

    invoke-direct {v0}, Lawh$3;-><init>()V

    .line 534
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 536
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v4, "onceList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v2, "everyDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v8, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v3, "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 541
    .local v6, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    .line 542
    .local v1, "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v7

    .line 546
    .local v7, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v10, v7, :cond_1

    .line 547
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_1
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v10, v7, :cond_2

    .line 549
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_2
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v10, v7, :cond_3

    .line 551
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_3
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v10, v7, :cond_0

    .line 553
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    .end local v1    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v6    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v7    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_4
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 557
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 558
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 559
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 561
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 566
    .end local v2    # "everyDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v3    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v4    # "onceList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v8    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_5
    return-object v5
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 807
    const/4 v0, 0x6

    if-ne v0, p0, :cond_0

    .line 808
    const-string/jumbo v0, "umbrella"

    .line 820
    :goto_0
    return-object v0

    .line 809
    :cond_0
    const/4 v0, 0x5

    if-ne v0, p0, :cond_1

    .line 810
    const-string/jumbo v0, "cooling"

    goto :goto_0

    .line 811
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p0, :cond_2

    .line 812
    const-string/jumbo v0, "traffic"

    goto :goto_0

    .line 813
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p0, :cond_3

    .line 814
    const-string/jumbo v0, "hotEvent"

    goto :goto_0

    .line 820
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 710
    if-nez p1, :cond_1

    .line 711
    const-string/jumbo v0, ""

    .line 725
    :cond_0
    :goto_0
    return-object v0

    .line 713
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    .line 714
    .local v1, "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0, v1}, Lawh;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lbaa;->g(J)Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "week":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v4, v5, :cond_3

    const/4 v2, 0x1

    .line 719
    .local v2, "isRepeat":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 720
    const-string/jumbo v3, ""

    .line 722
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    .end local v2    # "isRepeat":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
