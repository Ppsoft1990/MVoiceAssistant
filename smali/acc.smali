.class public Lacc;
.super Lacb;
.source "TelePhoneStartNewInteractionHelper.java"


# direct methods
.method public static a(Lacp;Laau;)V
    .locals 4
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;

    .prologue
    .line 268
    const-string/jumbo v2, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v3, "startCancelCall start"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-nez p0, :cond_0

    .line 270
    const-string/jumbo v2, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v3, "pBusinessHandler is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-interface {p0}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 274
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 279
    :cond_1
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0330

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "text":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Lacc;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 281
    const-wide/16 v2, 0x12c

    invoke-static {p0, v1, v2, v3}, Lacc;->a(Lacp;Ljava/lang/String;J)V

    .line 282
    const-string/jumbo v2, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v3, "startCancelCall end"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lacp;Laau;BLcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 6
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pTextSearchMode"    # B
    .param p3, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p4, "pTargetNumber"    # Ljava/lang/String;
    .param p5, "isTextInputResult"    # Z
    .param p6, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 302
    const-string/jumbo v0, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v1, "startDefaultNumberTask start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-nez p0, :cond_0

    .line 304
    const-string/jumbo v0, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v1, "startDefaultNumberTask: pBusinessHandler is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 307
    :cond_0
    if-nez p3, :cond_1

    .line 308
    const-string/jumbo v0, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v1, "startDefaultNumberTask: pContactSet is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 312
    invoke-static/range {v0 .. v5}, Lacc;->a(Lacp;Laau;BLcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    .line 316
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    .line 323
    :cond_2
    const-string/jumbo v0, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v1, "startDefaultNumberTask end"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lacp;Laau;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/Boolean;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 29
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p3, "pIsTextInputResult"    # Ljava/lang/Boolean;
    .param p4, "pSimcard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 168
    const-string/jumbo v4, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v5, "startCallView start"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez p0, :cond_0

    .line 170
    const-string/jumbo v4, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v5, "pBusinessHandler is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-interface/range {p0 .. p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v15

    .line 179
    .local v15, "context":Landroid/content/Context;
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 180
    .local v17, "firstNumber":Ljava/lang/String;
    const/16 v18, 0x0

    .line 181
    .local v18, "isUnknowContact":Z
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c032b

    invoke-virtual {v15, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 183
    const/16 v18, 0x1

    .line 185
    sget-object v28, Laak;->i:Ljava/util/HashMap;

    .line 186
    .local v28, "yellowPageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->setName(Ljava/lang/String;)V

    .line 198
    .end local v28    # "yellowPageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 199
    .local v2, "answerContent":Ljava/lang/String;
    const/16 v26, 0x0

    .line 200
    .local v26, "ttsContent":Ljava/lang/String;
    const-string/jumbo v27, ""

    .line 201
    .local v27, "ttsContentPre":Ljava/lang/String;
    const/16 v20, 0x0

    .line 204
    .local v20, "nameContent":Ljava/lang/String;
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    invoke-virtual {v4}, Laba;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    move-object/from16 v22, p4

    .line 207
    .local v22, "simCardTmp":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-nez p4, :cond_2

    .line 208
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v22

    .line 210
    :cond_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v15, v0}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v23

    .line 212
    .local v23, "simName":Ljava/lang/String;
    const v4, 0x7f0c0343

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v23, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 216
    .end local v22    # "simCardTmp":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v23    # "simName":Ljava/lang/String;
    :goto_2
    if-eqz v18, :cond_7

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "nameContent":Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 221
    .restart local v20    # "nameContent":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v20}, Lpz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lacc;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 225
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v4, v5}, Lacc;->a(Lacp;Ljava/lang/String;J)V

    .line 228
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit16 v4, v4, 0xfa

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 230
    .local v24, "speekTime":J
    const/4 v3, 0x0

    .line 233
    .local v3, "callView":Lacz;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v4, v5}, Lil;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 237
    :cond_3
    const-wide/16 v4, 0x1f4

    add-long v4, v4, v24

    const-wide/16 v8, 0x12c

    sub-long v6, v4, v8

    .line 239
    .local v6, "progressTime":J
    new-instance v3, Lacz;

    .end local v3    # "callView":Lacz;
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lacz;-><init>(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;JLcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 241
    .restart local v3    # "callView":Lacz;
    const-wide/16 v4, 0x5dc

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lacz;->a(J)V

    .line 242
    const-wide/16 v4, 0x258

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4, v5}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 253
    .end local v6    # "progressTime":J
    :goto_4
    invoke-interface/range {p0 .. p0}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v16

    .line 254
    .local v16, "currentOperationData":Lacf;
    if-eqz v16, :cond_4

    .line 255
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lacf;->a(Lacf$a;)V

    .line 258
    :cond_4
    const-string/jumbo v4, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v5, "startCallView end"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    .end local v2    # "answerContent":Ljava/lang/String;
    .end local v3    # "callView":Lacz;
    .end local v16    # "currentOperationData":Lacf;
    .end local v20    # "nameContent":Ljava/lang/String;
    .end local v24    # "speekTime":J
    .end local v26    # "ttsContent":Ljava/lang/String;
    .end local v27    # "ttsContentPre":Ljava/lang/String;
    .restart local v28    # "yellowPageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Laai;->a()Laai;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Laai;->a(Ljava/lang/String;)Laac;

    move-result-object v19

    .line 190
    .local v19, "markType":Laac;
    if-eqz v19, :cond_1

    .line 191
    invoke-virtual/range {v19 .. v19}, Laac;->b()Ljava/lang/String;

    move-result-object v21

    .line 192
    .local v21, "numType":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 214
    .end local v19    # "markType":Laac;
    .end local v21    # "numType":Ljava/lang/String;
    .end local v28    # "yellowPageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "answerContent":Ljava/lang/String;
    .restart local v20    # "nameContent":Ljava/lang/String;
    .restart local v26    # "ttsContent":Ljava/lang/String;
    .restart local v27    # "ttsContentPre":Ljava/lang/String;
    :cond_6
    const v4, 0x7f0c0342

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 219
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 246
    .restart local v3    # "callView":Lacz;
    .restart local v24    # "speekTime":J
    :cond_8
    new-instance v3, Lacz;

    .end local v3    # "callView":Lacz;
    const-wide/16 v4, 0x258

    sub-long v12, v24, v4

    move-object v9, v3

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lacz;-><init>(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;JLcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 248
    .restart local v3    # "callView":Lacz;
    const-wide/16 v4, 0x258

    sub-long v4, v24, v4

    const-wide/16 v8, 0x5dc

    add-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Lacz;->a(J)V

    .line 249
    const-wide/16 v4, 0x258

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4, v5}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    goto :goto_4
.end method

.method private static a(Lacp;Laau;BLcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)Z
    .locals 22
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pTextSearchMode"    # B
    .param p3, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p4, "pTargetNumber"    # Ljava/lang/String;
    .param p5, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 57
    const-string/jumbo v4, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v6, "showCallContactNumberView start"

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-nez p0, :cond_0

    .line 59
    const-string/jumbo v4, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v6, "showCallContactNumberView: pBusinessHandler is null"

    invoke-static {v4, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v4, 0x0

    .line 119
    :goto_0
    return v4

    .line 62
    :cond_0
    if-nez p3, :cond_1

    .line 63
    const-string/jumbo v4, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v6, "showCallContactNumberView: pContactSet is null"

    invoke-static {v4, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v4, 0x0

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface/range {p0 .. p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v4

    .line 68
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v7

    const-string/jumbo v10, "telephone"

    .line 67
    move-object/from16 v0, p4

    invoke-static {v4, v6, v0, v7, v10}, Lact;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 69
    .local v17, "tip":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 70
    .local v13, "showTip":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 71
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    invoke-virtual {v4}, Laba;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    move-object/from16 v14, p5

    .line 73
    .local v14, "simCardTmp":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-nez p5, :cond_2

    .line 74
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v14

    .line 76
    :cond_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v14}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, "simName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6b63\u5728\u7528"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 80
    .end local v14    # "simCardTmp":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v15    # "simName":Ljava/lang/String;
    :cond_3
    invoke-static/range {v17 .. v17}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 84
    :goto_1
    const-string/jumbo v4, "[r1]"

    const-string/jumbo v6, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "[n2]"

    const-string/jumbo v7, ""

    .line 85
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "[r0]"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 86
    .local v16, "speekContentString":Ljava/lang/String;
    if-nez v16, :cond_6

    const/4 v4, 0x0

    :goto_2
    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 88
    .local v18, "speekTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lacc;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 89
    if-eqz v17, :cond_4

    .line 90
    const-wide/16 v6, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6, v7}, Lacc;->a(Lacp;Ljava/lang/String;J)V

    .line 93
    :cond_4
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v18

    const-wide/16 v20, 0x12c

    sub-long v8, v6, v20

    .line 95
    .local v8, "progressTime":J
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v12, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v5, "numbersWithProfix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v12

    .line 98
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 99
    .local v11, "number":Ljava/lang/String;
    invoke-static {v11}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u56fa\u8bdd`"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 104
    :goto_4
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 82
    .end local v5    # "numbersWithProfix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "progressTime":J
    .end local v11    # "number":Ljava/lang/String;
    .end local v12    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "speekContentString":Ljava/lang/String;
    .end local v18    # "speekTime":J
    :cond_5
    const-string/jumbo v17, ""

    goto :goto_1

    .line 86
    .restart local v16    # "speekContentString":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit16 v4, v4, 0xfa

    goto :goto_2

    .line 102
    .restart local v5    # "numbersWithProfix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "progressTime":J
    .restart local v11    # "number":Ljava/lang/String;
    .restart local v12    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "speekTime":J
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "`"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 107
    .end local v11    # "number":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    .line 108
    .local v3, "phoneListView":Ladd;
    new-instance v3, Ladd;

    .end local v3    # "phoneListView":Ladd;
    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Ladd;-><init>(Lacp;Ljava/util/List;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;JLcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 111
    .restart local v3    # "phoneListView":Ladd;
    const-wide/16 v6, 0x320

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v6, v7}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 113
    invoke-interface/range {p0 .. p0}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v2

    .line 114
    .local v2, "currentOperationData":Lacf;
    if-eqz v2, :cond_9

    .line 115
    invoke-virtual {v2, v3}, Lacf;->a(Lacf$a;)V

    .line 118
    :cond_9
    const-string/jumbo v4, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v6, "showCallContactNumberView end"

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static b(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;)V
    .locals 14
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p2, "pTargetNumber"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string/jumbo v1, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v3, "showLatestCallView start"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p0, :cond_0

    .line 132
    const-string/jumbo v1, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v3, "showLatestCallView: pBusinessHandler is null"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    const-string/jumbo v9, "telephone"

    .line 138
    .local v9, "focus":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 139
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

    .line 140
    .local v5, "callTime":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v6

    .line 141
    .local v6, "isMobile":Z
    new-instance v0, Lacx;

    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, ""

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lacx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 143
    .local v0, "mLatestCallView":Lacx;
    invoke-virtual {v0, v9}, Lacx;->a(Ljava/lang/String;)V

    .line 149
    const-wide/16 v12, 0x12c

    invoke-interface {p0, v0, v12, v13}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 151
    .end local v0    # "mLatestCallView":Lacx;
    .end local v5    # "callTime":Ljava/lang/String;
    .end local v6    # "isMobile":Z
    .end local v9    # "focus":Ljava/lang/String;
    .end local v10    # "ms_time":J
    :cond_1
    const-string/jumbo v1, "TelePhoneStartNewInteractionHelper"

    const-string/jumbo v3, "showLatestCallView end"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
