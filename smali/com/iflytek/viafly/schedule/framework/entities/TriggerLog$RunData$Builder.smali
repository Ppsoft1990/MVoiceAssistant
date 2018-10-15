.class public final Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TriggerLog.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;",
        ">;",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private rundata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    .line 972
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->maybeForceBuilderInitialization()V

    .line 973
    return-void
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->buildParsed()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1

    .prologue
    .line 966
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->create()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v0

    .line 1007
    .local v0, "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1008
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 1009
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1011
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1

    .prologue
    .line 978
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRundataIsMutable()V
    .locals 2

    .prologue
    .line 1083
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    .line 1085
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    .line 1087
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 976
    return-void
.end method


# virtual methods
.method public addAllRundata(Ljava/lang/Iterable;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;",
            ">;)",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;"
        }
    .end annotation

    .prologue
    .line 1150
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1151
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1153
    return-object p0
.end method

.method public addRundata(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1144
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1146
    return-object p0
.end method

.method public addRundata(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .prologue
    .line 1126
    if-nez p2, :cond_0

    .line 1127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1129
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1130
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1132
    return-object p0
.end method

.method public addRundata(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1137
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    return-object p0
.end method

.method public addRundata(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1
    .param p1, "value"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .prologue
    .line 1116
    if-nez p1, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1119
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1120
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    return-object p0
.end method

.method public build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .locals 2

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v0

    .line 998
    .local v0, "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1001
    :cond_0
    return-object v0
.end method

.method public buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .locals 4

    .prologue
    .line 1015
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$1;)V

    .line 1016
    .local v1, "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    .line 1017
    .local v0, "from_bitField0_":I
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    .line 1019
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    .line 1021
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->access$1502(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;Ljava/util/List;)Ljava/util/List;

    .line 1022
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->clear()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1

    .prologue
    .line 982
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 983
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    .line 984
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    .line 985
    return-object p0
.end method

.method public clearRundata()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1

    .prologue
    .line 1156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    .line 1157
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    .line 1159
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 2

    .prologue
    .line 989
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->create()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->mergeFrom(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

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
    .line 966
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->clone()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .locals 1

    .prologue
    .line 993
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->getDefaultInstance()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v0

    return-object v0
.end method

.method public getRundata(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    return-object v0
.end method

.method public getRundataCount()I
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

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
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1041
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->getRundataCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1042
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->getRundata(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    const/4 v1, 0x0

    .line 1047
    :goto_1
    return v1

    .line 1041
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 966
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->mergeFrom(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

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
    .line 966
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

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
    .line 966
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1056
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1061
    invoke-virtual {p0, p1, p2, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1063
    :sswitch_0
    return-object p0

    .line 1068
    :sswitch_1
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    .line 1069
    .local v0, "subBuilder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$a;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1070
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->buildPartial()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->addRundata(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    goto :goto_0

    .line 1056
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 2
    .param p1, "other"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    .prologue
    .line 1026
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->getDefaultInstance()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-object p0

    .line 1027
    :cond_1
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->access$1500(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1029
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->access$1500(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    .line 1030
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->bitField0_:I

    goto :goto_0

    .line 1032
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1033
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->access$1500(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public removeRundata(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1163
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1165
    return-object p0
.end method

.method public setRundata(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1111
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1113
    return-object p0
.end method

.method public setRundata(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .prologue
    .line 1100
    if-nez p2, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->ensureRundataIsMutable()V

    .line 1104
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1106
    return-object p0
.end method
