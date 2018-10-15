.class public Laco;
.super Lacj;
.source "TelephoneResultHandler.java"


# static fields
.field static a:I


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    sput v0, Laco;->a:I

    return-void
.end method

.method public constructor <init>(Lacp;)V
    .locals 1
    .param p1, "pBusinessHandler"    # Lacp;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lacj;-><init>(Lacp;)V

    .line 78
    new-instance v0, Laco$1;

    invoke-direct {v0, p0}, Laco$1;-><init>(Laco;)V

    iput-object v0, p0, Laco;->b:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method private a(Landroid/content/Context;Lacp;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/base/contacts/entities/ContactSet;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pBusinessHandler"    # Lacp;
    .param p3, "pNumber"    # Ljava/lang/String;
    .param p4, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p5, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 605
    if-nez p4, :cond_2

    .line 606
    iget-object v3, p0, Laco;->b:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 615
    .local v0, "callMessage":Landroid/os/Message;
    :goto_0
    iget-object v3, p0, Laco;->b:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 619
    invoke-interface {p2}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 620
    .local v1, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 621
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 625
    :cond_0
    if-eqz p5, :cond_1

    .line 627
    invoke-static {p2, p5, p3}, Lacb;->a(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;)V

    .line 656
    :cond_1
    return-void

    .line 608
    .end local v0    # "callMessage":Landroid/os/Message;
    .end local v1    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_2
    const/4 v2, 0x0

    .line 609
    .local v2, "simCardType":I
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p4, v3, :cond_3

    .line 610
    const/4 v2, 0x1

    .line 613
    :cond_3
    iget-object v3, p0, Laco;->b:Landroid/os/Handler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "callMessage":Landroid/os/Message;
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V
    .locals 13
    .param p1, "reason"    # Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .prologue
    const/16 v12, 0x104

    .line 542
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v8

    invoke-interface {v8}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v2

    .line 543
    .local v2, "currentScenceData":Lacf;
    invoke-virtual {v2}, Lacf;->h()I

    move-result v3

    .line 544
    .local v3, "currentScenceState":I
    invoke-virtual {v2}, Lacf;->g()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "telephone"

    if-eq v8, v9, :cond_1

    .line 545
    const-string/jumbo v8, "TelephoneResultHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MethodName: cancel  info: cancel callback error with incorrect resultHandler data: [currentScence focus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 547
    invoke-virtual {v2}, Lacf;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v2    # "currentScenceData":Lacf;
    :cond_0
    :goto_0
    return-void

    .line 551
    .restart local v2    # "currentScenceData":Lacf;
    :cond_1
    const-string/jumbo v8, "TelephoneResultHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MethodName: cancel data: [ reason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " currentScenceState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sget-object v8, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->speech_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    if-ne v8, p1, :cond_2

    if-ne v3, v12, :cond_0

    .line 559
    :cond_2
    invoke-virtual {v2}, Lacf;->l()Lacf$a;

    move-result-object v5

    .line 560
    .local v5, "mListener":Lacf$a;
    if-eqz v5, :cond_3

    .line 562
    invoke-interface {v5, p1}, Lacf$a;->a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V

    .line 565
    :cond_3
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lacp;->cacheScenceData(Lacf;)V

    .line 568
    if-eq v3, v12, :cond_4

    const/16 v8, 0x110

    if-ne v3, v8, :cond_6

    .line 570
    :cond_4
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v8

    invoke-interface {v8}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 571
    .local v1, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 572
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v8

    .line 573
    invoke-virtual {v8}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 574
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->c()V

    .line 577
    :cond_5
    new-instance v4, Laau;

    invoke-direct {v4}, Laau;-><init>()V

    .line 578
    .local v4, "fakeResult":Laau;
    const-string/jumbo v8, "telephone"

    invoke-virtual {v4, v8}, Laau;->setFocus(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v8

    invoke-interface {v8}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0330

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v8

    invoke-static {v8, v4, v7}, Lacb;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 581
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v8

    const-wide/16 v10, 0x96

    invoke-static {v8, v7, v10, v11}, Lacb;->a(Lacp;Ljava/lang/String;J)V

    .line 584
    .end local v1    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v4    # "fakeResult":Laau;
    .end local v7    # "text":Ljava/lang/String;
    :cond_6
    if-ne v3, v12, :cond_0

    .line 586
    iget-object v8, p0, Laco;->b:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    iget-object v8, p0, Laco;->b:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    instance-of v8, v2, Lacg;

    if-eqz v8, :cond_0

    move-object v8, v2

    .line 591
    check-cast v8, Lacg;

    invoke-virtual {v8}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v0

    .local v0, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    move-object v8, v2

    .line 592
    check-cast v8, Lacg;

    invoke-virtual {v8}, Lacg;->n()Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, "targetNumber":Ljava/lang/String;
    if-nez v6, :cond_7

    .line 594
    check-cast v2, Lacg;

    .end local v2    # "currentScenceData":Lacf;
    invoke-virtual {v2}, Lacg;->o()Ljava/lang/String;

    move-result-object v6

    .line 596
    :cond_7
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v8

    invoke-static {v8, v0, v6}, Lacb;->a(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;Lacf;Lacf;)V
    .locals 9
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "lastScenceData"    # Lacf;
    .param p3, "pNextOperationData"    # Lacf;

    .prologue
    .line 443
    if-nez p3, :cond_0

    const/4 v4, -0x1

    .line 444
    .local v4, "nowScenceType":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "nowScenceType\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "nowScence":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6700\u540e\u4e00\u4e2a\u573a\u666f\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Laco;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "lastScence":Ljava/lang/String;
    invoke-virtual {p0}, Laco;->b()Lacp;

    move-result-object v7

    invoke-interface {v7}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lww;->a(Landroid/content/Context;)Lww;

    move-result-object v0

    .line 450
    .local v0, "callOpLogHelper":Lww;
    const-string/jumbo v6, "opCode\uff1a"

    .line 451
    .local v6, "opCodeForLog":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 453
    .local v5, "opCode":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 536
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "logContent":Ljava/lang/String;
    const-string/jumbo v7, "TelephoneResultHandler"

    invoke-static {v7, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 443
    .end local v0    # "callOpLogHelper":Lww;
    .end local v1    # "lastScence":Ljava/lang/String;
    .end local v2    # "logContent":Ljava/lang/String;
    .end local v3    # "nowScence":Ljava/lang/String;
    .end local v4    # "nowScenceType":I
    .end local v5    # "opCode":Ljava/lang/String;
    .end local v6    # "opCodeForLog":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Lacf;->h()I

    move-result v4

    goto/16 :goto_0

    .line 455
    .restart local v0    # "callOpLogHelper":Lww;
    .restart local v1    # "lastScence":Ljava/lang/String;
    .restart local v3    # "nowScence":Ljava/lang/String;
    .restart local v4    # "nowScenceType":I
    .restart local v5    # "opCode":Ljava/lang/String;
    .restart local v6    # "opCodeForLog":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v5, "FD01001"

    .line 456
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 457
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 458
    sput v4, Laco;->a:I

    goto :goto_1

    .line 461
    :sswitch_1
    sget v7, Laco;->a:I

    const/16 v8, 0x130

    if-eq v7, v8, :cond_1

    sget v7, Laco;->a:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 462
    const-string/jumbo v5, "FD01001"

    .line 463
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 466
    :cond_1
    sput v4, Laco;->a:I

    goto/16 :goto_1

    .line 469
    :sswitch_2
    sget v7, Laco;->a:I

    const/16 v8, 0x130

    if-eq v7, v8, :cond_2

    sget v7, Laco;->a:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    sget v7, Laco;->a:I

    const/16 v8, 0x110

    if-eq v7, v8, :cond_2

    .line 470
    const-string/jumbo v5, "FD01001"

    .line 471
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 474
    :cond_2
    sget v7, Laco;->a:I

    const/16 v8, 0x110

    if-ne v7, v8, :cond_3

    .line 475
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v7

    if-nez v7, :cond_4

    .line 476
    const-string/jumbo v5, "FD01002"

    .line 477
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 485
    :cond_3
    :goto_2
    sput v4, Laco;->a:I

    goto/16 :goto_1

    .line 480
    :cond_4
    const-string/jumbo v5, "FD01004"

    .line 481
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 488
    :sswitch_3
    sget v7, Laco;->a:I

    const/16 v8, 0x130

    if-eq v7, v8, :cond_5

    sget v7, Laco;->a:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    sget v7, Laco;->a:I

    const/16 v8, 0x110

    if-eq v7, v8, :cond_5

    sget v7, Laco;->a:I

    const/16 v8, 0x104

    if-eq v7, v8, :cond_5

    .line 492
    const-string/jumbo v5, "FD01001"

    .line 493
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 496
    :cond_5
    sget v7, Laco;->a:I

    const/16 v8, 0x104

    if-ne v7, v8, :cond_6

    .line 497
    const-string/jumbo v5, "FD01005"

    .line 498
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 501
    :cond_6
    const-string/jumbo v5, "FD01006"

    .line 502
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 505
    const-string/jumbo v5, "FD01008"

    .line 506
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 508
    const/4 v7, 0x0

    sput v7, Laco;->a:I

    goto/16 :goto_1

    .line 511
    :sswitch_4
    const-string/jumbo v5, "FD01008  "

    .line 512
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 513
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 514
    const/4 v7, 0x0

    sput v7, Laco;->a:I

    goto/16 :goto_1

    .line 517
    :sswitch_5
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v7

    if-nez v7, :cond_7

    .line 518
    const-string/jumbo v5, "FD01003"

    .line 519
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 527
    :goto_3
    const-string/jumbo v5, "FD01008"

    .line 528
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 530
    const/4 v7, 0x0

    sput v7, Laco;->a:I

    goto/16 :goto_1

    .line 522
    :cond_7
    const-string/jumbo v5, "FD01007"

    .line 523
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 524
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_2
        0x105 -> :sswitch_3
        0x106 -> :sswitch_5
        0x107 -> :sswitch_4
        0x110 -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
    .locals 1
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pLastScenceData"    # Lacf;

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic b(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacf;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Laco;->d(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacg;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
    .locals 20
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pNextOperationData"    # Lacf;

    .prologue
    .line 343
    move-object/from16 v17, p3

    check-cast v17, Lacg;

    .line 344
    .local v17, "nextScenceData":Lacg;
    invoke-virtual/range {p0 .. p0}, Laco;->a()Landroid/content/Context;

    move-result-object v14

    .line 345
    .local v14, "context":Landroid/content/Context;
    invoke-virtual/range {v17 .. v17}, Lacg;->h()I

    move-result v18

    .line 346
    .local v18, "nextScenceType":I
    const-string/jumbo v3, "TelephoneResultHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MethodName: process data: nextScenceType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    .line 350
    const/4 v3, 0x0

    .line 429
    :goto_0
    return v3

    .line 353
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lacg;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    .line 356
    invoke-virtual/range {p2 .. p2}, Laau;->getRawText()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static {v3, v4}, Lacb;->a(Lacp;Ljava/lang/String;)V

    .line 359
    :cond_1
    const/16 v3, 0x130

    move/from16 v0, v18

    if-ne v3, v0, :cond_2

    .line 360
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Laco;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v0, v4, v5}, Lacc;->a(Lacp;Laau;ZZ)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v4

    invoke-static {v3, v4}, Lacc;->a(Lacp;B)V

    .line 362
    const/4 v3, 0x1

    goto :goto_0

    .line 364
    :cond_2
    const/16 v3, 0x110

    move/from16 v0, v18

    if-ne v3, v0, :cond_3

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Laco;->a(Lace;Laau;)V

    .line 367
    const/4 v3, 0x1

    goto :goto_0

    .line 369
    :cond_3
    const/16 v3, 0x104

    move/from16 v0, v18

    if-ne v3, v0, :cond_6

    .line 370
    invoke-virtual/range {v17 .. v17}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v6

    .line 371
    .local v6, "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 373
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    .line 374
    invoke-static/range {p1 .. p1}, Laco;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lacg;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v5

    .line 372
    move-object/from16 v0, p2

    invoke-static {v3, v0, v6, v4, v5}, Lacc;->a(Lacp;Laau;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/Boolean;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 388
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 375
    :cond_4
    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 376
    invoke-virtual/range {v17 .. v17}, Lacg;->o()Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "targetNumber":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v5

    .line 383
    invoke-static/range {p1 .. p1}, Laco;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v8

    .line 384
    invoke-virtual/range {v17 .. v17}, Lacg;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v9

    move-object/from16 v4, p2

    .line 377
    invoke-static/range {v3 .. v9}, Lacc;->a(Lacp;Laau;BLcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_1

    .line 386
    .end local v7    # "targetNumber":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 390
    .end local v6    # "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_6
    const/16 v3, 0x105

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 391
    invoke-virtual/range {v17 .. v17}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v6

    .line 392
    .restart local v6    # "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_8

    .line 393
    :cond_7
    const-string/jumbo v3, "TelephoneResultHandler"

    const-string/jumbo v4, "MethodName: process info: illegal Contact or phoneNumber data."

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 397
    :cond_8
    const/4 v11, 0x0

    .line 398
    .local v11, "directCallNumber":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lacg;->n()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 399
    invoke-virtual/range {v17 .. v17}, Lacg;->n()Ljava/lang/String;

    move-result-object v11

    .line 404
    :goto_2
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    invoke-interface {v3}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v10

    .line 405
    invoke-virtual/range {v17 .. v17}, Lacg;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v12

    move-object/from16 v8, p0

    move-object v13, v6

    .line 404
    invoke-direct/range {v8 .. v13}, Laco;->a(Landroid/content/Context;Lacp;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 406
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 401
    :cond_9
    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "directCallNumber":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "directCallNumber":Ljava/lang/String;
    goto :goto_2

    .line 408
    .end local v6    # "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v11    # "directCallNumber":Ljava/lang/String;
    :cond_a
    const/16 v3, 0x106

    move/from16 v0, v18

    if-ne v3, v0, :cond_c

    .line 409
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lacc;->a(Lacp;Laau;)V

    .line 410
    invoke-virtual/range {v17 .. v17}, Lacg;->p()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 411
    invoke-virtual/range {v17 .. v17}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v19

    .line 412
    .local v19, "tContactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    .line 413
    invoke-virtual/range {v17 .. v17}, Lacg;->o()Ljava/lang/String;

    move-result-object v4

    .line 412
    move-object/from16 v0, v19

    invoke-static {v3, v0, v4}, Lacc;->b(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;)V

    .line 415
    .end local v19    # "tContactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 417
    :cond_c
    const/16 v3, 0x107

    move/from16 v0, v18

    if-ne v3, v0, :cond_e

    .line 419
    invoke-virtual/range {v17 .. v17}, Lacg;->f()I

    move-result v15

    .line 420
    .local v15, "continuousNoContactCount":I
    const/16 v16, 0x1

    .line 421
    .local v16, "flagRestartReco":Z
    rem-int/lit8 v3, v15, 0x3

    if-nez v3, :cond_d

    .line 423
    const/16 v16, 0x0

    .line 425
    :cond_d
    invoke-virtual/range {p0 .. p0}, Laco;->b()Lacp;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v3, v0, v1}, Lacb;->a(Lacp;Laau;Z)V

    .line 426
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 429
    .end local v15    # "continuousNoContactCount":I
    .end local v16    # "flagRestartReco":Z
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method protected d(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacg;
    .locals 26
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pLastScenceData"    # Lacf;

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Laco;->a()Landroid/content/Context;

    move-result-object v8

    .line 139
    .local v8, "context":Landroid/content/Context;
    if-nez p3, :cond_5

    const/4 v13, -0x1

    .line 141
    .local v13, "lastScenceType":I
    :goto_0
    const/16 v16, -0x1

    .line 142
    .local v16, "nextScenceType":I
    new-instance v15, Lacg;

    invoke-direct {v15}, Lacg;-><init>()V

    .line 145
    .local v15, "nextScenceData":Lacg;
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v0, v13, :cond_0

    const/16 v23, 0x130

    move/from16 v0, v23

    if-ne v0, v13, :cond_10

    .line 147
    :cond_0
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    if-nez v23, :cond_6

    invoke-virtual/range {p2 .. p2}, Laau;->d()Ljava/util/List;

    move-result-object v23

    if-nez v23, :cond_6

    .line 148
    const/16 v16, 0x130

    .line 306
    :cond_1
    :goto_1
    invoke-virtual/range {v15 .. v16}, Lacg;->b(I)V

    .line 307
    const/16 v23, 0x104

    move/from16 v0, v23

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 308
    invoke-virtual {v15}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v6

    .line 310
    .local v6, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual/range {p2 .. p2}, Laau;->d()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_1d

    invoke-virtual/range {p2 .. p2}, Laau;->d()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 311
    invoke-virtual/range {p2 .. p2}, Laau;->d()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->d(Ljava/lang/String;)V

    .line 326
    .end local v6    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_2
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 327
    move-object/from16 v0, p3

    instance-of v0, v0, Lacg;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v11, p3

    .line 328
    check-cast v11, Lacg;

    .line 329
    .local v11, "lasData":Lacg;
    invoke-virtual {v11}, Lacg;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 332
    .end local v11    # "lasData":Lacg;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Laau;->k()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v20

    .line 333
    .local v20, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-eqz v20, :cond_4

    .line 334
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lacg;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 338
    .end local v20    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_4
    return-object v15

    .line 140
    .end local v13    # "lastScenceType":I
    .end local v15    # "nextScenceData":Lacg;
    .end local v16    # "nextScenceType":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lacf;->h()I

    move-result v13

    goto/16 :goto_0

    .line 150
    .restart local v13    # "lastScenceType":I
    .restart local v15    # "nextScenceData":Lacg;
    .restart local v16    # "nextScenceType":I
    :cond_6
    const/4 v7, 0x0

    .line 152
    .local v7, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-static {}, Laba;->a()Laba;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Laba;->b()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 154
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_7

    const/16 v23, 0x1

    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 155
    invoke-static {v8}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 158
    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_9

    .line 161
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEngine()I

    move-result v23

    .line 159
    move/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v8, v0, v1}, Lacu;->a(Landroid/content/Context;ILaau;)Ljava/util/List;

    move-result-object v7

    .line 164
    :cond_9
    invoke-static {v8, v7}, Lacu;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 166
    invoke-static {v7}, Lacu;->a(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 168
    invoke-static {}, Laba;->a()Laba;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Laba;->b()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-virtual/range {p2 .. p2}, Laau;->k()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v23

    if-nez v23, :cond_a

    .line 169
    const/16 v16, 0x104

    .line 176
    :goto_3
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/iflytek/base/contacts/entities/ContactSet;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->b(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    goto/16 :goto_1

    .line 171
    :cond_a
    const/16 v16, 0x105

    goto :goto_3

    .line 174
    :cond_b
    const/16 v16, 0x104

    goto :goto_3

    .line 177
    :cond_c
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    .line 178
    const/16 v16, 0x110

    .line 179
    invoke-virtual {v15, v7}, Lacg;->a(Ljava/util/List;)V

    .line 181
    invoke-static {v8, v7}, Lacv;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v5

    .line 183
    .local v5, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    invoke-static {v8, v5}, Lacv;->a(Landroid/content/Context;Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, "grammars":[Ljava/lang/String;
    invoke-virtual {v15, v5}, Lacg;->a(Ljava/util/HashMap;)V

    .line 185
    invoke-virtual {v15}, Lacg;->g()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lacv;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 187
    .end local v5    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    .end local v10    # "grammars":[Ljava/lang/String;
    :cond_d
    const/16 v16, 0x107

    .line 188
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_e

    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_f

    .line 190
    :cond_e
    const-string/jumbo v23, "\u4e0d\u5e94\u8be5\u51fa\u73b0"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Ljava/lang/String;)V

    .line 191
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(I)V

    goto/16 :goto_1

    .line 194
    :cond_f
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 193
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Ljava/lang/String;)V

    .line 195
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(I)V

    goto/16 :goto_1

    .line 200
    .end local v7    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    :cond_10
    const/16 v23, 0x110

    move/from16 v0, v23

    if-ne v0, v13, :cond_16

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Laco;->a()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0c0362

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 202
    const/16 v16, 0x106

    goto/16 :goto_1

    .line 203
    :cond_11
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    instance-of v0, v0, Lacg;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v12, p3

    .line 204
    check-cast v12, Lacg;

    .line 205
    .local v12, "lastScenceData":Lacg;
    invoke-virtual {v12}, Lacg;->a()Ljava/util/List;

    move-result-object v7

    .line 206
    .restart local v7    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-virtual {v12}, Lacg;->c()Ljava/util/HashMap;

    move-result-object v5

    .line 208
    .restart local v5    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    move-object/from16 v0, p2

    invoke-static {v7, v0, v5}, Lacv;->a(Ljava/util/List;Laau;Ljava/util/HashMap;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v21

    .line 209
    .local v21, "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v21, :cond_12

    .line 211
    const/16 v16, 0x104

    .line 212
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lacg;->b(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    goto/16 :goto_1

    .line 214
    :cond_12
    const/16 v17, 0x0

    .line 215
    .local v17, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 217
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "number":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 218
    .restart local v17    # "number":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lacv;->a(Ljava/util/List;Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v21

    .line 222
    :goto_4
    if-eqz v21, :cond_14

    .line 224
    const/16 v16, 0x105

    .line 225
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lacg;->b(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 226
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lacg;->c(Ljava/lang/String;)V

    .line 227
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Z)V

    goto/16 :goto_1

    .line 220
    :cond_13
    const/16 v21, 0x0

    goto :goto_4

    .line 229
    :cond_14
    const/16 v23, 0x0

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Laco;->d(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacg;

    move-result-object v19

    .line 231
    .local v19, "operationData":Lacg;
    invoke-virtual/range {v19 .. v19}, Lacg;->h()I

    move-result v14

    .line 232
    .local v14, "newState":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_15

    const/16 v23, 0x107

    move/from16 v0, v23

    if-eq v14, v0, :cond_15

    .line 234
    invoke-virtual/range {v19 .. v19}, Lacg;->h()I

    move-result v16

    .line 235
    move-object/from16 v15, v19

    goto/16 :goto_1

    .line 238
    :cond_15
    const/16 v16, 0x110

    .line 240
    invoke-virtual {v12}, Lacg;->a()Ljava/util/List;

    move-result-object v23

    .line 239
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Ljava/util/List;)V

    .line 242
    invoke-virtual {v12}, Lacg;->c()Ljava/util/HashMap;

    move-result-object v23

    .line 241
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Ljava/util/HashMap;)V

    .line 243
    invoke-virtual {v12}, Lacg;->i()Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {v12}, Lacg;->k()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->c(I)V

    goto/16 :goto_1

    .line 250
    .end local v5    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    .end local v7    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v12    # "lastScenceData":Lacg;
    .end local v14    # "newState":I
    .end local v17    # "number":Ljava/lang/String;
    .end local v19    # "operationData":Lacg;
    .end local v21    # "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_16
    const/16 v23, 0x104

    move/from16 v0, v23

    if-ne v0, v13, :cond_1a

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 253
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->a(Z)V

    .line 255
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Laco;->a()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0c0362

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 256
    const/16 v16, 0x106

    move-object/from16 v12, p3

    .line 257
    check-cast v12, Lacg;

    .line 258
    .restart local v12    # "lastScenceData":Lacg;
    invoke-virtual {v12}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->b(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 259
    invoke-virtual {v12}, Lacg;->o()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    .end local v12    # "lastScenceData":Lacg;
    :cond_18
    const/4 v4, 0x0

    .line 263
    .local v4, "chooseNumber":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_19

    .line 265
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "chooseNumber":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "chooseNumber":Ljava/lang/String;
    :cond_19
    move-object/from16 v12, p3

    .line 268
    check-cast v12, Lacg;

    .line 269
    .restart local v12    # "lastScenceData":Lacg;
    invoke-virtual {v12}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v6

    .line 270
    .restart local v6    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 271
    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v18

    .line 272
    .local v18, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 273
    const/16 v16, 0x105

    .line 274
    invoke-virtual {v12}, Lacg;->m()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->b(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 275
    invoke-virtual {v15, v4}, Lacg;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    .end local v4    # "chooseNumber":Ljava/lang/String;
    .end local v6    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v12    # "lastScenceData":Lacg;
    .end local v18    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a
    const/16 v23, 0x107

    move/from16 v0, v23

    if-ne v0, v13, :cond_1b

    .line 281
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    instance-of v0, v0, Lacg;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v12, p3

    .line 282
    check-cast v12, Lacg;

    .line 283
    .restart local v12    # "lastScenceData":Lacg;
    const/16 v23, 0x0

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Laco;->d(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacg;

    move-result-object v19

    .line 285
    .restart local v19    # "operationData":Lacg;
    const/16 v23, 0x107

    invoke-virtual/range {v19 .. v19}, Lacg;->h()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    const/16 v23, -0x1

    .line 286
    invoke-virtual {v12}, Lacg;->f()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v23, -0x1

    .line 287
    invoke-virtual/range {v19 .. v19}, Lacg;->f()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 290
    invoke-virtual {v12}, Lacg;->f()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    .line 289
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lacg;->a(I)V

    .line 293
    invoke-virtual/range {v19 .. v19}, Lacg;->h()I

    move-result v16

    .line 294
    move-object/from16 v15, v19

    goto/16 :goto_1

    .line 299
    .end local v12    # "lastScenceData":Lacg;
    .end local v19    # "operationData":Lacg;
    :cond_1b
    const/16 v23, 0x105

    move/from16 v0, v23

    if-eq v0, v13, :cond_1c

    const/16 v23, 0x106

    move/from16 v0, v23

    if-ne v0, v13, :cond_1

    .line 302
    :cond_1c
    const/16 v16, -0x1

    goto/16 :goto_1

    .line 313
    .restart local v6    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_1d
    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 314
    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lacg;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 317
    :cond_1e
    invoke-static {v6}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v9

    .line 318
    .local v9, "defaultContactInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    if-eqz v9, :cond_2

    .line 319
    iget-object v0, v9, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 320
    .local v22, "targetNumber":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lacg;->d(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
