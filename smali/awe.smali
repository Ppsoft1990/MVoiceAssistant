.class public Lawe;
.super Ljava/lang/Object;
.source "ScheduleHelper.java"


# direct methods
.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 2
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string/jumbo v0, ""

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 107
    const-string/jumbo v0, "\u5929\u6c14\u9884\u62a5\u53eb\u4f60\u8d77\u5e8a"

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/util/List;[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;
    .locals 7
    .param p1, "business"    # [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;[",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {p0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const/4 v1, 0x0

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-nez v3, :cond_3

    :cond_2
    move-object v1, p0

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 74
    .local v2, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    array-length v5, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v0, p1, v3

    .line 75
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 76
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v5, 0x0

    .line 33
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 34
    :cond_0
    const-string/jumbo v4, "ScheduleHelper"

    const-string/jumbo v5, "registerSchedule(), scheduleList=null -> return"

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    return-void

    .line 38
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 39
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 40
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 41
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 43
    .local v2, "current":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 44
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_4

    .line 48
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 52
    invoke-static {p0}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v5

    invoke-virtual {v5, v1}, Lawa;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 53
    invoke-static {p0}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v5

    invoke-virtual {v5, v1}, Lawa;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 54
    const-string/jumbo v5, "ScheduleHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerSchedule(), item="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 84
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_DEFAULT_WEATHER_SCHEDULE_ID"

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "defaultWeatherScheduleId":I
    if-eq v5, v0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    .line 87
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 93
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    :goto_0
    return v2

    .line 90
    .restart local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 7
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    const-string/jumbo v5, ""

    .line 152
    :goto_0
    return-object v5

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    .line 123
    .local v3, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 124
    const-string/jumbo v5, "\u5929\u6c14\u9884\u62a5"

    goto :goto_0

    .line 126
    :cond_1
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_2

    .line 127
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 128
    :cond_2
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_3

    .line 129
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 130
    :cond_3
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_4

    .line 131
    const-string/jumbo v5, "Reminder"

    goto :goto_0

    .line 132
    :cond_4
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_5

    .line 133
    const-string/jumbo v5, "\u6bcf\u65e5\u8981\u95fb"

    goto :goto_0

    .line 134
    :cond_5
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_6

    .line 135
    const-string/jumbo v5, "\u5929\u6c14\u9884\u62a5"

    goto :goto_0

    .line 136
    :cond_6
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_7

    .line 137
    const-string/jumbo v5, "Reminder"

    goto :goto_0

    .line 138
    :cond_7
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_8

    .line 139
    const-string/jumbo v5, "Reminder"

    goto :goto_0

    .line 140
    :cond_8
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v3, :cond_a

    .line 141
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    .line 142
    .local v0, "personRingtoneId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v1

    .line 143
    .local v1, "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v1, :cond_a

    .line 144
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRoleName()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "roleName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "wording":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 149
    :cond_9
    const-string/jumbo v5, "\u4e2a\u6027\u95f9\u94c3"

    goto/16 :goto_0

    .line 152
    .end local v0    # "personRingtoneId":I
    .end local v1    # "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .end local v2    # "roleName":Ljava/lang/String;
    .end local v4    # "wording":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, ""

    goto/16 :goto_0
.end method
