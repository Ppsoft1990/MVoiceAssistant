.class public Laui;
.super Ljava/lang/Object;
.source "ScheduleBusinessResultHanderHelper.java"


# direct methods
.method public static a(ILauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 8
    .param p0, "entryType"    # I
    .param p1, "scheduleFilterResult"    # Lauk;
    .param p2, "scheduleBusinessHandler"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .param p3, "handleContext"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    const-string/jumbo v4, "ScheduleBusinessResultHanderHelper"

    const-string/jumbo v5, "----------------------->>> showCreateUI()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Lauk;->a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    .line 59
    .local v2, "reminderItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {v2}, Laun;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 60
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRawtext()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "rawText":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 66
    .local v3, "time":I
    if-eqz v1, :cond_0

    const-string/jumbo v4, "\u660e\u5929"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ltz v3, :cond_0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 68
    invoke-virtual {p2, v7}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->setSecondConfirmFlag(Z)V

    .line 69
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v4

    invoke-virtual {v4, v6}, Lauy;->a(Z)V

    .line 70
    invoke-static {v2, p1, p2, p3}, Laui;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p2, v6}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->setSecondConfirmFlag(Z)V

    .line 73
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v4

    invoke-virtual {v4, v7}, Lauy;->a(Z)V

    .line 74
    invoke-static {p0, v2, p1, p2, p3}, Laui;->a(ILcom/iflytek/viafly/schedule/framework/entities/Schedule;Lauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V

    goto :goto_0
.end method

.method public static a(ILcom/iflytek/viafly/schedule/framework/entities/Schedule;Lauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 18
    .param p0, "entryType"    # I
    .param p1, "reminderItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "scheduleFilterResult"    # Lauk;
    .param p3, "scheduleBusinessHandler"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .param p4, "handleContext"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 128
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 130
    const/16 v15, 0xd

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/16 v15, 0xe

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 134
    const-string/jumbo v11, ""

    .line 137
    .local v11, "scheduleDate":Ljava/lang/String;
    const/4 v7, 0x0

    .line 138
    .local v7, "isRepeat":Z
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    .line 139
    .local v6, "dateTimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v15

    sget-object v16, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 140
    const/4 v7, 0x0

    .line 145
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 148
    .local v5, "context":Landroid/content/Context;
    if-eqz v7, :cond_4

    .line 149
    invoke-static {v5, v6}, Lawh;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v11

    .line 159
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v5, v0, v1}, Lbaa;->g(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "scheduleTime":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 164
    .local v14, "tip":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Laui;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Landroid/content/Context;)Z

    move-result v8

    .line 165
    .local v8, "isSuccess":Z
    if-eqz v8, :cond_7

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAitalkContentLose()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 167
    const-string/jumbo v14, "\u63d0\u9192\u65b0\u5efa\u6210\u529f\uff0c\u5e76\u4e3a\u60a8\u4fdd\u5b58\u63d0\u9192\u5f55\u97f3\uff0c\u60a8\u4e5f\u53ef\u4ee5\u624b\u52a8\u8f93\u5165\u63d0\u9192\u5185\u5bb9"

    .line 172
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 173
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 174
    invoke-static {v5}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v15

    const-string/jumbo v16, "N_MIC_REMIND"

    invoke-virtual/range {v15 .. v16}, Lalq;->a(Ljava/lang/String;)V

    .line 175
    invoke-static {v5}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v15

    const-string/jumbo v16, "MIC_REMIND"

    invoke-virtual/range {v15 .. v16}, Lalq;->a(Ljava/lang/String;)V

    .line 181
    :cond_1
    :goto_3
    const/16 v15, 0x27

    move/from16 v0, p0

    if-ne v0, v15, :cond_8

    .line 182
    invoke-static {v14}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "speechText":Ljava/lang/String;
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1, v2}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 193
    :goto_4
    if-eqz v8, :cond_2

    .line 195
    new-instance v10, Laur;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v10, v0, v1, v2}, Laur;-><init>(Lcom/iflytek/framework/business/entities/HandleContext;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 196
    .local v10, "remindview":Laur;
    invoke-static {v10}, Laun;->a(Laur;)V

    .line 197
    const-wide/16 v16, 0x258

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 199
    .end local v10    # "remindview":Laur;
    :cond_2
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 200
    return-void

    .line 142
    .end local v5    # "context":Landroid/content/Context;
    .end local v8    # "isSuccess":Z
    .end local v12    # "scheduleTime":Ljava/lang/String;
    .end local v13    # "speechText":Ljava/lang/String;
    .end local v14    # "tip":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 152
    .restart local v5    # "context":Landroid/content/Context;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateRawtext()Ljava/lang/String;

    move-result-object v11

    .line 153
    if-eqz v11, :cond_5

    const-string/jumbo v15, ""

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 154
    :cond_5
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v5, v0, v1}, Lbaa;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 169
    .restart local v8    # "isSuccess":Z
    .restart local v12    # "scheduleTime":Ljava/lang/String;
    .restart local v14    # "tip":Ljava/lang/String;
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u63d0\u9192\u65b0\u5efa\u6210\u529f\uff0c"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 170
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Lpz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\u63d0\u9192\u60a8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 178
    :cond_7
    const v15, 0x7f0c01c7

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 186
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v9

    .line 187
    .local v9, "mAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-static {v14}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 188
    const-wide/16 v16, 0x12c

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v9, v1, v2}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 189
    invoke-static {v14}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 191
    .restart local v13    # "speechText":Ljava/lang/String;
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1, v2}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_4
.end method

.method public static a(Lauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 10
    .param p0, "scheduleFilterResult"    # Lauk;
    .param p1, "scheduleBusinessHandler"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .param p2, "handleContext"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    .line 339
    const-string/jumbo v4, ""

    .line 340
    .local v4, "tip":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 342
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Laun;->g()I

    move-result v7

    if-nez v7, :cond_1

    .line 343
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->setNeedChoose(Z)V

    .line 344
    const v7, 0x7f0c0359

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-virtual {p1, p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 347
    .local v0, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 348
    const-wide/16 v8, 0x12c

    invoke-virtual {p1, v0, v8, v9}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 349
    invoke-static {v4}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "speakText":Ljava/lang/String;
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v3, v7, v8, v9}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 352
    invoke-static {}, Laun;->e()Lauq;

    move-result-object v6

    .line 353
    .local v6, "widgetRemindConfirmView":Lauq;
    if-eqz v6, :cond_0

    .line 354
    const-wide/16 v8, 0x258

    invoke-virtual {p1, v6, v8, v9}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 356
    :cond_0
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const v8, 0x7f0c03ad

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const v8, 0x7f0c03ae

    .line 357
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 358
    .local v5, "tmpGrammars":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v2, "mSpeechIntent":Landroid/content/Intent;
    const-string/jumbo v7, "engine_type"

    const/16 v8, 0x11

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string/jumbo v7, "web_scene"

    const-string/jumbo v8, "schedule"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string/jumbo v7, "local_scene"

    const-string/jumbo v8, "schedule"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string/jumbo v7, "local_lexicon_item"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-static {}, Laun;->h()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v7

    sget-object v8, Lcom/iflytek/framework/business/speech/InteractionScene;->select_schedule_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v9, "schedule"

    invoke-static {v7, v5, v8, v2, v9}, Laui;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;[Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;Landroid/content/Intent;Ljava/lang/String;)V

    .line 371
    const/4 v7, 0x1

    invoke-static {v7}, Laun;->a(I)V

    .line 394
    .end local v0    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v2    # "mSpeechIntent":Landroid/content/Intent;
    .end local v3    # "speakText":Ljava/lang/String;
    .end local v5    # "tmpGrammars":[Ljava/lang/String;
    .end local v6    # "widgetRemindConfirmView":Lauq;
    :goto_0
    return-void

    .line 374
    :cond_1
    const/4 v7, 0x1

    invoke-static {}, Laun;->g()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 375
    const v7, 0x7f0c035a

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {p1, p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 377
    .restart local v0    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 381
    const-wide/16 v8, 0x12c

    invoke-virtual {p1, v0, v8, v9}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 382
    invoke-static {v4}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .restart local v3    # "speakText":Ljava/lang/String;
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v3, v7, v8, v9}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 385
    invoke-static {}, Laun;->e()Lauq;

    move-result-object v6

    .line 386
    .restart local v6    # "widgetRemindConfirmView":Lauq;
    if-eqz v6, :cond_2

    .line 387
    const-wide/16 v8, 0x258

    invoke-virtual {p1, v6, v8, v9}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 389
    :cond_2
    const/4 v7, 0x0

    invoke-static {v7}, Laun;->a(I)V

    goto :goto_0

    .line 391
    .end local v0    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v3    # "speakText":Ljava/lang/String;
    .end local v6    # "widgetRemindConfirmView":Lauq;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->setSecondConfirmFlag(Z)V

    .line 392
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lauy;->a(Z)V

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 11
    .param p0, "reminderItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p1, "scheduleFilterResult"    # Lauk;
    .param p2, "scheduleBusinessHandler"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .param p3, "handleContext"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    const/4 v10, 0x1

    .line 86
    invoke-virtual {p2, v10}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->setNeedChoose(Z)V

    .line 87
    invoke-virtual {p2, p1}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v5

    .line 88
    .local v5, "widgetViaFlyAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    const-string/jumbo v3, "\u9700\u8981\u786e\u8ba4\u4e00\u4e0b\uff0c\u662f\u4eca\u5929\u8fd8\u662f\u660e\u5929?"

    .line 89
    .local v3, "tip":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 90
    const-wide/16 v6, 0x12c

    invoke-virtual {p2, v5, v6, v7}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 91
    new-instance v1, Lauq;

    invoke-virtual {p3}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getRegizeResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lauq;-><init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 93
    .local v1, "remindConfirmview":Lauq;
    const-wide/16 v6, 0x258

    invoke-virtual {p2, v1, v6, v7}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 94
    invoke-static {v3}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "speechText":Ljava/lang/String;
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v2, v6, v8, v9}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 97
    invoke-static {v1}, Laun;->a(Lauq;)V

    .line 99
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c03ad

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 100
    invoke-virtual {p3}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c03ae

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    .line 102
    .local v4, "tmpGrammars":[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, "mSpeechIntent":Landroid/content/Intent;
    const-string/jumbo v6, "engine_type"

    const/16 v7, 0x11

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string/jumbo v6, "web_scene"

    const-string/jumbo v7, "all"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v6, "local_scene"

    const-string/jumbo v7, "schedule"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v6, "local_lexicon_item"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p2, v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->setSpeechIntent(Landroid/content/Intent;)V

    .line 109
    sget-object v6, Lcom/iflytek/framework/business/speech/InteractionScene;->select_schedule_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    const-string/jumbo v7, "schedule"

    invoke-static {p0, v4, v6, v0, v7}, Laui;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;[Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;Landroid/content/Intent;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;[Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "reminderItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p1, "grammars"    # [Ljava/lang/String;
    .param p2, "intentType"    # Lcom/iflytek/framework/business/speech/InteractionScene;
    .param p3, "speechIntent"    # Landroid/content/Intent;
    .param p4, "focus"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setGrammar([Ljava/lang/String;)V

    .line 116
    invoke-static {p2}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 117
    invoke-static {p3}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setSpeechIntent(Landroid/content/Intent;)V

    .line 118
    invoke-static {p4}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 119
    invoke-static {p0}, Laun;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 120
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Landroid/content/Context;)Z
    .locals 11
    .param p0, "remind"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 207
    const/4 v3, -0x1

    .line 209
    .local v3, "lastModifiedScheduleRingId":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    move v0, v7

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_RINGTYPE"

    sget-object v10, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "lastModifiedScheduleRingtypeStr":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_PATH"

    invoke-virtual {v8, v9}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "lastModifiedSchedulePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_NAME"

    invoke-virtual {v8, v9}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "lastModefiedScheduleName":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RECORD_SUBTYPE"

    invoke-virtual {v8, v9}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "lastRecordSubType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 266
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 267
    const-string/jumbo v8, ""

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v8, "android_asset://ringtone/notice.mp3"

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 269
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v9, "\u55d2\u94c3\u58f0"

    invoke-virtual {p0, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 323
    :goto_1
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v8

    invoke-interface {v8, p0}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->speechAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    .line 324
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_6

    .line 325
    invoke-static {p1}, Laun;->a(Landroid/content/Context;)V

    .line 326
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v8

    invoke-virtual {v8, p1}, Lavs;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v8

    invoke-virtual {v8, p1, v7}, Lavs;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 271
    .end local v0    # "isSuccess":Z
    :cond_2
    invoke-static {v4}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    .line 272
    .local v6, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v8, v6, :cond_3

    .line 273
    const-string/jumbo v8, ""

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v8, "android_asset://ringtone/notice.mp3"

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 275
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v9, "\u55d2\u94c3\u58f0"

    invoke-virtual {p0, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 320
    :goto_2
    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto :goto_1

    .line 276
    :cond_3
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v8, v6, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v8, "android_asset://ringtone/notice.mp3"

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 280
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v9, "\u55d2\u94c3\u58f0"

    invoke-virtual {p0, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto :goto_2

    .line 281
    :cond_4
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v8, v6, :cond_5

    .line 283
    const-string/jumbo v8, ""

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 285
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v8, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto :goto_2

    .line 287
    :cond_5
    const-string/jumbo v8, ""

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v8, "android_asset://ringtone/notice.mp3"

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 289
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v9, "\u55d2\u94c3\u58f0"

    invoke-virtual {p0, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 290
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_2

    .line 330
    .end local v6    # "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .restart local v0    # "isSuccess":Z
    :cond_6
    const/4 v7, -0x1

    if-ne v7, v3, :cond_0

    .line 331
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method
