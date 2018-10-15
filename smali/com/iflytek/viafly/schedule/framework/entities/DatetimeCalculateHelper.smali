.class public Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;
.super Ljava/lang/Object;
.source "DatetimeCalculateHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScheduleTimeCalculateHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarWeekDay(I)I
    .locals 4
    .param p0, "cnWeekDay"    # I

    .prologue
    .line 197
    const/4 v0, -0x1

    .line 198
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 230
    :goto_0
    const-string/jumbo v1, "ScheduleTimeCalculateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCalendarWeekDay() | return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v0

    .line 200
    :pswitch_0
    const/4 v0, 0x2

    .line 201
    goto :goto_0

    .line 204
    :pswitch_1
    const/4 v0, 0x3

    .line 205
    goto :goto_0

    .line 208
    :pswitch_2
    const/4 v0, 0x4

    .line 209
    goto :goto_0

    .line 212
    :pswitch_3
    const/4 v0, 0x5

    .line 213
    goto :goto_0

    .line 216
    :pswitch_4
    const/4 v0, 0x6

    .line 217
    goto :goto_0

    .line 220
    :pswitch_5
    const/4 v0, 0x7

    .line 221
    goto :goto_0

    .line 224
    :pswitch_6
    const/4 v0, 0x1

    .line 225
    goto :goto_0

    .line 198
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

.method public static getCnWeekDay(I)I
    .locals 1
    .param p0, "calendarWeekDay"    # I

    .prologue
    .line 155
    const/4 v0, -0x1

    .line 156
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 188
    :goto_0
    return v0

    .line 158
    :pswitch_0
    const/4 v0, 0x1

    .line 159
    goto :goto_0

    .line 162
    :pswitch_1
    const/4 v0, 0x2

    .line 163
    goto :goto_0

    .line 166
    :pswitch_2
    const/4 v0, 0x3

    .line 167
    goto :goto_0

    .line 170
    :pswitch_3
    const/4 v0, 0x4

    .line 171
    goto :goto_0

    .line 174
    :pswitch_4
    const/4 v0, 0x5

    .line 175
    goto :goto_0

    .line 178
    :pswitch_5
    const/4 v0, 0x6

    .line 179
    goto :goto_0

    .line 182
    :pswitch_6
    const/4 v0, 0x7

    .line 183
    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getEverydayNext(Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;J)J
    .locals 9
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;
    .param p1, "currentTime"    # J

    .prologue
    .line 349
    if-eqz p0, :cond_3

    .line 351
    const/4 v3, 0x0

    .line 352
    .local v3, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v3

    .line 357
    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 359
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 361
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 362
    .local v2, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/16 v5, 0xb

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 363
    const/16 v5, 0xc

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 364
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 365
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 366
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-lez v5, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 378
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :goto_2
    return-wide v4

    .line 355
    .restart local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 370
    .restart local v0    # "calendar":Ljava/util/Calendar;
    :cond_2
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 373
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ScheduleTimeCalculateHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_3
    const-string/jumbo v4, "ScheduleTimeCalculateHelper"

    const-string/jumbo v5, "getEverydayNext() | error!"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method private static getMonthDateNext(Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;J)J
    .locals 13
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
    .param p1, "currentTime"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    .line 241
    if-eqz p0, :cond_5

    .line 242
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMonthDayList()Ljava/util/List;

    move-result-object v3

    .line 243
    .local v3, "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    const/4 v5, 0x0

    .line 244
    .local v5, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->isMultiple()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v5

    .line 249
    :goto_0
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 251
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 254
    .local v1, "currentDayOfMonth":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    .line 256
    .local v2, "monthDay":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, v1, :cond_0

    .line 260
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    if-le v7, v8, :cond_3

    .line 261
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 265
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 266
    .local v4, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/16 v8, 0xb

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 267
    const/16 v8, 0xc

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 268
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 269
    const/16 v8, 0xe

    invoke-virtual {v0, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 270
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_1

    .line 271
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 282
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "currentDayOfMonth":I
    .end local v2    # "monthDay":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    .end local v3    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v5    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :goto_3
    return-wide v6

    .line 247
    .restart local v3    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .restart local v5    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v5

    goto/16 :goto_0

    .line 263
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "currentDayOfMonth":I
    .restart local v2    # "monthDay":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    :cond_3
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 275
    .end local v2    # "monthDay":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    :cond_4
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 277
    const/high16 v1, -0x80000000

    goto/16 :goto_1

    .line 281
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "currentDayOfMonth":I
    .end local v3    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .end local v5    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_5
    const-string/jumbo v6, "ScheduleTimeCalculateHelper"

    const-string/jumbo v7, "getMonthNext() | error!"

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-wide/16 v6, 0x0

    goto :goto_3
.end method

.method public static getNextTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;J)J
    .locals 9
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p1, "currentTime"    # J

    .prologue
    .line 18
    const-string/jumbo v2, "ScheduleTimeCalculateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNextTime() start | source datetimeInfor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .local v0, "nextTime":J
    if-eqz p0, :cond_0

    .line 21
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 22
    instance-of v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    if-eqz v2, :cond_0

    .line 23
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .end local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getOnceNext(Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;J)J

    move-result-wide v0

    .line 43
    :cond_0
    :goto_0
    const-string/jumbo v3, "ScheduleTimeCalculateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNextTime() end | return="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-wide v0

    .line 25
    .restart local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 26
    instance-of v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    if-eqz v2, :cond_0

    .line 27
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    .end local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getEverydayNext(Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;J)J

    move-result-wide v0

    goto :goto_0

    .line 29
    .restart local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 30
    instance-of v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    if-eqz v2, :cond_0

    .line 31
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    .end local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getWeekNext(Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;J)J

    move-result-wide v0

    goto :goto_0

    .line 33
    .restart local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_3
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 34
    instance-of v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    if-eqz v2, :cond_0

    .line 35
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    .end local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getMonthDateNext(Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;J)J

    move-result-wide v0

    goto :goto_0

    .line 37
    .restart local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_4
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->year_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 38
    instance-of v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    if-eqz v2, :cond_0

    .line 39
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    .end local p0    # "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getYearDateNext(Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;J)J

    move-result-wide v0

    goto :goto_0

    .line 43
    :cond_5
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v0, v1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getOnce(Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;)J
    .locals 7
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .prologue
    const/4 v6, 0x0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 96
    .local v1, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 97
    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 98
    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 99
    const/16 v3, 0xb

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v3, 0xc

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 108
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v2    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :goto_0
    return-wide v4

    .line 107
    :cond_0
    const-string/jumbo v3, "ScheduleTimeCalculateHelper"

    const-string/jumbo v4, "getOnceNext() | has no next!"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private static getOnceNext(Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;J)J
    .locals 7
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .param p1, "currentTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v2

    .line 61
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 65
    .local v1, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 66
    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 67
    const/4 v4, 0x5

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 68
    const/16 v4, 0xb

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 69
    const/16 v4, 0xc

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 70
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 71
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 73
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-lez v4, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 80
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v2    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :goto_1
    return-wide v4

    .line 59
    .restart local v2    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 79
    .end local v2    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :cond_2
    const-string/jumbo v3, "ScheduleTimeCalculateHelper"

    const-string/jumbo v4, "getOnceNext() | has no next!"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method private static getWeekNext(Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;J)J
    .locals 9
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    .param p1, "currentTime"    # J

    .prologue
    const/4 v8, 0x0

    .line 118
    if-eqz p0, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getWeekList()Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    const/4 v2, 0x0

    .line 121
    .local v2, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v2

    .line 126
    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 130
    :goto_1
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getCnWeekDay(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 132
    .local v1, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/16 v5, 0xb

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 133
    const/16 v5, 0xc

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 136
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-lez v5, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 146
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v2    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v3    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    :goto_2
    return-wide v4

    .line 124
    .restart local v2    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .restart local v3    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 141
    .restart local v0    # "calendar":Ljava/util/Calendar;
    :cond_2
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 145
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v3    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    :cond_3
    const-string/jumbo v4, "ScheduleTimeCalculateHelper"

    const-string/jumbo v5, "getWeekNext() | error!"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method private static getYearDateNext(Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;J)J
    .locals 17
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
    .param p1, "currentTime"    # J

    .prologue
    .line 292
    if-eqz p0, :cond_5

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getYearDayList()Ljava/util/List;

    move-result-object v10

    .line 294
    .local v10, "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    const/4 v8, 0x0

    .line 295
    .local v8, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->isMultiple()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v8

    .line 300
    :goto_0
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 302
    .local v2, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 303
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 304
    .local v4, "currentMonthOfYear":I
    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 306
    .local v3, "currentDayOfMonth":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    .line 307
    .local v9, "yearDay":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->getMonth()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 308
    .local v5, "month":I
    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->getMonthDay()I

    move-result v6

    .line 310
    .local v6, "monthDay":I
    if-lt v5, v4, :cond_0

    .line 313
    const/4 v12, 0x2

    invoke-virtual {v2, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 315
    if-ne v5, v4, :cond_1

    if-lt v6, v3, :cond_0

    .line 318
    :cond_1
    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v12

    if-gt v6, v12, :cond_0

    .line 321
    const/4 v12, 0x5

    invoke-virtual {v2, v12, v6}, Ljava/util/Calendar;->set(II)V

    .line 322
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 323
    .local v7, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/16 v13, 0xb

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 324
    const/16 v13, 0xc

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 325
    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 326
    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 327
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v13, v14, p1

    if-lez v13, :cond_2

    .line 328
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 339
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "currentDayOfMonth":I
    .end local v4    # "currentMonthOfYear":I
    .end local v5    # "month":I
    .end local v6    # "monthDay":I
    .end local v7    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v8    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v9    # "yearDay":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    .end local v10    # "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    :goto_2
    return-wide v12

    .line 298
    .restart local v8    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .restart local v10    # "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v8

    goto/16 :goto_0

    .line 332
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "currentDayOfMonth":I
    .restart local v4    # "currentMonthOfYear":I
    :cond_4
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 333
    const/high16 v4, -0x80000000

    .line 334
    const/high16 v3, -0x80000000

    goto :goto_1

    .line 338
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "currentDayOfMonth":I
    .end local v4    # "currentMonthOfYear":I
    .end local v8    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v10    # "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    :cond_5
    const-string/jumbo v11, "ScheduleTimeCalculateHelper"

    const-string/jumbo v12, "getYearNext() | error!"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-wide/16 v12, 0x0

    goto :goto_2
.end method
