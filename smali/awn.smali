.class public Lawn;
.super Ljava/lang/Object;
.source "PushScheduleDataManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/viaflyCachePushHotSchedules.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawn;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;
    .locals 6

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, "result":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    sget-object v4, Lawn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    const-string/jumbo v3, "HotScheduleDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAll() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HotScheduleDataManager"

    const-string/jumbo v4, "getAll() error!"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;)Ljava/lang/String;
    .locals 18
    .param p0, "pushSchedule"    # Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    .prologue
    .line 204
    if-nez p0, :cond_0

    .line 205
    const-string/jumbo v13, ""

    .line 258
    :goto_0
    return-object v13

    .line 207
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getDateTime()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    .line 208
    .local v1, "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v1, v14, v15}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getNextTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;J)J

    move-result-wide v4

    .line 210
    .local v4, "nextTriggerTime":J
    const-string/jumbo v9, ""

    .line 211
    .local v9, "time":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isMultiple()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 212
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v13

    sget-object v14, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v13, v14, :cond_5

    move-object v13, v1

    .line 213
    check-cast v13, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v11

    .line 214
    .local v11, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    const/4 v3, 0x0

    .line 215
    .local v3, "n":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 216
    .local v10, "time1":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/4 v14, 0x2

    if-le v3, v14, :cond_4

    .line 217
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 248
    .end local v3    # "n":I
    .end local v10    # "time1":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v11    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_1
    :goto_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v1}, Lawh;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, "repeat":Ljava/lang/String;
    invoke-static {v4, v5}, Lbaa;->g(J)Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, "week":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v13

    sget-object v14, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v13, v14, :cond_8

    const/4 v2, 0x1

    .line 251
    .local v2, "isRepeat":Z
    :goto_3
    if-eqz v2, :cond_2

    .line 252
    const-string/jumbo v12, " "

    .line 254
    :cond_2
    const-string/jumbo v13, "\u4eca\u5929"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "\u660e\u5929"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "\u540e\u5929"

    .line 255
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 256
    const-string/jumbo v12, " "

    .line 258
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 220
    .end local v2    # "isRepeat":Z
    .end local v8    # "repeat":Ljava/lang/String;
    .end local v12    # "week":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v10    # "time1":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .restart local v11    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 221
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v14, 0xb

    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/16 v14, 0xc

    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 223
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v15 .. v17}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    add-int/lit8 v3, v3, 0x1

    .line 225
    goto/16 :goto_1

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "n":I
    .end local v10    # "time1":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v11    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_5
    move-object v13, v1

    .line 227
    check-cast v13, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v7

    .line 228
    .local v7, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    const/4 v3, 0x0

    .line 229
    .restart local v3    # "n":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 230
    .local v6, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    const/4 v14, 0x2

    if-le v3, v14, :cond_6

    .line 231
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 232
    goto/16 :goto_2

    .line 234
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 235
    .restart local v0    # "calendar":Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 236
    const/4 v14, 0x2

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 237
    const/4 v14, 0x5

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 238
    const/16 v14, 0xb

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/16 v14, 0xc

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 240
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v15 .. v17}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 241
    add-int/lit8 v3, v3, 0x1

    .line 242
    goto :goto_4

    .line 245
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "n":I
    .end local v6    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v7    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v4, v5}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 250
    .restart local v8    # "repeat":Ljava/lang/String;
    .restart local v12    # "week":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Lawn$1;

    invoke-direct {v0}, Lawn$1;-><init>()V

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->registerListener(Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;)V

    .line 68
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;)V
    .locals 3
    .param p0, "pushHotScheduleCache"    # Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    sget-object v2, Lawn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HotScheduleDataManager"

    const-string/jumbo v2, "save() error!"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;)V
    .locals 5
    .param p0, "noticeId"    # Ljava/lang/String;
    .param p1, "newDatetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lawn;->a()Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;

    move-result-object v0

    .line 157
    .local v0, "cach":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->getHotSchedules()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->getHotSchedules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    .line 159
    .local v1, "item":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    const-string/jumbo v2, "HotScheduleDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDatetime(), id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", newDatetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setDateTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 165
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setScheduleTitle(Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Lawn;->a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "isUsed"    # Z
    .param p2, "bindScheduleId"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    :cond_2
    invoke-static {}, Lawn;->a()Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;

    move-result-object v0

    .line 135
    .local v0, "cach":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->getHotSchedules()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->getHotSchedules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    .line 137
    .local v1, "item":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {v1, p1, p2}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setUsed(ZLjava/lang/String;)V

    .line 142
    invoke-static {v0}, Lawn;->a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;)V

    goto :goto_0
.end method
