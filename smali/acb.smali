.class public Lacb;
.super Ljava/lang/Object;
.source "StartNewInteractionHelperTemp.java"


# direct methods
.method public static a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .locals 4
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pFilterResult"    # Lcom/iflytek/yd/speech/FilterResult;
    .param p2, "pAnswerText"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-interface {p0, p1}, Lacp;->createWidgetAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 72
    .local v0, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-static {p2}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 73
    const-wide/16 v2, 0x12c

    invoke-interface {p0, v0, v2, v3}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 74
    return-object v0
.end method

.method private static a(Landroid/content/Context;Laau;Z)Ljava/lang/String;
    .locals 10
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFilterResult"    # Laau;
    .param p2, "pIsReceiverCardFlag"    # Z

    .prologue
    const v9, 0x7f0c033d

    const/4 v5, 0x0

    const v8, 0x7f0c035c

    const/4 v6, 0x1

    .line 408
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 409
    :cond_0
    const-string/jumbo v4, "StartNewInteractionHelperTemp"

    const-string/jumbo v5, "MethodName: getSimpleTTSContentinfo : error with illegal params"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v1, 0x0

    .line 448
    :cond_1
    :goto_0
    return-object v1

    .line 414
    :cond_2
    invoke-virtual {p1}, Laau;->getDialogInfo()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "dialogInfo":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 419
    :cond_3
    invoke-static {p1}, Laay;->a(Laau;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 420
    invoke-virtual {p1}, Laau;->getFocus()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "telephone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 421
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    :cond_4
    :goto_1
    if-nez v1, :cond_1

    .line 442
    invoke-virtual {p1}, Laau;->getFocus()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 443
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 422
    :cond_5
    invoke-virtual {p1}, Laau;->getFocus()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "message"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 423
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p1}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 425
    invoke-virtual {p1}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "send"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    .line 426
    invoke-virtual {p1}, Laau;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Laau;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v6

    :goto_2
    if-nez v4, :cond_4

    .line 428
    invoke-virtual {p1}, Laau;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v5

    .line 429
    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "tempContentArray":[Ljava/lang/String;
    array-length v4, v3

    if-le v4, v6, :cond_8

    .line 432
    aget-object v2, v3, v6

    .line 433
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u60a8\u60f3\u628a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u7684\u53f7\u7801\u53d1\u7ed9\u8c01\uff1f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    goto/16 :goto_1

    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tempContentArray":[Ljava/lang/String;
    :cond_7
    move v4, v5

    .line 426
    goto :goto_2

    .line 436
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "tempContentArray":[Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 445
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "tempContentArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static a(Lacp;B)V
    .locals 0
    .param p0, "pResultHandler"    # Lacp;
    .param p1, "pTextSearchMode"    # B

    .prologue
    .line 399
    return-void
.end method

.method public static a(Lacp;Laau;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pNoContactTip"    # Ljava/lang/String;
    .param p3, "pIsSpeak"    # Z

    .prologue
    .line 575
    const-string/jumbo v0, "StartNewInteractionHelperTemp"

    const-string/jumbo v1, "showNoResult start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-nez p0, :cond_0

    .line 577
    const-string/jumbo v0, "StartNewInteractionHelperTemp"

    const-string/jumbo v1, "pResultHandler is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-static {p0, p1, p2}, Lacb;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 581
    if-eqz p3, :cond_1

    .line 582
    const-wide/16 v0, 0x12c

    new-instance v2, Lacb$3;

    invoke-direct {v2, p0, p1}, Lacb$3;-><init>(Lacp;Laau;)V

    invoke-static {p0, p2, v0, v1, v2}, Lacb;->a(Lacp;Ljava/lang/String;JLacs;)V

    .line 590
    :cond_1
    const-string/jumbo v0, "StartNewInteractionHelperTemp"

    const-string/jumbo v1, "showNoResult end"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lacp;Laau;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 6
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p3, "pTip"    # Ljava/lang/String;
    .param p4, "pFocus"    # Ljava/lang/String;
    .param p5, "pTextSearchMode"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lacp;",
            "Laau;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .prologue
    .local p2, "pContactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    const-wide/16 v4, 0x320

    .line 147
    const-string/jumbo v2, "StartNewInteractionHelperTemp"

    const-string/jumbo v3, "startContactSelect start"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-nez p0, :cond_0

    .line 149
    const-string/jumbo v2, "StartNewInteractionHelperTemp"

    const-string/jumbo v3, "startContactSelect: pBusinessHandler is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0, p1, p3, v4, v5}, Lacb;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;J)V

    .line 157
    if-eqz p3, :cond_1

    .line 158
    invoke-static {p0, p3, v4, v5}, Lacb;->a(Lacp;Ljava/lang/String;J)V

    .line 160
    :cond_1
    new-instance v1, Ladb;

    invoke-direct {v1, p0, p2, p4, p5}, Ladb;-><init>(Lacp;Ljava/util/List;Ljava/lang/String;B)V

    .line 161
    .local v1, "listView":Ladb;
    invoke-interface {p0, v1, v4, v5}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 163
    const-string/jumbo v2, "StartNewInteractionHelperTemp"

    const-string/jumbo v3, "startContactSelect end"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lacp;Laau;Z)V
    .locals 6
    .param p0, "pResultHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pFlagRestartReco"    # Z

    .prologue
    const-wide/16 v4, 0x12c

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x0

    .line 526
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 528
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 530
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v2

    .line 531
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v3

    invoke-virtual {v3}, Lqr;->d()Z

    move-result v3

    .line 530
    invoke-static {v2, v3, v1}, Lact;->a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {p0, p1, v0}, Lacb;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 534
    if-eqz p2, :cond_1

    .line 535
    new-instance v2, Lacb$2;

    invoke-direct {v2, p0}, Lacb$2;-><init>(Lacp;)V

    invoke-static {p0, v0, v4, v5, v2}, Lacb;->a(Lacp;Ljava/lang/String;JLacs;)V

    .line 548
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-static {p0, v0, v4, v5}, Lacb;->a(Lacp;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static a(Lacp;Laau;ZZ)V
    .locals 6
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pIsTextInputResult"    # Z
    .param p3, "pIsReceiverCardFlag"    # Z

    .prologue
    .line 287
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    .line 288
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p1, p3}, Lacb;->a(Landroid/content/Context;Laau;Z)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "ttsContent":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {p0, p1, v2}, Lacb;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 296
    .local v0, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->b(Z)V

    .line 299
    :cond_2
    if-nez p2, :cond_0

    .line 300
    const-wide/16 v4, 0x12c

    new-instance v3, Lacb$1;

    invoke-direct {v3, p0, p1}, Lacb$1;-><init>(Lacp;Laau;)V

    invoke-static {p0, v2, v4, v5, v3}, Lacb;->a(Lacp;Ljava/lang/String;JLacs;)V

    goto :goto_0
.end method

.method public static a(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;)V
    .locals 14
    .param p0, "pResultHandler"    # Lacp;
    .param p1, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p2, "pTargetNumber"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string/jumbo v9, "telephone"

    .line 263
    .local v9, "focus":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 264
    .local v10, "ms_time":J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "callTime":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v6

    .line 266
    .local v6, "isMobile":Z
    new-instance v0, Lacx;

    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, ""

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lacx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 268
    .local v0, "mLatestCallView":Lacx;
    invoke-virtual {v0, v9}, Lacx;->a(Ljava/lang/String;)V

    .line 270
    const-wide/16 v12, 0x12c

    invoke-interface {p0, v0, v12, v13}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 272
    .end local v0    # "mLatestCallView":Lacx;
    .end local v5    # "callTime":Ljava/lang/String;
    .end local v6    # "isMobile":Z
    .end local v9    # "focus":Ljava/lang/String;
    .end local v10    # "ms_time":J
    :cond_0
    return-void
.end method

.method public static a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;J)V
    .locals 3
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pFilterResult"    # Lcom/iflytek/yd/speech/FilterResult;
    .param p2, "pAnswerText"    # Ljava/lang/String;
    .param p3, "pTTSDelayTime"    # J

    .prologue
    .line 89
    invoke-interface {p0, p1}, Lacp;->createWidgetAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 90
    .local v0, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-static {p2}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0, v0, p3, p4}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 92
    return-void
.end method

.method public static a(Lacp;Ljava/lang/String;)V
    .locals 1
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pRawText"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-interface {p0, p1}, Lacp;->addWidgetQuestionView(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static a(Lacp;Ljava/lang/String;J)V
    .locals 2
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pTTSText"    # Ljava/lang/String;
    .param p2, "pTTSDelayTime"    # J

    .prologue
    .line 104
    .line 106
    invoke-static {p1}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    invoke-interface {p0, v0, v1, p2, p3}, Lacp;->speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 109
    return-void
.end method

.method public static a(Lacp;Ljava/lang/String;JLacs;)V
    .locals 8
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pTTSText"    # Ljava/lang/String;
    .param p2, "pTTSDelayTime"    # J
    .param p4, "pCallBack"    # Lacs;

    .prologue
    .line 123
    .line 125
    invoke-static {p1}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p4

    .line 123
    invoke-interface/range {v1 .. v6}, Lacp;->speakTtsWithCallBack(Ljava/lang/String;Ljava/util/HashMap;JLacs;)V

    .line 129
    return-void
.end method

.method protected static a()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method
