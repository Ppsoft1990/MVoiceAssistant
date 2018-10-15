.class public final Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ScheduleRunData.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    }
.end annotation


# static fields
.field public static final RUNDATA_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1081
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;-><init>(Z)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    .line 1082
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->initFields()V

    .line 1083
    return-void
.end method

.method private constructor <init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    .prologue
    const/4 v0, -0x1

    .line 720
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 757
    iput-byte v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedIsInitialized:B

    .line 780
    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedSerializedSize:I

    .line 721
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .param p2, "x1"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$1;

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 722
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 757
    iput-byte v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedIsInitialized:B

    .line 780
    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedSerializedSize:I

    .line 722
    return-void
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1

    .prologue
    .line 726
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    .line 756
    return-void
.end method

.method public static newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1

    .prologue
    .line 868
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$1000()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    .prologue
    .line 871
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    .line 838
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v1

    .line 841
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    .line 849
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v1

    .line 852
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    .line 811
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    .line 865
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    .line 833
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom([B)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    .line 822
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->access$900(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 1

    .prologue
    .line 730
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    return-object v0
.end method

.method public getRundata(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 747
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    return-object v0
.end method

.method public getRundataCount()I
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

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
    .line 737
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    return-object v0
.end method

.method public getRundataOrBuilder(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItemOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItemOrBuilder;

    return-object v0
.end method

.method public getRundataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 782
    iget v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedSerializedSize:I

    .line 783
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 791
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 785
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 787
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    .line 788
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    :cond_1
    iput v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedSerializedSize:I

    move v2, v1

    .line 791
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 759
    iget-byte v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedIsInitialized:B

    .line 760
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 769
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 760
    goto :goto_0

    .line 762
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getRundataCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 763
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getRundata(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 764
    iput-byte v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedIsInitialized:B

    move v2, v3

    .line 765
    goto :goto_0

    .line 762
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 768
    :cond_3
    iput-byte v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$a;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilderForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1

    .prologue
    .line 869
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$a;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->toBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    .locals 1

    .prologue
    .line 873
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getSerializedSize()I

    .line 775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 776
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->rundata_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_0
    return-void
.end method
