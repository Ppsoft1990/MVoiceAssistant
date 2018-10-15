.class public Laur;
.super Ljava/lang/Object;
.source "WidgetRemindView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Laug;

.field private c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/business/entities/HandleContext;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "handleContext"    # Lcom/iflytek/framework/business/entities/HandleContext;
    .param p2, "scheduleBusinessHandler"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .param p3, "scheduleItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Laur;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    .line 33
    .local v0, "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    instance-of v1, v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Laug;

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p3, v2, p2}, Laug;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Landroid/content/Context;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V

    iput-object v1, p0, Laur;->b:Laug;

    .line 36
    :cond_0
    invoke-virtual {p0, p3}, Laur;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 1
    .param p1, "scheduleItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 42
    iget-object v0, p0, Laur;->b:Laug;

    invoke-virtual {v0, p1}, Laug;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 44
    :cond_0
    return-void
.end method

.method public b()Laug;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Laur;->b:Laug;

    return-object v0
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public synthetic getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Laur;->b()Laug;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, "WidgetRemindView"

    return-object v0
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 24

    .prologue
    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 56
    .local v5, "calendar":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 58
    const/16 v18, 0xd

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 59
    const/16 v18, 0xe

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->a:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lbaa;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "remind_date":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lbaa;->g(J)Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "remind_week":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lbaa;->b(J)Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, "remind_time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, "remind_event":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    sget-object v19, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, "recordSubType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 78
    .local v8, "isRepeat":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    .line 79
    .local v6, "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v18

    sget-object v19, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 80
    const/4 v8, 0x0

    .line 85
    :goto_0
    if-eqz v8, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->a:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lawh;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v12

    .line 87
    const-string/jumbo v15, " "

    .line 90
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->a:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lawh;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v17

    .line 91
    .local v17, "topText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->a:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lawh;->c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "bottomText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, "ringType":Ljava/lang/String;
    const/4 v9, 0x0

    .line 96
    .local v9, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .local v10, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v18, "isRepeat"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v18, "tempDate"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v18, "tempWeek"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v18, "tempTime"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v18, "tempContent"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v18, "taskHandler"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v18, "hasAudio"

    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTimeStamp()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lauy;->a(IJ)Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 105
    sget-object v18, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 106
    const-string/jumbo v18, "tempContent"

    const-string/jumbo v19, "\u8d77\u5e8a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_1
    const-string/jumbo v18, "tempRingDesc"

    move-object/from16 v0, p0

    iget-object v0, v0, Laur;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lawe;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v18, "topText"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v18, "bottomText"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v18, "ringType"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v18, "recordSubType"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 120
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v9

    .line 82
    .end local v4    # "bottomText":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "ringType":Ljava/lang/String;
    .end local v17    # "topText":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 113
    .restart local v4    # "bottomText":Ljava/lang/String;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "ringType":Ljava/lang/String;
    .restart local v17    # "topText":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 114
    .local v7, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    const/4 v9, 0x0

    .line 119
    goto :goto_1

    .line 116
    .end local v7    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v7

    .line 117
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const/4 v9, 0x0

    goto :goto_1

    .line 116
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v7

    move-object v9, v10

    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 113
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v7

    move-object v9, v10

    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2
.end method
