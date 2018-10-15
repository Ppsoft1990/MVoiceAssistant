.class public Lawb;
.super Ljava/lang/Object;
.source "BusinessScheduleHelper.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p2, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p2, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v0, -0x1

    .line 70
    :goto_0
    return v0

    .line 59
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 60
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 61
    invoke-virtual {v1, p3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 63
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne p1, v2, :cond_2

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 68
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    .line 69
    .local v0, "ret":I
    const-string/jumbo v2, "BusinessScheduleHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createSchedule() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", business="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", datetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0    # "ret":I
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne p1, v2, :cond_1

    .line 66
    const v2, 0x7f0c01c3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p2, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "adId"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v0, -0x1

    .line 103
    :goto_0
    return v0

    .line 87
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 88
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 90
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v1, v2, p5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 92
    :cond_1
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 93
    invoke-virtual {v1, p3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 95
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne p1, v2, :cond_3

    .line 96
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_NEWS_SCHEDULE_CREATED_FROM_SOHUNEWS:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 101
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    .line 102
    .local v0, "ret":I
    const-string/jumbo v2, "BusinessScheduleHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createSchedule() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", business="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", datetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0    # "ret":I
    :cond_3
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne p1, v2, :cond_2

    .line 99
    const v2, 0x7f0c01c3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p2, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "isOpen"    # Z
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v0, -0x1

    .line 207
    :goto_0
    return v0

    .line 191
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 192
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 193
    invoke-virtual {v1, p3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 195
    if-eqz p4, :cond_2

    .line 196
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 200
    :goto_1
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne p1, v2, :cond_3

    .line 201
    const v2, 0x7f0c01c3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 205
    :cond_1
    :goto_2
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    .line 206
    .local v0, "ret":I
    const-string/jumbo v2, "BusinessScheduleHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createSchedule() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", business="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", datetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v0    # "ret":I
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    goto :goto_1

    .line 202
    :cond_3
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne p1, v2, :cond_1

    .line 203
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_NEWS_SCHEDULE_CREATED_FROM_SOHUNEWS:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushSchedule"    # Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    .prologue
    const/16 v10, 0x1e

    const/4 v4, -0x1

    .line 107
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v4

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getScheduleTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 113
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 115
    .local v5, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getScheduleTitle()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "title":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_2

    .line 117
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 119
    :cond_2
    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getScheduleTypeStr()Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "scheduleTypeStr":Ljava/lang/String;
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->value()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 124
    sget-object v9, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 125
    const-string/jumbo v9, "android_asset://ringtone/morning.mp3"

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 165
    :goto_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getDateTime()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 167
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 168
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getPushPicDesc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 169
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_PIC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getPushPicUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 170
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v9

    invoke-interface {v9, v5}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v4

    .line 173
    .local v4, "ret":I
    const-string/jumbo v9, "BusinessScheduleHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createPushSchedule() ret="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    .end local v4    # "ret":I
    :cond_3
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 129
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->isSlient()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 130
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_SILIENT:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v10, "IS_SLIENT"

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 132
    sget-object v9, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 133
    const-string/jumbo v9, "android_asset://ringtone/notice.mp3"

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 134
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v10, "\u55d2\u94c3\u58f0"

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_4
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_RINGTYPE"

    invoke-virtual {v9, v10}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "lastModifiedScheduleRingtypeStr":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_PATH"

    invoke-virtual {v9, v10}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "lastModifiedSchedulePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_NAME"

    invoke-virtual {v9, v10}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "lastModefiedScheduleName":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RECORD_SUBTYPE"

    invoke-virtual {v9, v10}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "lastRecordSubType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 142
    sget-object v9, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 143
    const-string/jumbo v9, "android_asset://ringtone/notice.mp3"

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 144
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v10, "\u55d2\u94c3\u58f0"

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :cond_5
    invoke-static {v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    .line 147
    .local v6, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v9, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v9, v6, :cond_7

    .line 148
    const-string/jumbo v9, "android_asset://ringtone/notice.mp3"

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 149
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v10, "\u55d2\u94c3\u58f0"

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 161
    :cond_6
    :goto_2
    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_1

    .line 150
    :cond_7
    sget-object v9, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v9, v6, :cond_8

    .line 151
    const-string/jumbo v9, "android_asset://ringtone/notice.mp3"

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 152
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v10, "\u55d2\u94c3\u58f0"

    invoke-virtual {v5, v9, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto :goto_2

    .line 153
    :cond_8
    sget-object v9, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v9, v6, :cond_9

    .line 154
    invoke-virtual {v5, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 155
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v5, v9, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    :cond_9
    sget-object v9, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v9, v6, :cond_6

    .line 157
    invoke-virtual {v5, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 158
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v5, v9, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 159
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v5, v9, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleID"    # I

    .prologue
    .line 225
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedules([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleID"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 235
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 236
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v1

    if-ne v1, p2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const-string/jumbo v1, "BusinessScheduleHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchSchedule(), id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->switchSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "autoToSubSchedule"    # Z

    .prologue
    .line 249
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_SCHEDULE_EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 254
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "BusinessScheduleHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nothing available to handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
