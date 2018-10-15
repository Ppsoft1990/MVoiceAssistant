.class public Laca;
.super Lacb;
.source "MessageStartNewInteractionHelper.java"


# direct methods
.method private static a(Labx;Lcom/iflytek/base/contacts/entities/ContactItem;Z)V
    .locals 4
    .param p0, "pBusinessHandler"    # Labx;
    .param p1, "pContactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p2, "pIsReceiverCardFlag"    # Z

    .prologue
    .line 375
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "displayLatestSmsView start"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 378
    :cond_0
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "pBusinessHandler is null or pContactItem is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "dialName":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 383
    .local v1, "dialNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    const-string/jumbo v1, "\u672a\u77e5"

    .line 390
    :goto_1
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p2}, Laca;->a(Labx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 393
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "displayLatestSmsView end"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Labx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 14
    .param p0, "pBusinessHandler"    # Labx;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pNumber"    # Ljava/lang/String;
    .param p3, "pIsMuiltNumber"    # Z
    .param p4, "pIsReceiveFlag"    # Z

    .prologue
    .line 523
    const-string/jumbo v4, "MessageStartNewInteractionHelper"

    const-string/jumbo v5, "addLatestSmsView start"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-nez p0, :cond_0

    .line 525
    const-string/jumbo v4, "MessageStartNewInteractionHelper"

    const-string/jumbo v5, "pBusinessHandler is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v3

    .line 530
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 531
    .local v12, "ms_time":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 538
    .local v8, "callTime":Ljava/lang/String;
    new-instance v2, Lacy;

    const-string/jumbo v7, ""

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v10, p3

    invoke-direct/range {v2 .. v10}, Lacy;-><init>(Landroid/content/Context;Labx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 540
    .local v2, "mLatestSmsView":Lacy;
    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Lacy;->a(Ljava/lang/String;)V

    .line 541
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lacy;->a(Z)V

    .line 542
    const-string/jumbo v4, "com.tencent.mm"

    invoke-static {v3, v4}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lacy;->c(Z)V

    .line 543
    const-string/jumbo v4, "com.sina.weibo"

    invoke-static {v3, v4}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lacy;->b(Z)V

    .line 544
    const-string/jumbo v4, "com.qzone"

    invoke-static {v3, v4}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lacy;->e(Z)V

    .line 545
    const-string/jumbo v4, "com.tencent.mm"

    invoke-static {v3, v4}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lacy;->d(Z)V

    .line 547
    invoke-virtual {p0}, Labx;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v11

    check-cast v11, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 548
    .local v11, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 549
    invoke-virtual {v11}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v4

    const-string/jumbo v5, "ContactForwardSendShare"

    new-instance v6, Lzw;

    invoke-direct {v6, v3}, Lzw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 551
    :cond_1
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v2, v4, v5}, Labx;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 553
    const-string/jumbo v4, "MessageStartNewInteractionHelper"

    const-string/jumbo v5, "addLatestSmsView end"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected static a(Lacp;)V
    .locals 4
    .param p0, "pBusinessHandler"    # Lacp;

    .prologue
    .line 626
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "showCnsmsView start"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-nez p0, :cond_0

    .line 628
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "pBusinessHandler is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    .line 632
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ladf;

    invoke-direct {v1, v0}, Ladf;-><init>(Landroid/content/Context;)V

    .line 633
    .local v1, "view":Ladf;
    const-wide/16 v2, 0x1c2

    invoke-interface {p0, v1, v2, v3}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 634
    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const-class v3, Ladf;

    .line 635
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-virtual {v2, v3, v1}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 636
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "showCnsmsView end"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Lacp;Laau;)V
    .locals 6
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;

    .prologue
    .line 483
    const-string/jumbo v3, "MessageStartNewInteractionHelper"

    const-string/jumbo v4, "addCnsmsTipAndView start"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-nez p0, :cond_1

    .line 485
    const-string/jumbo v3, "MessageStartNewInteractionHelper"

    const-string/jumbo v4, "pBusinessHandler is null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    new-instance v1, Lpp;

    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lpp;-><init>(Landroid/content/Context;)V

    .line 491
    .local v1, "speechServiceUtil":Lpp;
    invoke-virtual {v1}, Lpp;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_FLAG_SEND_SMS_AFTER_OPEN_APP"

    .line 496
    invoke-virtual {v3, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 498
    .local v0, "flagSendSmsAfterRebootApp":Z
    invoke-static {}, Laca;->a()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 500
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v5, 0x0

    .line 501
    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 502
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 503
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c006a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "tip":Ljava/lang/String;
    const-wide/16 v4, 0x1c2

    invoke-static {p0, p1, v2, v4, v5}, Laca;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;J)V

    .line 505
    invoke-static {p0}, Laca;->a(Lacp;)V

    .line 507
    .end local v2    # "tip":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "MessageStartNewInteractionHelper"

    const-string/jumbo v4, "addCnsmsTipAndView end"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lacp;Laau;Laci;)V
    .locals 18
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pMessageOperationData"    # Laci;

    .prologue
    .line 193
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v6, "startConfirmSendSmsTask start"

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 195
    :cond_0
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v6, "pResultHandler is null or pMessageOperationData is null"

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual/range {p2 .. p2}, Laci;->t()Lacq;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 201
    invoke-virtual/range {p2 .. p2}, Laci;->t()Lacq;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lacq;->a(Z)V

    .line 204
    :cond_2
    invoke-interface/range {p0 .. p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v3

    .line 205
    .local v3, "pContext":Landroid/content/Context;
    invoke-virtual/range {p2 .. p2}, Laci;->m()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "smsContent":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Laci;->p()Ljava/util/List;

    move-result-object v13

    .line 208
    .local v13, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v4, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 210
    const/4 v2, 0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_4

    .line 211
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v14, "mContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 220
    .local v12, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    .end local v12    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v14    # "mContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 215
    .restart local v12    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v12}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 224
    .end local v12    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_5
    const/4 v2, 0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_6

    .line 225
    const/4 v2, 0x0

    .line 226
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    .line 227
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v3, v6, v2}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v9, Lcom/iflytek/base/contacts/entities/ContactInfo;

    invoke-direct {v9}, Lcom/iflytek/base/contacts/entities/ContactInfo;-><init>()V

    .line 229
    .local v9, "contactInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    .line 230
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    .line 231
    invoke-static {v3, v9}, Laca;->a(Landroid/content/Context;Lcom/iflytek/base/contacts/entities/ContactInfo;)V

    .line 234
    .end local v9    # "contactInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Laci;->r()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 235
    invoke-static {}, Lacw;->a()Ljava/lang/String;

    move-result-object v15

    .line 236
    .local v15, "smssuffix":Ljava/lang/String;
    const-string/jumbo v2, "\n-\u7a7a"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    :cond_7
    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v2

    const-string/jumbo v6, "FD02048"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Labu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v15    # "smssuffix":Ljava/lang/String;
    :cond_8
    invoke-static {}, Laca;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 247
    invoke-virtual/range {p2 .. p2}, Laci;->r()Z

    move-result v2

    .line 248
    invoke-virtual/range {p2 .. p2}, Laci;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v6

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13, v2, v6}, Laca;->a(Lacp;Laau;Ljava/util/List;ZLcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 250
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    .line 251
    .local v10, "context":Landroid/content/Context;
    if-eqz v10, :cond_9

    .line 252
    invoke-static {v10}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v16, 0x320

    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v7, v0, v1}, Lbbp;->a(IIJ)V

    .line 258
    :cond_9
    new-instance v11, Lhv;

    invoke-direct {v11, v3, v4}, Lhv;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 259
    .local v11, "info":Lhv;
    invoke-virtual {v11, v5}, Lhv;->a(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v2

    new-instance v6, Laca$2;

    invoke-direct {v6}, Laca$2;-><init>()V

    invoke-virtual {v2, v3, v11, v6}, Lhp;->a(Landroid/content/Context;Lhv;Lhr;)V

    .line 314
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "info":Lhv;
    :goto_3
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v6, "startConfirmSendSmsTask end"

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    :cond_a
    invoke-virtual/range {p2 .. p2}, Laci;->r()Z

    move-result v2

    .line 279
    invoke-virtual/range {p2 .. p2}, Laci;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v6

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13, v2, v6}, Laca;->a(Lacp;Laau;Ljava/util/List;ZLcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 282
    invoke-static {}, Laba;->a()Laba;

    move-result-object v2

    invoke-virtual {v2}, Laba;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 283
    invoke-static {}, Laop;->a()Laop;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual/range {p2 .. p2}, Laci;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v7

    new-instance v8, Laca$3;

    invoke-direct {v8, v3}, Laca$3;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v2 .. v8}, Laop;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    .line 296
    const/4 v2, 0x0

    invoke-static {v2}, Labb;->c(Z)V

    goto :goto_3

    .line 298
    :cond_b
    invoke-static {}, Laop;->a()Laop;

    move-result-object v2

    const/4 v6, 0x1

    new-instance v7, Laca$4;

    invoke-direct {v7, v3}, Laca$4;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v2 .. v7}, Laop;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    goto :goto_3
.end method

.method public static a(Lacp;Laau;Laci;Z)V
    .locals 6
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pOperationData"    # Laci;
    .param p3, "pIsSpeak"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 331
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "cancelSMSSendtTask start"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-nez p0, :cond_0

    .line 333
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "pResultHandler is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 339
    invoke-interface {p0}, Lacp;->isTTSSpeaking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    invoke-interface {p0}, Lacp;->stopTTSAsync()V

    .line 343
    :cond_1
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0382

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "text":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Laca;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 345
    if-eqz p3, :cond_2

    .line 346
    const-wide/16 v2, 0x12c

    invoke-static {p0, v1, v2, v3}, Laca;->a(Lacp;Ljava/lang/String;J)V

    .line 349
    :cond_2
    invoke-virtual {p2}, Laci;->t()Lacq;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 350
    invoke-virtual {p2}, Laci;->t()Lacq;

    move-result-object v2

    invoke-interface {v2, v4}, Lacq;->a(Z)V

    .line 353
    :cond_3
    invoke-virtual {p2}, Laci;->p()Ljava/util/List;

    move-result-object v0

    .line 354
    .local v0, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_4

    move-object v2, p0

    .line 355
    check-cast v2, Labx;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {p2}, Laci;->r()Z

    move-result v4

    invoke-static {v2, v3, v4}, Laca;->a(Labx;Lcom/iflytek/base/contacts/entities/ContactItem;Z)V

    .line 358
    :cond_4
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lacp;->cacheScenceData(Lacf;)V

    .line 359
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 361
    const-string/jumbo v2, "MessageStartNewInteractionHelper"

    const-string/jumbo v3, "cancelSMSSendtTask end"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static a(Lacp;Laau;Ljava/util/List;ZLcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 11
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p3, "pIsReceiverCardFlag"    # Z
    .param p4, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lacp;",
            "Laau;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;Z",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "pItemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    const v7, 0x7f0c0383

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 423
    const-string/jumbo v5, "MessageStartNewInteractionHelper"

    const-string/jumbo v6, "showSendFinishTip start"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez p0, :cond_0

    .line 425
    const-string/jumbo v5, "MessageStartNewInteractionHelper"

    const-string/jumbo v6, "pBusinessHandler is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local p0    # "pBusinessHandler":Lacp;
    :goto_0
    return-void

    .line 430
    .restart local p0    # "pBusinessHandler":Lacp;
    :cond_0
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    .line 431
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Laca;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "text":Ljava/lang/String;
    :goto_1
    invoke-static {p0, p1, v4}, Laca;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 442
    const-wide/16 v6, 0x12c

    invoke-static {p0, v4, v6, v7}, Laca;->a(Lacp;Ljava/lang/String;J)V

    .line 444
    if-nez p3, :cond_1

    .line 445
    invoke-static {p0, p1}, Laca;->a(Lacp;Laau;)V

    .line 450
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 451
    const-string/jumbo v1, ""

    .line 452
    .local v1, "dialName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 454
    .local v2, "dialNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 455
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v1

    .line 463
    :goto_2
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 464
    const-string/jumbo v2, "\u672a\u77e5"

    .line 468
    :goto_3
    check-cast p0, Labx;

    .end local p0    # "pBusinessHandler":Lacp;
    invoke-static {p0, v1, v2, v8, p3}, Laca;->a(Labx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 471
    .end local v1    # "dialName":Ljava/lang/String;
    .end local v2    # "dialNumber":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "MessageStartNewInteractionHelper"

    const-string/jumbo v6, "showSendFinishTip end"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    .end local v4    # "text":Ljava/lang/String;
    .restart local p0    # "pBusinessHandler":Lacp;
    :cond_3
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    invoke-virtual {v5}, Laba;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 435
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    invoke-virtual {v5, v0, p4}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "simName":Ljava/lang/String;
    const v5, 0x7f0c0384

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 437
    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_1

    .line 438
    .end local v3    # "simName":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_1

    .line 457
    .restart local v1    # "dialName":Ljava/lang/String;
    .restart local v2    # "dialNumber":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_6

    .line 459
    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u4eba"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 466
    :cond_7
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method protected static a(Lacp;Lacr;Laau;BLaci;)V
    .locals 19
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pMessageHanlderListener"    # Lacr;
    .param p2, "pContactFilterResult"    # Laau;
    .param p3, "pTextSearchMode"    # B
    .param p4, "pOperationData"    # Laci;

    .prologue
    .line 575
    const-string/jumbo v3, "MessageStartNewInteractionHelper"

    const-string/jumbo v4, "showSmsInputView start"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-nez p0, :cond_0

    .line 577
    const-string/jumbo v3, "MessageStartNewInteractionHelper"

    const-string/jumbo v4, "pBusinessHandler is null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-interface/range {p0 .. p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v16

    .line 581
    .local v16, "context":Landroid/content/Context;
    invoke-virtual/range {p4 .. p4}, Laci;->p()Ljava/util/List;

    move-result-object v5

    .line 582
    .local v5, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v18, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 584
    .local v17, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f0c032b

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 585
    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 587
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 589
    .end local v17    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 592
    .local v6, "nameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lacw;->a(Laau;)Z

    move-result v7

    .line 593
    .local v7, "isAllNameState":Z
    new-instance v2, Lade;

    .line 600
    invoke-virtual/range {p4 .. p4}, Laci;->m()Ljava/lang/String;

    move-result-object v9

    .line 601
    invoke-virtual/range {p4 .. p4}, Laci;->n()Ljava/lang/String;

    move-result-object v10

    .line 602
    invoke-virtual/range {p4 .. p4}, Laci;->o()Ljava/lang/String;

    move-result-object v11

    .line 603
    invoke-virtual/range {p2 .. p2}, Laau;->i()Ljava/lang/String;

    move-result-object v12

    .line 604
    invoke-virtual/range {p2 .. p2}, Laau;->j()Ljava/lang/String;

    move-result-object v13

    .line 605
    invoke-virtual/range {p4 .. p4}, Laci;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v14

    .line 606
    invoke-virtual/range {p4 .. p4}, Laci;->r()Z

    move-result v15

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v8, p3

    invoke-direct/range {v2 .. v15}, Lade;-><init>(Lacp;Lacr;Ljava/util/List;Ljava/util/HashSet;ZBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Z)V

    .line 608
    .local v2, "smsInputView":Lade;
    const-wide/16 v8, 0x320

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v8, v9}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 610
    invoke-virtual/range {p4 .. p4}, Laci;->t()Lacq;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 611
    invoke-virtual/range {p4 .. p4}, Laci;->t()Lacq;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v3, v4, v8}, Lacq;->a(I[Ljava/lang/Object;)V

    .line 613
    :cond_3
    invoke-static {}, Lacl;->a()Lacl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lacl;->a(Lade;)V

    .line 618
    const-string/jumbo v3, "MessageStartNewInteractionHelper"

    const-string/jumbo v4, "showSmsInputView end"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static a(Lacp;Lacr;Laau;Laci;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 12
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pMessageHanlderListener"    # Lacr;
    .param p2, "pContactFilterResult"    # Laau;
    .param p3, "pOperationData"    # Laci;
    .param p4, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 84
    const-string/jumbo v9, "MessageStartNewInteractionHelper"

    const-string/jumbo v10, "startSendSmsChooseTask start"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-nez p0, :cond_0

    .line 86
    const-string/jumbo v9, "MessageStartNewInteractionHelper"

    const-string/jumbo v10, "startSendSmsChooseTask: pBusinessHandler is null"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 89
    :cond_0
    if-nez p3, :cond_1

    .line 90
    const-string/jumbo v9, "MessageStartNewInteractionHelper"

    const-string/jumbo v10, "startSendSmsChooseTask: pOperationData is null"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p3}, Laci;->t()Lacq;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 96
    invoke-virtual {p3}, Laci;->t()Lacq;

    move-result-object v9

    invoke-interface {v9}, Lacq;->a()Z

    move-result v9

    if-nez v9, :cond_2

    .line 97
    invoke-virtual {p3}, Laci;->t()Lacq;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lacq;->a(Z)V

    .line 100
    :cond_2
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    .local v1, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 106
    .local v4, "isDemonstrationMode":Z
    const/4 v2, 0x0

    .line 107
    .local v2, "flagTTS":Z
    const/4 v8, 0x0

    .line 108
    .local v8, "ttsText":Ljava/lang/String;
    const/4 v6, 0x0

    .line 109
    .local v6, "needRestartFlag":Z
    invoke-virtual {p3}, Laci;->m()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 110
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-virtual {v9, v10}, Lil;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 112
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v9

    invoke-virtual {v9}, Lqr;->d()Z

    move-result v9

    if-nez v9, :cond_5

    .line 113
    invoke-virtual/range {p4 .. p4}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v9

    if-nez v9, :cond_5

    .line 114
    invoke-interface {p0}, Lacp;->isTTSSpeaking()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 115
    invoke-interface {p0}, Lacp;->stopTTSAsync()V

    .line 117
    :cond_3
    const/4 v4, 0x1

    .line 118
    const v9, 0x7f0c0389

    .line 119
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "answerTextString":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-virtual {v10, v11}, Lil;->c(Ljava/lang/String;)Z

    move-result v10

    if-ne v9, v10, :cond_4

    .line 127
    const/4 v6, 0x1

    .line 132
    :cond_4
    :goto_2
    if-eqz v4, :cond_9

    .line 133
    const v9, 0x7f0c0381

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-virtual {p3}, Laci;->p()Ljava/util/List;

    move-result-object v7

    .line 135
    .local v7, "receiversList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 136
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 137
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v9}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_7

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0c0394

    .line 140
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 121
    .end local v0    # "answerTextString":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "receiversList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_5
    const v9, 0x7f0c0388

    .line 122
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "answerTextString":Ljava/lang/String;
    goto :goto_1

    .line 130
    .end local v0    # "answerTextString":Ljava/lang/String;
    :cond_6
    const v9, 0x7f0c0387

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "answerTextString":Ljava/lang/String;
    goto :goto_2

    .line 142
    .restart local v3    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "receiversList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0c0380

    .line 143
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 147
    .end local v3    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Laci;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0c037f

    .line 148
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 149
    const/4 v2, 0x1

    .line 151
    .end local v7    # "receiversList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_9
    invoke-static {p0, p2, v0}, Laca;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 154
    if-eqz v6, :cond_a

    .line 155
    const-wide/16 v10, 0x12c

    new-instance v9, Laca$1;

    invoke-direct {v9, p0, p3}, Laca$1;-><init>(Lacp;Laci;)V

    invoke-static {p0, v8, v10, v11, v9}, Laca;->a(Lacp;Ljava/lang/String;JLacs;)V

    .line 174
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v9

    .line 170
    invoke-static {p0, p1, p2, v9, p3}, Laca;->a(Lacp;Lacr;Laau;BLaci;)V

    .line 177
    const-string/jumbo v9, "MessageStartNewInteractionHelper"

    const-string/jumbo v10, "startSendSmsChooseTask end"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :cond_a
    const-wide/16 v10, 0x12c

    invoke-static {p0, v8, v10, v11}, Laca;->a(Lacp;Ljava/lang/String;J)V

    goto :goto_5
.end method

.method protected static a(Landroid/content/Context;Lcom/iflytek/base/contacts/entities/ContactInfo;)V
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/iflytek/base/contacts/entities/ContactInfo;

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    const-string/jumbo v0, "MessageStartNewInteractionHelper"

    const-string/jumbo v1, "setDefaultSmsInfo info is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
