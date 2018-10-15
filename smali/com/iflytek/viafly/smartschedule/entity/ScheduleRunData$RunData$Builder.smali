.class public final Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ScheduleRunData.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;",
        ">;",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private rundata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 990
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    .line 881
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->maybeForceBuilderInitialization()V

    .line 882
    return-void
.end method

.method static synthetic access$1000()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1

    .prologue
    .line 875
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->create()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->buildParsed()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    .line 916
    .local v0, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 918
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 920
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1

    .prologue
    .line 887
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRundataIsMutable()V
    .locals 2

    .prologue
    .line 992
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    .line 994
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    .line 996
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 885
    return-void
.end method


# virtual methods
.method public addAllRundata(Ljava/lang/Iterable;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;",
            ">;)",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;"
        }
    .end annotation

    .prologue
    .line 1059
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;>;"
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1060
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1062
    return-object p0
.end method

.method public addRundata(ILcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1053
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1055
    return-object p0
.end method

.method public addRundata(ILcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 1035
    if-nez p2, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1038
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1039
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1041
    return-object p0
.end method

.method public addRundata(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1046
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    return-object p0
.end method

.method public addRundata(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1
    .param p1, "value"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 1025
    if-nez p1, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1028
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1029
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    return-object p0
.end method

.method public build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    .line 907
    .local v0, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 910
    :cond_0
    return-object v0
.end method

.method public buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 4

    .prologue
    .line 924
    new-instance v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$1;)V

    .line 925
    .local v1, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    .line 926
    .local v0, "from_bitField0_":I
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 927
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    .line 928
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    .line 930
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->access$1202(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;Ljava/util/List;)Ljava/util/List;

    .line 931
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->clear()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1

    .prologue
    .line 891
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 892
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    .line 893
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    .line 894
    return-object p0
.end method

.method public clearRundata()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1

    .prologue
    .line 1065
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    .line 1066
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    .line 1068
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 2

    .prologue
    .line 898
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->create()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

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
    .line 875
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->clone()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1

    .prologue
    .line 902
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public getRundata(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    return-object v0
.end method

.method public getRundataCount()I
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRundataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->getRundataCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 951
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->getRundata(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 953
    const/4 v1, 0x0

    .line 956
    :goto_1
    return v1

    .line 950
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 956
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 875
    check-cast p1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

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
    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

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
    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 965
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 970
    invoke-virtual {p0, p1, p2, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 972
    :sswitch_0
    return-object p0

    .line 977
    :sswitch_1
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 978
    .local v0, "subBuilder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$a;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 979
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->addRundata(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    goto :goto_0

    .line 965
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 2
    .param p1, "other"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    .prologue
    .line 935
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-object p0

    .line 936
    :cond_1
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->access$1200(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->access$1200(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    .line 939
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->bitField0_:I

    goto :goto_0

    .line 941
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 942
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->access$1200(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public removeRundata(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1072
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1074
    return-object p0
.end method

.method public setRundata(ILcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1020
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1022
    return-object p0
.end method

.method public setRundata(ILcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 1009
    if-nez p2, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1012
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->ensureRundataIsMutable()V

    .line 1013
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1015
    return-object p0
.end method
