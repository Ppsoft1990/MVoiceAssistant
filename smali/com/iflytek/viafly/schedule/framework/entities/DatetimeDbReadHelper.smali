.class public Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;
.super Ljava/lang/Object;
.source "DatetimeDbReadHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScheduleTimeDbReadHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultiple(Lcom/iflytek/yd/util/xml/XmlElement;)Z
    .locals 3
    .param p0, "rootElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v1, 0x0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    const-string/jumbo v2, "multiple"

    invoke-virtual {p0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "typeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    .end local v0    # "typeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return v1
.end method

.method private static getRepeatType(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .locals 2
    .param p0, "rootElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    .line 65
    const-string/jumbo v1, "repeat_type"

    invoke-virtual {p0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "typeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v1

    .line 70
    .end local v0    # "typeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static read(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 7
    .param p0, "rawtext"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v4, "ScheduleTimeDbReadHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read() start | rawtext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 31
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v3

    .line 32
    .local v3, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v3, :cond_6

    .line 33
    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 34
    .local v1, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->getRepeatType(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v2

    .line 35
    .local v2, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v4, v2, :cond_2

    .line 36
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readOnce(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    move-result-object v0

    .line 46
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->getMultiple(Lcom/iflytek/yd/util/xml/XmlElement;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->setMultiple(Z)V

    .line 54
    .end local v1    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .end local v3    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_1
    :goto_1
    const-string/jumbo v4, "ScheduleTimeDbReadHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read() end | DatetimeInfor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v0

    .line 37
    .restart local v1    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v2    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .restart local v3    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_2
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v4, v2, :cond_3

    .line 38
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readEveryday(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_3
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v4, v2, :cond_4

    .line 40
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readWeek(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_4
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v4, v2, :cond_5

    .line 42
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readMonth(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_5
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->year_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v4, v2, :cond_0

    .line 44
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readYear(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    move-result-object v0

    goto :goto_0

    .line 50
    .end local v1    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_6
    const-string/jumbo v4, "ScheduleTimeDbReadHelper"

    const-string/jumbo v5, "-------->> XmlParser.parse() return=null"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static readEveryday(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;
    .locals 10
    .param p0, "rootElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v4, 0x0

    .line 179
    const-string/jumbo v8, "ScheduleTimeDbReadHelper"

    const-string/jumbo v9, "readEveryday()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz p0, :cond_0

    .line 181
    const-string/jumbo v8, "time"

    invoke-virtual {p0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 182
    .local v6, "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 206
    .end local v6    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v4

    .line 185
    .restart local v6    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    invoke-direct {v4}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;-><init>()V

    .line 186
    .local v4, "result":Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;
    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 187
    .local v7, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 188
    .local v5, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_0

    .line 192
    .end local v5    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_2
    const-string/jumbo v8, "multi_time"

    invoke-virtual {p0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "multiTimeNodes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 194
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 195
    .local v1, "multiTimeNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "time"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 196
    .local v3, "multiTimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 197
    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 199
    .restart local v5    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_1
.end method

.method private static readMonth(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
    .locals 15
    .param p0, "rootElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v8, 0x0

    .line 263
    const-string/jumbo v12, "ScheduleTimeDbReadHelper"

    const-string/jumbo v13, "readMonth()"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz p0, :cond_0

    .line 265
    const-string/jumbo v12, "day_of_month"

    invoke-virtual {p0, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 266
    .local v3, "monthDayElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v12, "time"

    invoke-virtual {p0, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 267
    .local v10, "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 301
    .end local v3    # "monthDayElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v8

    .line 271
    .restart local v3    # "monthDayElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v10    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    new-instance v8, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    invoke-direct {v8}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;-><init>()V

    .line 272
    .local v8, "result":Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 273
    .local v2, "monthDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v13, "value"

    invoke-virtual {v2, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v0

    .line 275
    .local v0, "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :try_start_0
    new-instance v13, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v8, v13}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->addMonthDay(Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v0    # "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "monthDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    invoke-static {v10}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 282
    .local v11, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 283
    .local v9, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_1

    .line 287
    .end local v9    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_3
    const-string/jumbo v12, "multi_time"

    invoke-virtual {p0, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 288
    .local v6, "multiTimeNodes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 289
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 290
    .local v5, "multiTimeNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v12, "time"

    invoke-virtual {v5, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 291
    .local v7, "multiTimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 292
    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 293
    .local v4, "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 294
    .restart local v9    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_2
.end method

.method private static readOnce(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .locals 20
    .param p0, "rootElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 89
    const-string/jumbo v1, "ScheduleTimeDbReadHelper"

    const-string/jumbo v19, "readOnce()"

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p0, :cond_4

    .line 91
    const-string/jumbo v1, "once_date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 92
    .local v16, "onceDateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 93
    :cond_0
    const/16 v17, 0x0

    .line 146
    .end local v16    # "onceDateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    :goto_0
    return-object v17

    .line 95
    .restart local v16    # "onceDateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_2
    new-instance v17, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-direct/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;-><init>()V

    .line 96
    .local v17, "result":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 97
    .local v15, "onceDateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "year"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v18

    .line 98
    .local v18, "yearAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "month"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v11

    .line 99
    .local v11, "monthAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "day"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v7

    .line 100
    .local v7, "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "hour"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v9

    .line 101
    .local v9, "hourAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "minute"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v10

    .line 103
    .local v10, "minuteAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "year":I
    invoke-virtual {v11}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 105
    .local v3, "month":I
    invoke-virtual {v7}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 106
    .local v4, "day":I
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 107
    .local v5, "hour":I
    invoke-virtual {v10}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 109
    .local v6, "minute":I
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    .end local v2    # "year":I
    .end local v3    # "month":I
    .end local v4    # "day":I
    .end local v5    # "hour":I
    .end local v6    # "minute":I
    :catch_0
    move-exception v8

    .line 111
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v7    # "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "hourAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v10    # "minuteAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v11    # "monthAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v15    # "onceDateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v18    # "yearAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :cond_3
    const-string/jumbo v1, "multi_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 117
    .local v14, "multiTimeRootlist":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v14, :cond_1

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 119
    .local v13, "multiTimeRoot":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v13, :cond_1

    .line 120
    const-string/jumbo v1, "once_date"

    invoke-virtual {v13, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 121
    .local v12, "multiTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v12, :cond_1

    .line 122
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 123
    .restart local v15    # "onceDateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "year"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v18

    .line 124
    .restart local v18    # "yearAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "month"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v11

    .line 125
    .restart local v11    # "monthAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "day"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v7

    .line 126
    .restart local v7    # "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "hour"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v9

    .line 127
    .restart local v9    # "hourAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v1, "minute"

    invoke-virtual {v15, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v10

    .line 129
    .restart local v10    # "minuteAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 130
    .restart local v2    # "year":I
    invoke-virtual {v11}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 131
    .restart local v3    # "month":I
    invoke-virtual {v7}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 132
    .restart local v4    # "day":I
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 133
    .restart local v5    # "hour":I
    invoke-virtual {v10}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 135
    .restart local v6    # "minute":I
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 136
    .end local v2    # "year":I
    .end local v3    # "month":I
    .end local v4    # "day":I
    .end local v5    # "hour":I
    .end local v6    # "minute":I
    :catch_1
    move-exception v8

    .line 137
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 146
    .end local v7    # "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "hourAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v10    # "minuteAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v11    # "monthAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v12    # "multiTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "multiTimeRoot":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v14    # "multiTimeRootlist":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v15    # "onceDateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v16    # "onceDateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "result":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .end local v18    # "yearAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private static readTimeValue(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Time;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v5, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 159
    .local v6, "xmlElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "hour"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v2

    .line 160
    .local v2, "hourAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v8, "minute"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v4

    .line 162
    .local v4, "minuteAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :try_start_0
    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, "hour":I
    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 164
    .local v3, "minute":I
    new-instance v8, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-direct {v8, v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1    # "hour":I
    .end local v3    # "minute":I
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "hourAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v4    # "minuteAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v6    # "xmlElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v5
.end method

.method private static readWeek(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    .locals 15
    .param p0, "rootElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v5, 0x0

    .line 215
    const-string/jumbo v12, "ScheduleTimeDbReadHelper"

    const-string/jumbo v13, "readWeek()"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p0, :cond_0

    .line 217
    const-string/jumbo v12, "week"

    invoke-virtual {p0, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 218
    .local v11, "weekElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v12, "time"

    invoke-virtual {p0, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 219
    .local v7, "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 254
    .end local v7    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "weekElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v5

    .line 223
    .restart local v7    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v11    # "weekElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    invoke-direct {v5}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;-><init>()V

    .line 224
    .local v5, "result":Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 225
    .local v10, "weekElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v9

    .line 227
    .local v9, "weekAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :try_start_0
    new-instance v13, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v5, v13}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "weekAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v10    # "weekElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 234
    .local v8, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 235
    .local v6, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_1

    .line 239
    .end local v6    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_3
    const-string/jumbo v12, "multi_time"

    invoke-virtual {p0, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 240
    .local v3, "multiTimeNodes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 241
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 242
    .local v2, "multiTimeNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v12, "time"

    invoke-virtual {v2, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 243
    .local v4, "multiTimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 244
    invoke-static {v4}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 245
    .local v1, "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 246
    .restart local v6    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_2
.end method

.method private static readYear(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
    .locals 19
    .param p0, "rootElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 310
    const-string/jumbo v17, "ScheduleTimeDbReadHelper"

    const-string/jumbo v18, "readYear()"

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz p0, :cond_5

    .line 312
    const-string/jumbo v17, "day_of_year"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 313
    .local v16, "yearDayElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v17, "time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 314
    .local v13, "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_2

    .line 315
    :cond_0
    const/4 v11, 0x0

    .line 351
    .end local v13    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v16    # "yearDayElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    :goto_0
    return-object v11

    .line 318
    .restart local v13    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v16    # "yearDayElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_2
    new-instance v11, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    invoke-direct {v11}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;-><init>()V

    .line 319
    .local v11, "result":Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 320
    .local v15, "yearDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v18, "month"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v5

    .line 321
    .local v5, "monthAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const-string/jumbo v18, "day"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v2

    .line 323
    .local v2, "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :try_start_0
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 324
    .local v4, "month":I
    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 325
    .local v6, "monthday":I
    new-instance v18, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v6}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->addYearDay(Lcom/iflytek/viafly/schedule/framework/entities/YearDate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    .end local v4    # "month":I
    .end local v6    # "monthday":I
    :catch_0
    move-exception v3

    .line 327
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 331
    .end local v2    # "dayAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "monthAttribute":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v15    # "yearDayElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 332
    .local v14, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 333
    .local v12, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_2

    .line 337
    .end local v12    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_4
    const-string/jumbo v17, "multi_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 338
    .local v9, "multiTimeNodes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 339
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 340
    .local v8, "multiTimeNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v17, "time"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 341
    .local v10, "multiTimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 342
    invoke-static {v10}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->readTimeValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 343
    .local v7, "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 344
    .restart local v12    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_3

    .line 351
    .end local v7    # "multiTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v8    # "multiTimeNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v9    # "multiTimeNodes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "multiTimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "result":Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
    .end local v12    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v13    # "timeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v14    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    .end local v16    # "yearDayElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0
.end method
