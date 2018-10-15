.class public final Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ScheduleRunData.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;",
        ">;",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private createtime_:J

.field private extra_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

.field private status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 555
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 636
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->notification:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .line 660
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    .line 392
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->maybeForceBuilderInitialization()V

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->buildParsed()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->create()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    .line 435
    .local v0, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 439
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method


# virtual methods
.method public build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    .line 426
    .local v0, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 429
    :cond_0
    return-object v0
.end method

.method public buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 6

    .prologue
    .line 443
    new-instance v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$1;)V

    .line 444
    .local v1, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 445
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 446
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 447
    or-int/lit8 v2, v2, 0x1

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->access$302(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 451
    or-int/lit8 v2, v2, 0x2

    .line 453
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->access$402(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 454
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 455
    or-int/lit8 v2, v2, 0x4

    .line 457
    :cond_2
    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->createtime_:J

    invoke-static {v1, v4, v5}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->access$502(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;J)J

    .line 458
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 459
    or-int/lit8 v2, v2, 0x8

    .line 461
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->access$602(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .line 462
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 463
    or-int/lit8 v2, v2, 0x10

    .line 465
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->access$702(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {v1, v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->access$802(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;I)I

    .line 467
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->clear()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 403
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    .line 404
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 405
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 406
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 407
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->createtime_:J

    .line 408
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 409
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->notification:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .line 410
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 411
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    .line 412
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 413
    return-object p0
.end method

.method public clearCreatetime()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 630
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->createtime_:J

    .line 632
    return-object p0
.end method

.method public clearExtra()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 685
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    .line 687
    return-object p0
.end method

.method public clearName()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 580
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    .line 582
    return-object p0
.end method

.method public clearShowlocation()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 654
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->notification:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .line 656
    return-object p0
.end method

.method public clearStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 609
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 611
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->create()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

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
    .line 386
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreatetime()J
    .locals 2

    .prologue
    .line 620
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->createtime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    .line 666
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 667
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    .line 671
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    .line 561
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 562
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    .line 566
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getShowlocation()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    return-object v0
.end method

.method public hasCreatetime()Z
    .locals 2

    .prologue
    .line 617
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

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

.method public hasExtra()Z
    .locals 2

    .prologue
    .line 662
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 557
    iget v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShowlocation()Z
    .locals 2

    .prologue
    .line 638
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 593
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 386
    check-cast p1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

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
    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

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
    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 504
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 509
    invoke-virtual {p0, p1, p2, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 511
    :sswitch_0
    return-object p0

    .line 516
    :sswitch_1
    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 517
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 521
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 522
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->valueOf(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v2

    .line 523
    .local v2, "value":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    if-eqz v2, :cond_0

    .line 524
    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 525
    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    goto :goto_0

    .line 530
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    :sswitch_3
    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 531
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->createtime_:J

    goto :goto_0

    .line 535
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 536
    .restart local v0    # "rawValue":I
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->valueOf(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    move-result-object v2

    .line 537
    .local v2, "value":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;
    if-eqz v2, :cond_0

    .line 538
    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 539
    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    goto :goto_0

    .line 544
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;
    :sswitch_5
    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 545
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    goto :goto_0

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 2
    .param p1, "other"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 471
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-object p0

    .line 472
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setName(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 475
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 478
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->hasCreatetime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getCreatetime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setCreatetime(J)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 481
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->hasShowlocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 482
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getShowlocation()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setShowlocation(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 484
    :cond_5
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setExtra(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    goto :goto_0
.end method

.method public setCreatetime(J)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 623
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 624
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->createtime_:J

    .line 626
    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 678
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 679
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    .line 681
    return-object p0
.end method

.method setExtra(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 690
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 691
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->extra_:Ljava/lang/Object;

    .line 693
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 573
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 574
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    .line 576
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 585
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 586
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->name_:Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public setShowlocation(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 647
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 648
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .line 650
    return-object p0
.end method

.method public setStatus(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1
    .param p1, "value"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 602
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->bitField0_:I

    .line 603
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 605
    return-object p0
.end method
