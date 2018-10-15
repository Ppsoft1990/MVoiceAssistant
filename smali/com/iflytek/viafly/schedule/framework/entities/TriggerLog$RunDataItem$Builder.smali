.class public final Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TriggerLog.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;",
        ">;",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItemOrBuilder;"
    }
.end annotation


# instance fields
.field private alarmtriggertime_:J

.field private alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

.field private bitField0_:I

.field private createtime_:J

.field private finishtime_:J

.field private scheduleid_:I

.field private scheduletriggertime_:J

.field private status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

.field private uuid_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 697
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 763
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 408
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->maybeForceBuilderInitialization()V

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->buildParsed()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->create()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    .line 457
    .local v0, "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 461
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method


# virtual methods
.method public build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    .line 448
    .local v0, "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 451
    :cond_0
    return-object v0
.end method

.method public buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 6

    .prologue
    .line 465
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$1;)V

    .line 466
    .local v1, "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 467
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 468
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 469
    or-int/lit8 v2, v2, 0x1

    .line 471
    :cond_0
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->uuid_:I

    invoke-static {v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$302(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;I)I

    .line 472
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 473
    or-int/lit8 v2, v2, 0x2

    .line 475
    :cond_1
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduleid_:I

    invoke-static {v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$402(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;I)I

    .line 476
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 477
    or-int/lit8 v2, v2, 0x4

    .line 479
    :cond_2
    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduletriggertime_:J

    invoke-static {v1, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$502(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J

    .line 480
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 481
    or-int/lit8 v2, v2, 0x8

    .line 483
    :cond_3
    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alarmtriggertime_:J

    invoke-static {v1, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$602(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J

    .line 484
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 485
    or-int/lit8 v2, v2, 0x10

    .line 487
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$702(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 488
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 489
    or-int/lit8 v2, v2, 0x20

    .line 491
    :cond_5
    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->createtime_:J

    invoke-static {v1, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$802(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J

    .line 492
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 493
    or-int/lit8 v2, v2, 0x40

    .line 495
    :cond_6
    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->finishtime_:J

    invoke-static {v1, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$902(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J

    .line 496
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 497
    or-int/lit16 v2, v2, 0x80

    .line 499
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$1002(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 500
    invoke-static {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->access$1102(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;I)I

    .line 501
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->clear()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 418
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 419
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->uuid_:I

    .line 420
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 421
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduleid_:I

    .line 422
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 423
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduletriggertime_:J

    .line 424
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 425
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alarmtriggertime_:J

    .line 426
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 427
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 428
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 429
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->createtime_:J

    .line 430
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 431
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->finishtime_:J

    .line 432
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 433
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 434
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 435
    return-object p0
.end method

.method public clearAlarmtriggertime()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 690
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 691
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alarmtriggertime_:J

    .line 693
    return-object p0
.end method

.method public clearAlerttype()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 715
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 717
    return-object p0
.end method

.method public clearCreatetime()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 735
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 736
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->createtime_:J

    .line 738
    return-object p0
.end method

.method public clearFinishtime()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 756
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 757
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->finishtime_:J

    .line 759
    return-object p0
.end method

.method public clearScheduleid()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduleid_:I

    .line 651
    return-object p0
.end method

.method public clearScheduletriggertime()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 670
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduletriggertime_:J

    .line 672
    return-object p0
.end method

.method public clearStatus()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 781
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 783
    return-object p0
.end method

.method public clearUuid()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->uuid_:I

    .line 630
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->create()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmtriggertime()J
    .locals 2

    .prologue
    .line 681
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alarmtriggertime_:J

    return-wide v0
.end method

.method public getAlerttype()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    return-object v0
.end method

.method public getCreatetime()J
    .locals 2

    .prologue
    .line 726
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->createtime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getDefaultInstance()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getFinishtime()J
    .locals 2

    .prologue
    .line 747
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->finishtime_:J

    return-wide v0
.end method

.method public getScheduleid()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduleid_:I

    return v0
.end method

.method public getScheduletriggertime()J
    .locals 2

    .prologue
    .line 660
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduletriggertime_:J

    return-wide v0
.end method

.method public getStatus()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    return-object v0
.end method

.method public getUuid()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->uuid_:I

    return v0
.end method

.method public hasAlarmtriggertime()Z
    .locals 2

    .prologue
    .line 678
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAlerttype()Z
    .locals 2

    .prologue
    .line 699
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreatetime()Z
    .locals 2

    .prologue
    .line 723
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFinishtime()Z
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScheduleid()Z
    .locals 2

    .prologue
    .line 636
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScheduletriggertime()Z
    .locals 2

    .prologue
    .line 657
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 765
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 615
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->hasUuid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 402
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 547
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 552
    invoke-virtual {p0, p1, p2, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 554
    :sswitch_0
    return-object p0

    .line 559
    :sswitch_1
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 560
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->uuid_:I

    goto :goto_0

    .line 564
    :sswitch_2
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 565
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduleid_:I

    goto :goto_0

    .line 569
    :sswitch_3
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 570
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduletriggertime_:J

    goto :goto_0

    .line 574
    :sswitch_4
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 575
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alarmtriggertime_:J

    goto :goto_0

    .line 579
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 580
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->valueOf(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    move-result-object v2

    .line 581
    .local v2, "value":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    if-eqz v2, :cond_0

    .line 582
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 583
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    goto :goto_0

    .line 588
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    :sswitch_6
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 589
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->createtime_:J

    goto :goto_0

    .line 593
    :sswitch_7
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 594
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->finishtime_:J

    goto :goto_0

    .line 598
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 599
    .restart local v0    # "rawValue":I
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->valueOf(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    move-result-object v2

    .line 600
    .local v2, "value":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
    if-eqz v2, :cond_0

    .line 601
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 602
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    goto/16 :goto_0

    .line 547
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 2
    .param p1, "other"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .prologue
    .line 505
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getDefaultInstance()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-object p0

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getUuid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setUuid(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 509
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasScheduleid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getScheduleid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setScheduleid(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 512
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasScheduletriggertime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getScheduletriggertime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setScheduletriggertime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 515
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasAlarmtriggertime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getAlarmtriggertime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setAlarmtriggertime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 518
    :cond_5
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasAlerttype()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 519
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getAlerttype()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setAlerttype(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 521
    :cond_6
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasCreatetime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 522
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getCreatetime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setCreatetime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 524
    :cond_7
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasFinishtime()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 525
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getFinishtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setFinishtime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 527
    :cond_8
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getStatus()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    goto :goto_0
.end method

.method public setAlarmtriggertime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 684
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 685
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alarmtriggertime_:J

    .line 687
    return-object p0
.end method

.method public setAlerttype(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .prologue
    .line 705
    if-nez p1, :cond_0

    .line 706
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 708
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 709
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 711
    return-object p0
.end method

.method public setCreatetime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 729
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 730
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->createtime_:J

    .line 732
    return-object p0
.end method

.method public setFinishtime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 750
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 751
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->finishtime_:J

    .line 753
    return-object p0
.end method

.method public setScheduleid(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 642
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 643
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduleid_:I

    .line 645
    return-object p0
.end method

.method public setScheduletriggertime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 663
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 664
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->scheduletriggertime_:J

    .line 666
    return-object p0
.end method

.method public setStatus(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 774
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 775
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 777
    return-object p0
.end method

.method public setUuid(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 621
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->bitField0_:I

    .line 622
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->uuid_:I

    .line 624
    return-object p0
.end method
