.class public Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;
.super Ljava/lang/Object;
.source "DatetimeDbSaveHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScheduleDatetimeDbSaveHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static save(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;
    .locals 4
    .param p0, "datetimeInfor"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .prologue
    .line 25
    const-string/jumbo v1, "ScheduleDatetimeDbSaveHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save() start | source DatetimeInfor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string/jumbo v0, ""

    .line 27
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 28
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 29
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .end local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveOnce(Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    const-string/jumbo v1, "ScheduleDatetimeDbSaveHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save() end | save XML="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v0

    .line 30
    .restart local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 31
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    .end local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveEveryday(Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    .restart local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 33
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    .end local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    .restart local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 35
    check-cast p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    .end local p0    # "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveMonthDate(Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static saveEveryday(Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;)Ljava/lang/String;
    .locals 9
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    .prologue
    .line 99
    const-string/jumbo v5, "ScheduleDatetimeDbSaveHelper"

    const-string/jumbo v6, "saveEveryday()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz p0, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v3

    .line 102
    .local v3, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 103
    :cond_0
    const-string/jumbo v5, ""

    .line 122
    .end local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :goto_0
    return-object v5

    .line 106
    .restart local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_1
    new-instance v4, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v4}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 107
    .local v4, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v5, "datetime"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    .line 108
    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 109
    .local v0, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "repeat_type"

    invoke-virtual {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v5, "multiple"

    invoke-virtual {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->isMultiple()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 112
    .local v2, "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const-string/jumbo v6, "time"

    invoke-virtual {v0, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 113
    .local v1, "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v6, "hour"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 114
    const-string/jumbo v6, "minute"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_1

    .line 118
    .end local v1    # "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_2
    invoke-static {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveMultiTimeInfo(Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 120
    invoke-static {v4}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 122
    .end local v0    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v4    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_3
    const-string/jumbo v5, ""

    goto/16 :goto_0
.end method

.method private static saveMonthDate(Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;)Ljava/lang/String;
    .locals 12
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    .prologue
    .line 172
    const-string/jumbo v8, "ScheduleDatetimeDbSaveHelper"

    const-string/jumbo v9, "saveMonthDate()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz p0, :cond_6

    .line 174
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMonthDayList()Ljava/util/List;

    move-result-object v2

    .line 175
    .local v2, "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v6

    .line 176
    .local v6, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 177
    :cond_0
    const-string/jumbo v8, ""

    .line 202
    .end local v2    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .end local v6    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :goto_0
    return-object v8

    .line 179
    .restart local v2    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .restart local v6    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 180
    :cond_2
    const-string/jumbo v8, ""

    goto :goto_0

    .line 182
    :cond_3
    new-instance v7, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v7}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 183
    .local v7, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v8, "datetime"

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    .line 184
    invoke-virtual {v7}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 185
    .local v3, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "repeat_type"

    invoke-virtual {v3, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v8, "multiple"

    invoke-virtual {v3, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->isMultiple()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    .line 188
    .local v0, "monthDay":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    const-string/jumbo v9, "day_of_month"

    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 189
    .local v1, "monthDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "value"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_1

    .line 191
    .end local v0    # "monthDay":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    .end local v1    # "monthDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 192
    .local v5, "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const-string/jumbo v9, "time"

    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 193
    .local v4, "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "hour"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 194
    const-string/jumbo v9, "minute"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_2

    .line 198
    .end local v4    # "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_5
    invoke-static {p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveMultiTimeInfo(Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 200
    invoke-static {v7}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 202
    .end local v2    # "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    .end local v3    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v7    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_6
    const-string/jumbo v8, ""

    goto/16 :goto_0
.end method

.method private static saveMultiTimeInfo(Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;Lcom/iflytek/yd/util/xml/XmlElement;)V
    .locals 8
    .param p0, "baseTimeDatetimeInfor"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
    .param p1, "xmlElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v1

    .line 253
    .local v1, "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    const-string/jumbo v4, "multi_time"

    invoke-virtual {p1, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 255
    .local v0, "multiElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 256
    .local v2, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const-string/jumbo v5, "time"

    invoke-virtual {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 257
    .local v3, "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "hour"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 258
    const-string/jumbo v5, "minute"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_0

    .line 262
    .end local v0    # "multiElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v1    # "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v2    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v3    # "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-void
.end method

.method private static saveOnce(Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;)Ljava/lang/String;
    .locals 11
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .prologue
    .line 51
    const-string/jumbo v7, "ScheduleDatetimeDbSaveHelper"

    const-string/jumbo v8, "saveOnce()"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz p0, :cond_4

    .line 53
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 55
    :cond_0
    const-string/jumbo v7, ""

    .line 90
    .end local v3    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :goto_0
    return-object v7

    .line 58
    .restart local v3    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :cond_1
    new-instance v6, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v6}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 59
    .local v6, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v7, "datetime"

    invoke-virtual {v6, v7}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    .line 60
    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 61
    .local v5, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v7, "repeat_type"

    invoke-virtual {v5, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v7

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v7, "multiple"

    invoke-virtual {v5, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v7

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->isMultiple()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 64
    .local v2, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    const-string/jumbo v8, "once_date"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 65
    .local v4, "onceElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "year"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 66
    const-string/jumbo v8, "month"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 67
    const-string/jumbo v8, "day"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 68
    const-string/jumbo v8, "hour"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 69
    const-string/jumbo v8, "minute"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto/16 :goto_1

    .line 73
    .end local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v4    # "onceElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->isMultiple()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "multiOnceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 76
    const-string/jumbo v7, "multi_time"

    invoke-virtual {v5, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 77
    .local v0, "multiElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 78
    .restart local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    const-string/jumbo v8, "once_date"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 79
    .restart local v4    # "onceElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "year"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 80
    const-string/jumbo v8, "month"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 81
    const-string/jumbo v8, "day"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 82
    const-string/jumbo v8, "hour"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 83
    const-string/jumbo v8, "minute"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto/16 :goto_2

    .line 88
    .end local v0    # "multiElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v1    # "multiOnceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    .end local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v4    # "onceElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    invoke-static {v6}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 90
    .end local v3    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    .end local v5    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_4
    const-string/jumbo v7, ""

    goto/16 :goto_0
.end method

.method private static saveWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;)Ljava/lang/String;
    .locals 12
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    .prologue
    .line 131
    const-string/jumbo v8, "ScheduleDatetimeDbSaveHelper"

    const-string/jumbo v9, "saveWeek()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz p0, :cond_6

    .line 133
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getWeekList()Ljava/util/List;

    move-result-object v6

    .line 134
    .local v6, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 136
    :cond_0
    const-string/jumbo v8, ""

    .line 163
    .end local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v6    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    :goto_0
    return-object v8

    .line 138
    .restart local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .restart local v6    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 139
    :cond_2
    const-string/jumbo v8, ""

    goto :goto_0

    .line 142
    :cond_3
    new-instance v7, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v7}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 143
    .local v7, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v8, "datetime"

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    .line 144
    invoke-virtual {v7}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 145
    .local v0, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "repeat_type"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v8, "multiple"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->isMultiple()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 147
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .line 148
    .local v4, "week":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    const-string/jumbo v9, "week"

    invoke-virtual {v0, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 149
    .local v5, "weekElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "value"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_1

    .line 152
    .end local v4    # "week":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    .end local v5    # "weekElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 153
    .local v2, "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const-string/jumbo v9, "time"

    invoke-virtual {v0, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 154
    .local v1, "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "hour"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 155
    const-string/jumbo v9, "minute"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_2

    .line 159
    .end local v1    # "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_5
    invoke-static {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveMultiTimeInfo(Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 161
    invoke-static {v7}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 163
    .end local v0    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v6    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    .end local v7    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_6
    const-string/jumbo v8, ""

    goto/16 :goto_0
.end method

.method private static saveYearDate(Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;)Ljava/lang/String;
    .locals 12
    .param p0, "result"    # Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    .prologue
    .line 211
    const-string/jumbo v8, "ScheduleDatetimeDbSaveHelper"

    const-string/jumbo v9, "saveYearDate()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz p0, :cond_6

    .line 213
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getYearDayList()Ljava/util/List;

    move-result-object v7

    .line 214
    .local v7, "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v4

    .line 215
    .local v4, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 216
    :cond_0
    const-string/jumbo v8, ""

    .line 243
    .end local v4    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v7    # "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    :goto_0
    return-object v8

    .line 218
    .restart local v4    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .restart local v7    # "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 219
    :cond_2
    const-string/jumbo v8, ""

    goto :goto_0

    .line 222
    :cond_3
    new-instance v5, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 223
    .local v5, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v8, "datetime"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    .line 224
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 225
    .local v1, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "repeat_type"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v8, "multiple"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->isMultiple()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    .line 228
    .local v6, "yearDay":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    const-string/jumbo v9, "day_of_year"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 229
    .local v0, "monthDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "month"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->getMonth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 230
    const-string/jumbo v9, "day"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->getMonthDay()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_1

    .line 232
    .end local v0    # "monthDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "yearDay":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 233
    .local v3, "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const-string/jumbo v9, "time"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 234
    .local v2, "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "hour"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 235
    const-string/jumbo v9, "minute"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    goto :goto_2

    .line 239
    .end local v2    # "timeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "timeItem":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_5
    invoke-static {p0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->saveMultiTimeInfo(Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 241
    invoke-static {v5}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 243
    .end local v1    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v5    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v7    # "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    :cond_6
    const-string/jumbo v8, ""

    goto/16 :goto_0
.end method
