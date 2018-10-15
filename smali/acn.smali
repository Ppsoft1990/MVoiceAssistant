.class public Lacn;
.super Lacj;
.source "MessageResultHandler.java"


# static fields
.field static b:I


# instance fields
.field protected a:Lhn;

.field private c:Lacr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    sput v0, Lacn;->b:I

    return-void
.end method

.method public constructor <init>(Lacp;)V
    .locals 1
    .param p1, "pBusinessHandler"    # Lacp;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lacj;-><init>(Lacp;)V

    .line 592
    new-instance v0, Lacn$1;

    invoke-direct {v0, p0}, Lacn$1;-><init>(Lacn;)V

    iput-object v0, p0, Lacn;->c:Lacr;

    .line 75
    iget-object v0, p0, Lacn;->a:Lhn;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lhn;

    invoke-direct {v0}, Lhn;-><init>()V

    iput-object v0, p0, Lacn;->a:Lhn;

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 586
    invoke-virtual {p0}, Lacn;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c022d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    return-void
.end method

.method public a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V
    .locals 9
    .param p1, "reason"    # Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 539
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v4

    invoke-interface {v4}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v0

    .line 540
    .local v0, "currentScenceData":Lacf;
    invoke-virtual {v0}, Lacf;->h()I

    move-result v1

    .line 541
    .local v1, "currentScenceState":I
    invoke-virtual {v0}, Lacf;->g()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "message"

    if-eq v4, v5, :cond_1

    .line 542
    const-string/jumbo v4, "MessageResultHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MethodName: cancel  info: cancel callback error with incorrect resultHandler data: [currentScence focus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 544
    invoke-virtual {v0}, Lacf;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const-string/jumbo v4, "MessageResultHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MethodName: cancel data: [ reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentScenceState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v0}, Lacf;->l()Lacf$a;

    move-result-object v2

    .line 552
    .local v2, "mListener":Lacf$a;
    if-eqz v2, :cond_2

    .line 554
    invoke-interface {v2, p1}, Lacf$a;->a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V

    .line 557
    :cond_2
    sget-object v4, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->speech_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    if-ne v4, p1, :cond_3

    .line 558
    invoke-static {}, Lacl;->a()Lacl;

    .line 560
    sput-boolean v7, Lacl;->a:Z

    .line 563
    :cond_3
    sget-object v4, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancel_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    if-ne v4, p1, :cond_0

    .line 564
    instance-of v4, v0, Laci;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 565
    check-cast v3, Laci;

    .line 566
    .local v3, "nextData":Laci;
    invoke-virtual {v3}, Laci;->t()Lacq;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 567
    invoke-virtual {v3}, Laci;->t()Lacq;

    move-result-object v4

    invoke-interface {v4}, Lacq;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 569
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v4

    .line 568
    invoke-static {v4, v8, v3, v7}, Laca;->a(Lacp;Laau;Laci;Z)V

    .line 577
    .end local v3    # "nextData":Laci;
    :cond_4
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v4

    invoke-interface {v4, v8}, Lacp;->cacheScenceData(Lacf;)V

    goto :goto_0
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;Lacf;Lacf;)V
    .locals 9
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "lastScenceData"    # Lacf;
    .param p3, "pNextOperationData"    # Lacf;

    .prologue
    .line 433
    if-nez p3, :cond_0

    const/4 v4, -0x1

    .line 435
    .local v4, "nowScenceType":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6700\u540e\u4e00\u4e2a\u573a\u666f\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lacn;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "lastScence":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u5f53\u524d\u573a\u666f\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "nowScence":Ljava/lang/String;
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v7

    invoke-interface {v7}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lww;->a(Landroid/content/Context;)Lww;

    move-result-object v0

    .line 441
    .local v0, "callOpLogHelper":Lww;
    const-string/jumbo v5, ""

    .line 442
    .local v5, "opCode":Ljava/lang/String;
    const-string/jumbo v6, "opCode: "

    .line 443
    .local v6, "opCodeForLog":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 528
    const/4 v7, 0x0

    sput v7, Lacn;->b:I

    .line 533
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

    .line 534
    .local v2, "logContent":Ljava/lang/String;
    const-string/jumbo v7, "MessageResultHandler"

    invoke-static {v7, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 434
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

    .line 445
    .restart local v0    # "callOpLogHelper":Lww;
    .restart local v1    # "lastScence":Ljava/lang/String;
    .restart local v3    # "nowScence":Ljava/lang/String;
    .restart local v4    # "nowScenceType":I
    .restart local v5    # "opCode":Ljava/lang/String;
    .restart local v6    # "opCodeForLog":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v5, "FD02001"

    .line 446
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 447
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

    .line 448
    sput v4, Lacn;->b:I

    goto :goto_1

    .line 451
    :sswitch_1
    sget v7, Lacn;->b:I

    const/16 v8, 0x230

    if-eq v7, v8, :cond_1

    sget v7, Lacn;->b:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 452
    const-string/jumbo v5, "FD02001"

    .line 453
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 454
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

    .line 456
    :cond_1
    sput v4, Lacn;->b:I

    goto/16 :goto_1

    .line 459
    :sswitch_2
    sget v7, Lacn;->b:I

    const/16 v8, 0x230

    if-eq v7, v8, :cond_2

    sget v7, Lacn;->b:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    sget v7, Lacn;->b:I

    const/16 v8, 0x210

    if-eq v7, v8, :cond_2

    sget v7, Lacn;->b:I

    const/16 v8, 0x203

    if-eq v7, v8, :cond_2

    .line 463
    const-string/jumbo v5, "FD02001"

    .line 464
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 465
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

    .line 467
    :cond_2
    sget v7, Lacn;->b:I

    const/16 v8, 0x210

    if-ne v7, v8, :cond_3

    .line 468
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v7

    if-nez v7, :cond_4

    .line 469
    const-string/jumbo v5, "FD02002"

    .line 470
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 471
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

    .line 478
    :cond_3
    :goto_2
    sput v4, Lacn;->b:I

    goto/16 :goto_1

    .line 473
    :cond_4
    const-string/jumbo v5, "FD02004"

    .line 474
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 475
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

    .line 481
    :sswitch_3
    sget v7, Lacn;->b:I

    const/16 v8, 0x230

    if-eq v7, v8, :cond_5

    sget v7, Lacn;->b:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    sget v7, Lacn;->b:I

    const/16 v8, 0x210

    if-eq v7, v8, :cond_5

    sget v7, Lacn;->b:I

    const/16 v8, 0x203

    if-eq v7, v8, :cond_5

    .line 483
    const-string/jumbo v5, "FD01001"

    .line 484
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 485
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

    .line 487
    :cond_5
    sget v7, Lacn;->b:I

    const/16 v8, 0x203

    if-ne v7, v8, :cond_6

    .line 488
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v7

    if-nez v7, :cond_7

    .line 489
    const-string/jumbo v5, "FD02008"

    .line 490
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 491
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

    .line 499
    :cond_6
    :goto_3
    const-string/jumbo v5, "FD02013"

    .line 500
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 501
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

    .line 502
    const/4 v7, 0x0

    sput v7, Lacn;->b:I

    goto/16 :goto_1

    .line 493
    :cond_7
    const-string/jumbo v5, "FD02009"

    .line 494
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 495
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

    .line 505
    :sswitch_4
    const-string/jumbo v5, "FD02013"

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

    sput v7, Lacn;->b:I

    goto/16 :goto_1

    .line 511
    :sswitch_5
    sget v7, Lacn;->b:I

    const/16 v8, 0x204

    if-eq v7, v8, :cond_8

    .line 512
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v7

    if-nez v7, :cond_9

    .line 513
    const-string/jumbo v5, "FD02010"

    .line 514
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 515
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

    .line 522
    :cond_8
    :goto_4
    const-string/jumbo v5, "FD02013"

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

    .line 525
    const/4 v7, 0x0

    sput v7, Lacn;->b:I

    goto/16 :goto_1

    .line 517
    :cond_9
    const-string/jumbo v5, "FD02011"

    .line 518
    invoke-virtual {v0, v5}, Lww;->a(Ljava/lang/String;)V

    .line 519
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

    goto :goto_4

    .line 443
    :sswitch_data_0
    .sparse-switch
        0x203 -> :sswitch_2
        0x204 -> :sswitch_3
        0x205 -> :sswitch_5
        0x206 -> :sswitch_4
        0x210 -> :sswitch_1
        0x230 -> :sswitch_0
    .end sparse-switch
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
    .locals 1
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pLastScenceData"    # Lacf;

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacf;
    .locals 27
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pLastScenceData"    # Lacf;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 105
    :cond_0
    const/16 v18, 0x0

    .line 353
    :goto_0
    return-object v18

    .line 107
    :cond_1
    const-string/jumbo v24, "MessageResultHandler"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "prepareData\uff1apAsrResult="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",pFilterResult="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 108
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 107
    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual/range {p0 .. p0}, Lacn;->a()Landroid/content/Context;

    move-result-object v9

    .line 111
    .local v9, "context":Landroid/content/Context;
    if-nez p3, :cond_b

    const/16 v16, -0x1

    .line 113
    .local v16, "lastScenceType":I
    :goto_1
    const/16 v19, -0x1

    .line 114
    .local v19, "nextScenceType":I
    new-instance v18, Laci;

    invoke-direct/range {v18 .. v18}, Laci;-><init>()V

    .line 117
    .local v18, "nextScenceData":Laci;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 118
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Z)V

    .line 120
    :cond_2
    const/4 v11, 0x0

    .line 122
    .local v11, "isSmartBless":Z
    const-string/jumbo v24, "MESSAGE_FROM_SMART"

    invoke-virtual/range {p2 .. p2}, Laau;->h()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-virtual/range {p2 .. p2}, Laau;->g()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 123
    const/16 v16, -0x1

    .line 124
    const/16 v19, 0x203

    .line 125
    const/4 v11, 0x1

    .line 126
    invoke-virtual/range {p2 .. p2}, Laau;->h()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->e(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Laau;->g()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->d(Ljava/lang/String;)V

    .line 132
    :cond_3
    const/16 v24, -0x1

    move/from16 v0, v24

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    const/16 v24, 0x230

    move/from16 v0, v24

    move/from16 v1, v16

    if-ne v0, v1, :cond_19

    .line 134
    :cond_4
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v24

    if-nez v24, :cond_d

    invoke-virtual/range {p2 .. p2}, Laau;->d()Ljava/util/List;

    move-result-object v24

    if-nez v24, :cond_d

    .line 136
    if-eqz v11, :cond_c

    .line 137
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v12, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Laci;->b(Ljava/util/List;)V

    .line 311
    .end local v12    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_5
    :goto_2
    const/16 v24, 0x203

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 313
    invoke-static {v9}, Lacw;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Landroid/content/Intent;)V

    .line 314
    const/16 v24, 0x203

    move/from16 v0, v24

    move/from16 v1, v16

    if-ne v0, v1, :cond_27

    if-eqz p3, :cond_27

    move-object/from16 v0, p3

    instance-of v0, v0, Laci;

    move/from16 v24, v0

    if-eqz v24, :cond_27

    move-object/from16 v15, p3

    .line 316
    check-cast v15, Laci;

    .line 317
    .local v15, "lastScenceData":Laci;
    invoke-virtual {v15}, Laci;->t()Lacq;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Lacq;)V

    .line 323
    .end local v15    # "lastScenceData":Laci;
    :cond_6
    :goto_3
    const/16 v24, -0x1

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 325
    move-object/from16 v0, p3

    instance-of v0, v0, Laci;

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v14, p3

    .line 326
    check-cast v14, Laci;

    .line 327
    .local v14, "lasData":Laci;
    invoke-virtual {v14}, Laci;->m()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->c(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v14}, Laci;->n()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->d(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v14}, Laci;->r()Z

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->b(Z)V

    .line 330
    invoke-virtual {v14}, Laci;->q()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 333
    .end local v14    # "lasData":Laci;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Laau;->a()Ljava/lang/String;

    move-result-object v21

    .line 334
    .local v21, "smsContent":Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 335
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Laci;->c(Ljava/lang/String;)V

    .line 338
    :cond_8
    invoke-virtual/range {p2 .. p2}, Laau;->g()Ljava/lang/String;

    move-result-object v22

    .line 339
    .local v22, "smsContentType":Ljava/lang/String;
    if-eqz v22, :cond_9

    .line 340
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Laci;->d(Ljava/lang/String;)V

    .line 343
    :cond_9
    invoke-virtual/range {p2 .. p2}, Laau;->k()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v20

    .line 344
    .local v20, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-eqz v20, :cond_a

    .line 345
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Laci;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 351
    .end local v20    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v21    # "smsContent":Ljava/lang/String;
    .end local v22    # "smsContentType":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v18 .. v19}, Laci;->b(I)V

    goto/16 :goto_0

    .line 112
    .end local v11    # "isSmartBless":Z
    .end local v16    # "lastScenceType":I
    .end local v18    # "nextScenceData":Laci;
    .end local v19    # "nextScenceType":I
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lacf;->h()I

    move-result v16

    goto/16 :goto_1

    .line 141
    .restart local v11    # "isSmartBless":Z
    .restart local v16    # "lastScenceType":I
    .restart local v18    # "nextScenceData":Laci;
    .restart local v19    # "nextScenceType":I
    :cond_c
    const/16 v19, 0x230

    goto/16 :goto_2

    .line 145
    :cond_d
    invoke-static/range {p2 .. p2}, Lacw;->a(Laau;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 147
    invoke-static {v9}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lhe;->d()Ljava/util/HashSet;

    move-result-object v4

    .line 148
    .local v4, "allContactItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v24

    if-lez v24, :cond_e

    .line 149
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .restart local v12    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Laci;->b(Ljava/util/List;)V

    .line 151
    const/16 v19, 0x203

    .line 152
    goto/16 :goto_2

    .line 154
    .end local v12    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_e
    const/16 v19, 0x206

    .line 155
    const v24, 0x7f0c039f

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 158
    .end local v4    # "allContactItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_f
    invoke-virtual/range {p2 .. p2}, Laau;->b()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lacn;->a:Lhn;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lacn;->a()Landroid/content/Context;

    move-result-object v25

    .line 161
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v26

    .line 160
    invoke-virtual/range {v24 .. v26}, Lhn;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v13

    .line 162
    .local v13, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_11

    .line 163
    :cond_10
    const/16 v19, 0x206

    .line 164
    const/16 v24, 0x0

    .line 165
    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 164
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 167
    :cond_11
    const/16 v19, 0x203

    .line 168
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->c(Z)V

    .line 169
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Laci;->b(Ljava/util/List;)V

    goto/16 :goto_2

    .line 173
    .end local v13    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_12
    const/4 v7, 0x0

    .line 174
    .local v7, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-static/range {p2 .. p2}, Lacw;->b(Laau;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 177
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 176
    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lacu;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "cardContent":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->b(Z)V

    .line 179
    if-nez v5, :cond_14

    .line 181
    const/16 v19, 0x206

    .line 183
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 182
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Ljava/lang/String;)V

    .line 208
    .end local v5    # "cardContent":Ljava/lang/String;
    :cond_13
    :goto_4
    const/16 v24, 0x206

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 210
    invoke-static {v9, v7}, Lacu;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 212
    invoke-static {v7}, Lacu;->a(Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 214
    const/16 v19, 0x203

    .line 215
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-static/range {v24 .. v24}, Lacw;->a(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto/16 :goto_2

    .line 185
    .restart local v5    # "cardContent":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Laau;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Laau;->e()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_13

    .line 187
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v17, "namelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Laau;->e()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEngine()I

    move-result v24

    const/16 v25, 0x0

    .line 191
    move/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v9, v0, v1, v2}, Lacu;->a(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    .line 202
    .end local v5    # "cardContent":Ljava/lang/String;
    .end local v17    # "namelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEngine()I

    move-result v24

    .line 201
    move/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v9, v0, v1}, Lacu;->a(Landroid/content/Context;ILaau;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    .line 217
    :cond_16
    if-eqz v7, :cond_17

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_17

    .line 219
    const/16 v19, 0x210

    .line 220
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Laci;->a(Ljava/util/List;)V

    .line 222
    invoke-static {v9, v7}, Lacv;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v6

    .line 224
    .local v6, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    invoke-static {v9, v6}, Lacv;->a(Landroid/content/Context;Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "grammars":[Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Laci;->a(Ljava/util/HashMap;)V

    .line 229
    invoke-virtual/range {v18 .. v18}, Laci;->g()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lacv;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v24

    .line 228
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 231
    .end local v6    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    .end local v10    # "grammars":[Ljava/lang/String;
    :cond_17
    const/16 v19, 0x206

    .line 233
    invoke-virtual/range {v18 .. v18}, Laci;->r()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 234
    const v24, 0x7f0c0353

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 237
    :cond_18
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 236
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 245
    .end local v7    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    :cond_19
    const/16 v24, 0x210

    move/from16 v0, v24

    move/from16 v1, v16

    if-ne v0, v1, :cond_1e

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lacn;->a()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c0362

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 248
    const/16 v19, 0x205

    goto/16 :goto_2

    .line 250
    :cond_1a
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    instance-of v0, v0, Laci;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v15, p3

    .line 251
    check-cast v15, Laci;

    .line 252
    .restart local v15    # "lastScenceData":Laci;
    invoke-virtual {v15}, Laci;->a()Ljava/util/List;

    move-result-object v7

    .line 253
    .restart local v7    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-virtual {v15}, Laci;->c()Ljava/util/HashMap;

    move-result-object v6

    .line 255
    .restart local v6    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    move-object/from16 v0, p2

    invoke-static {v7, v0, v6}, Lacv;->a(Ljava/util/List;Laau;Ljava/util/HashMap;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v23

    .line 257
    .local v23, "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v23, :cond_1b

    .line 259
    const/16 v19, 0x203

    .line 260
    invoke-static/range {v23 .. v23}, Lacw;->a(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto/16 :goto_2

    .line 262
    :cond_1b
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lacn;->b(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacf;

    move-result-object v18

    .end local v18    # "nextScenceData":Laci;
    check-cast v18, Laci;

    .line 263
    .restart local v18    # "nextScenceData":Laci;
    const/16 v24, -0x1

    invoke-virtual/range {v18 .. v18}, Laci;->h()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1c

    const/16 v24, 0x206

    invoke-virtual/range {v18 .. v18}, Laci;->h()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 265
    :cond_1c
    move-object/from16 v18, v15

    .line 266
    invoke-virtual {v15}, Laci;->k()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->c(I)V

    .line 268
    :cond_1d
    invoke-virtual/range {v18 .. v18}, Laci;->h()I

    move-result v19

    goto/16 :goto_2

    .line 272
    .end local v6    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    .end local v7    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v15    # "lastScenceData":Laci;
    .end local v23    # "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_1e
    const/16 v24, 0x203

    move/from16 v0, v24

    move/from16 v1, v16

    if-ne v0, v1, :cond_24

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 275
    const-string/jumbo v24, "MessageResultHandler"

    const-string/jumbo v25, "prepareData\uff1apAsrResult.getContent() is null"

    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 277
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "content":Ljava/lang/String;
    const v24, 0x7f0c0362

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 279
    const/16 v19, 0x205

    .line 293
    :cond_20
    :goto_5
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    instance-of v0, v0, Laci;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v15, p3

    .line 294
    check-cast v15, Laci;

    .line 295
    .restart local v15    # "lastScenceData":Laci;
    invoke-virtual {v15}, Laci;->p()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->b(Ljava/util/List;)V

    .line 296
    invoke-virtual {v15}, Laci;->r()Z

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->b(Z)V

    goto/16 :goto_2

    .line 280
    .end local v15    # "lastScenceData":Laci;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lacn;->a()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0c037e

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_22

    .line 281
    invoke-virtual/range {p0 .. p0}, Lacn;->a()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0c0364

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_22

    .line 282
    invoke-virtual/range {p0 .. p0}, Lacn;->a()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0c0365

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 283
    :cond_22
    if-eqz p3, :cond_20

    move-object/from16 v0, p3

    instance-of v0, v0, Laci;

    move/from16 v24, v0

    if-eqz v24, :cond_20

    move-object/from16 v15, p3

    .line 284
    check-cast v15, Laci;

    .line 285
    .restart local v15    # "lastScenceData":Laci;
    invoke-virtual {v15}, Laci;->m()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 286
    const/16 v19, 0x203

    .line 287
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->d(Z)V

    goto/16 :goto_5

    .line 289
    :cond_23
    const/16 v19, 0x204

    goto/16 :goto_5

    .line 299
    .end local v8    # "content":Ljava/lang/String;
    .end local v15    # "lastScenceData":Laci;
    :cond_24
    const/16 v24, 0x206

    move/from16 v0, v24

    move/from16 v1, v16

    if-ne v0, v1, :cond_25

    .line 300
    const/16 v19, -0x1

    .line 301
    const-string/jumbo v24, "MessageResultHandler"

    const-string/jumbo v25, "prepareData: lastScenceType is SCENCE_NO_RESULT"

    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 302
    :cond_25
    const/16 v24, 0x204

    move/from16 v0, v24

    move/from16 v1, v16

    if-ne v0, v1, :cond_26

    .line 303
    const/16 v19, -0x1

    .line 304
    const-string/jumbo v24, "MessageResultHandler"

    const-string/jumbo v25, "prepareData: lastScenceType is SCENCE_SEND"

    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 305
    :cond_26
    const/16 v24, 0x205

    move/from16 v0, v24

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 306
    const/16 v19, -0x1

    .line 307
    const-string/jumbo v24, "MessageResultHandler"

    const-string/jumbo v25, "prepareData: lastScenceType is SCENCE_END"

    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 319
    :cond_27
    new-instance v24, Lacm;

    invoke-direct/range {v24 .. v24}, Lacm;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laci;->a(Lacq;)V

    goto/16 :goto_3
.end method

.method protected c(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
    .locals 7
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pNextOperationData"    # Lacf;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 361
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v2

    .line 364
    :cond_1
    const-string/jumbo v4, "MessageResultHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process\uff1apAsrResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",pFilterResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p3}, Lacf;->h()I

    move-result v1

    .line 369
    .local v1, "nextScenceType":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move-object v0, p3

    .line 373
    check-cast v0, Laci;

    .line 374
    .local v0, "nextScenceData":Laci;
    invoke-virtual {v0}, Laci;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v4

    .line 377
    invoke-virtual {p2}, Laau;->getRawText()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-static {v4, v5}, Lacb;->a(Lacp;Ljava/lang/String;)V

    .line 380
    :cond_2
    const/16 v4, 0x230

    if-ne v4, v1, :cond_3

    .line 381
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v2

    invoke-static {p1}, Lacn;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v4

    invoke-virtual {v0}, Laci;->r()Z

    move-result v5

    invoke-static {v2, p2, v4, v5}, Laca;->a(Lacp;Laau;ZZ)V

    .line 382
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v4

    invoke-static {v2, v4}, Laca;->a(Lacp;B)V

    move v2, v3

    .line 383
    goto :goto_0

    .line 385
    :cond_3
    const/16 v4, 0x210

    if-ne v4, v1, :cond_4

    .line 386
    invoke-virtual {p0, v0, p2}, Lacn;->a(Lace;Laau;)V

    move v2, v3

    .line 388
    goto :goto_0

    .line 390
    :cond_4
    const/16 v4, 0x203

    if-ne v4, v1, :cond_6

    .line 391
    invoke-virtual {v0}, Laci;->s()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 392
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v2

    invoke-interface {v2}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lacn;->a(Landroid/content/Context;)V

    .line 395
    :cond_5
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v2

    iget-object v4, p0, Lacn;->c:Lacr;

    .line 394
    invoke-static {v2, v4, p2, v0, p1}, Laca;->a(Lacp;Lacr;Laau;Laci;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    move v2, v3

    .line 401
    goto/16 :goto_0

    .line 403
    :cond_6
    const/16 v4, 0x204

    if-ne v4, v1, :cond_7

    .line 406
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v2

    .line 405
    invoke-static {v2, p2, v0}, Laca;->a(Lacp;Laau;Laci;)V

    move v2, v3

    .line 410
    goto/16 :goto_0

    .line 412
    :cond_7
    const/16 v4, 0x205

    if-ne v4, v1, :cond_8

    .line 415
    invoke-virtual {p0}, Lacn;->b()Lacp;

    move-result-object v2

    .line 414
    invoke-static {v2, p2, v0, v3}, Laca;->a(Lacp;Laau;Laci;Z)V

    move v2, v3

    .line 419
    goto/16 :goto_0

    .line 421
    :cond_8
    const/16 v4, 0x206

    if-ne v4, v1, :cond_0

    .line 422
    invoke-virtual {v0}, Laci;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p2, v2}, Lacn;->a(Lacf;Laau;Ljava/lang/String;)V

    move v2, v3

    .line 423
    goto/16 :goto_0
.end method
