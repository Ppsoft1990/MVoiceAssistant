.class public Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;
.super Ljava/lang/Object;
.source "DatetimeRecognizeFilter.java"


# static fields
.field private static final REG_EVERYDAY:Ljava/lang/String; = "^everyday$"

.field private static final REG_MONTH_SINGLE:Ljava/lang/String; = "^m[1-9]$|^m[1-2][0-9]$|^m3[0-1]$"

.field private static final REG_ONCE:Ljava/lang/String; = "^once$"

.field private static final REG_WEEKS_SEPERATE:Ljava/lang/String; = "^w[1-7],(w[1-7],)*w[1-7]$"

.field private static final REG_WEEK_RANGE:Ljava/lang/String; = "^w[1-7]$|^w[1-7]-w[1-7]$"

.field private static final REG_WEEK_SINGLE:Ljava/lang/String; = "^w[1-7]$"

.field private static final TAG:Ljava/lang/String; = "ScheduleDatetimeRecognizeFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterEveryday(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 4
    .param p0, "datetime"    # J

    .prologue
    .line 164
    const-string/jumbo v1, "ScheduleDatetimeRecognizeFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filterEveryday() | dateTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 174
    .local v0, "weeks":[I
    invoke-static {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterWeek([IJ)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    .line 175
    invoke-static {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterWeek([IJ)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    move-result-object v1

    return-object v1

    .line 173
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static filterMonthDate([IJ)Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
    .locals 9
    .param p0, "monthDays"    # [I
    .param p1, "datetime"    # J

    .prologue
    .line 205
    const-string/jumbo v4, "ScheduleDatetimeRecognizeFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "filterMonth()| monthDays="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", datetime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 207
    :cond_0
    const/4 v2, 0x0

    .line 219
    :goto_0
    return-object v2

    .line 209
    :cond_1
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    invoke-direct {v2}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;-><init>()V

    .line 210
    .local v2, "result":Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 211
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 213
    array-length v5, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget v1, p0, v4

    .line 214
    .local v1, "monthDay":I
    new-instance v6, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->addMonthDay(Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;)Z

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    .end local v1    # "monthDay":I
    :cond_2
    new-instance v3, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 217
    .local v3, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_0
.end method

.method public static filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 8
    .param p0, "datetime"    # J

    .prologue
    .line 139
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    .line 140
    const/4 v7, 0x0

    .line 154
    :goto_0
    return-object v7

    .line 142
    :cond_0
    const-string/jumbo v1, "ScheduleDatetimeRecognizeFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filterOnce() | datetime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v7, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-direct {v7}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;-><init>()V

    .line 145
    .local v7, "result":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 146
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 149
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    .line 150
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    .line 151
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    .line 152
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    .line 153
    .local v0, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v7, v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    goto :goto_0
.end method

.method public static filterRawtext(Ljava/lang/String;J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 7
    .param p0, "repeatRawtext"    # Ljava/lang/String;
    .param p1, "datetime"    # J

    .prologue
    .line 40
    const-string/jumbo v3, "ScheduleDatetimeRecognizeFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "filterRawtext() start | repeatRawtext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", datetime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "result":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "^once$"

    .line 44
    invoke-static {p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    :cond_0
    invoke-static {p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    .line 64
    :goto_0
    const-string/jumbo v3, "ScheduleDatetimeRecognizeFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "filterRawtext() end | DatetimeInfor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v1

    .line 46
    :cond_1
    const-string/jumbo v3, "^everyday$"

    invoke-static {p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-static {p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterEveryday(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v3, "^w[1-7]$"

    invoke-static {p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "^w[1-7]$|^w[1-7]-w[1-7]$"

    .line 49
    invoke-static {p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "^w[1-7],(w[1-7],)*w[1-7]$"

    .line 50
    invoke-static {p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    :cond_3
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->splitWeekRawtext(Ljava/lang/String;)[I

    move-result-object v2

    .line 52
    .local v2, "weeks":[I
    invoke-static {v2, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterWeek([IJ)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    move-result-object v1

    .line 53
    goto :goto_0

    .end local v2    # "weeks":[I
    :cond_4
    const-string/jumbo v3, "^m[1-9]$|^m[1-2][0-9]$|^m3[0-1]$"

    invoke-static {p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 54
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->splitMonthDayRawtext(Ljava/lang/String;)[I

    move-result-object v0

    .line 55
    .local v0, "monthDays":[I
    invoke-static {v0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterMonthDate([IJ)Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    move-result-object v1

    .line 56
    goto :goto_0

    .line 60
    .end local v0    # "monthDays":[I
    :cond_5
    invoke-static {p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    goto :goto_0
.end method

.method public static filterWeek([IJ)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    .locals 11
    .param p0, "weeks"    # [I
    .param p1, "datetime"    # J

    .prologue
    const/4 v5, 0x0

    .line 179
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    .line 180
    :cond_0
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 182
    :cond_1
    const-string/jumbo v4, ""

    .line 183
    .local v4, "weekShow":Ljava/lang/String;
    array-length v7, p0

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget v3, p0, v6

    .line 184
    .local v3, "week":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 186
    .end local v3    # "week":I
    :cond_2
    const-string/jumbo v6, "ScheduleDatetimeRecognizeFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "filterWeek()| weeks="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", datetime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v8, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    invoke-direct {v1}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;-><init>()V

    .line 188
    .local v1, "result":Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 189
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 191
    array-length v6, p0

    :goto_2
    if-ge v5, v6, :cond_3

    aget v3, p0, v5

    .line 192
    .restart local v3    # "week":I
    new-instance v7, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 191
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 194
    .end local v3    # "week":I
    :cond_3
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 195
    .local v2, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto/16 :goto_0
.end method

.method private static filterYearDate(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 8
    .param p0, "datetime"    # J

    .prologue
    .line 223
    const-string/jumbo v4, "ScheduleDatetimeRecognizeFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "filterYearDay()| datetime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, p0, p1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 237
    :goto_0
    return-object v1

    .line 228
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    invoke-direct {v1}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;-><init>()V

    .line 229
    .local v1, "result":Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 230
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 232
    new-instance v3, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;-><init>(II)V

    .line 233
    .local v3, "yearDate":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->addYearDay(Lcom/iflytek/viafly/schedule/framework/entities/YearDate;)Z

    .line 234
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 235
    .local v2, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_0
.end method

.method private static getTagRightNum(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "rawtext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, "ret":Z
    if-eqz p1, :cond_0

    .line 250
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 251
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 252
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    const/4 v3, 0x1

    .line 259
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    const-string/jumbo v4, "ScheduleDatetimeRecognizeFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMatch() return="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "| rawRepeatText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",pattern="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v3

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ScheduleDatetimeRecognizeFilter"

    const-string/jumbo v5, "isMatch()"

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static splitMonthDayRawtext(Ljava/lang/String;)[I
    .locals 6
    .param p0, "repeatRawtext"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "result":[I
    :try_start_0
    const-string/jumbo v4, "m"

    invoke-static {v4, p0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->getTagRightNum(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "monthDay":I
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    aput v1, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":[I
    .local v3, "result":[I
    move-object v2, v3

    .line 76
    .end local v1    # "monthDay":I
    .end local v3    # "result":[I
    .restart local v2    # "result":[I
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ScheduleDatetimeRecognizeFilter"

    const-string/jumbo v5, "splitMonthDayRawtext()"

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static splitWeekRawtext(Ljava/lang/String;)[I
    .locals 21
    .param p0, "repeatRawtext"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v11, 0x0

    .line 81
    .local v11, "result":[I
    const-string/jumbo v18, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 83
    :try_start_0
    const-string/jumbo v18, "\\-"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, "weeks":[Ljava/lang/String;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 85
    const-string/jumbo v18, "w"

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-static/range {v18 .. v19}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->getTagRightNum(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "firstDay":I
    const-string/jumbo v18, "w"

    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v18 .. v19}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->getTagRightNum(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 87
    .local v4, "endDay":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v5, v0, :cond_2

    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v5, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v4, v0, :cond_2

    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v4, v0, :cond_2

    .line 88
    if-ge v5, v4, :cond_0

    .line 89
    sub-int v18, v4, v5

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 90
    const/4 v8, 0x0

    .local v8, "index":I
    move v14, v5

    .local v14, "value":I
    move v9, v8

    .end local v8    # "index":I
    .local v9, "index":I
    :goto_0
    if-gt v14, v4, :cond_2

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 91
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    aput v14, v11, v9

    .line 90
    add-int/lit8 v14, v14, 0x1

    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    goto :goto_0

    .line 94
    .end local v9    # "index":I
    .end local v14    # "value":I
    :cond_0
    add-int/lit8 v18, v4, 0x7

    sub-int v18, v18, v5

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 95
    const/4 v8, 0x0

    .restart local v8    # "index":I
    move v14, v5

    .restart local v14    # "value":I
    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    :goto_1
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 96
    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v14, v0, :cond_1

    .line 97
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    aput v14, v11, v9

    .line 95
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    rem-int/lit8 v18, v14, 0x8

    add-int/lit8 v18, v18, 0x1

    aput v18, v11, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 105
    .end local v4    # "endDay":I
    .end local v5    # "firstDay":I
    .end local v8    # "index":I
    .end local v14    # "value":I
    .end local v17    # "weeks":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "ScheduleDatetimeRecognizeFilter"

    const-string/jumbo v19, "splitWeekRawtext()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-object v11

    .line 109
    :cond_3
    const-string/jumbo v18, ","

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 111
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v2, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string/jumbo v18, "\\,"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 113
    .restart local v17    # "weeks":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v13, v17, v18

    .line 114
    .local v13, "str":Ljava/lang/String;
    const-string/jumbo v20, "w"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->getTagRightNum(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 115
    .local v15, "week":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 117
    .end local v13    # "str":Ljava/lang/String;
    .end local v15    # "week":I
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "i":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 120
    .local v10, "integer":Ljava/lang/Integer;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aput v19, v11, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v6

    .line 121
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_5

    .line 123
    .end local v2    # "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    .end local v10    # "integer":Ljava/lang/Integer;
    .end local v17    # "weeks":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 124
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v18, "ScheduleDatetimeRecognizeFilter"

    const-string/jumbo v19, "splitWeekRawtext()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 129
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    const-string/jumbo v18, "w"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->getTagRightNum(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 130
    .local v16, "weekDay":I
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v12, v0, [I

    const/16 v18, 0x0

    aput v16, v12, v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v11    # "result":[I
    .local v12, "result":[I
    move-object v11, v12

    .line 133
    .end local v12    # "result":[I
    .restart local v11    # "result":[I
    goto/16 :goto_3

    .line 131
    .end local v16    # "weekDay":I
    :catch_2
    move-exception v3

    .line 132
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v18, "ScheduleDatetimeRecognizeFilter"

    const-string/jumbo v19, "splitWeekRawtext()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method
