.class public final Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ScheduleRunData.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunDataItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATETIME_FIELD_NUMBER:I = 0x3

.field public static final EXTRA_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final SHOWLOCATION_FIELD_NUMBER:I = 0x4

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private createtime_:J

.field private extra_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

.field private status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 699
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;-><init>(Z)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .line 700
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->initFields()V

    .line 701
    return-void
.end method

.method private constructor <init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .prologue
    const/4 v0, -0x1

    .line 127
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 242
    iput-byte v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedIsInitialized:B

    .line 275
    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedSerializedSize:I

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .param p2, "x1"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 242
    iput-byte v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedIsInitialized:B

    .line 275
    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedSerializedSize:I

    .line 129
    return-void
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p1, "x1"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    return-object p1
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p1, "x1"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->createtime_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p1, "x1"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    return-object p1
.end method

.method static synthetic access$702(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->extra_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    return-object v0
.end method

.method private getExtraBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->extra_:Ljava/lang/Object;

    .line 225
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 226
    check-cast v1, Ljava/lang/String;

    .line 227
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 228
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->extra_:Ljava/lang/Object;

    .line 231
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->name_:Ljava/lang/Object;

    .line 163
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 164
    check-cast v1, Ljava/lang/String;

    .line 165
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 166
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->name_:Ljava/lang/Object;

    .line 169
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 236
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->name_:Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->createtime_:J

    .line 239
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->notification:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .line 240
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->extra_:Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public static newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$100()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 382
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 349
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    .line 352
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 360
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    .line 363
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 322
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 344
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom([B)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 333
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCreatetime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->createtime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->extra_:Ljava/lang/Object;

    .line 211
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 212
    check-cast v1, Ljava/lang/String;

    .line 220
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 214
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 216
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->extra_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 220
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->name_:Ljava/lang/Object;

    .line 149
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 150
    check-cast v1, Ljava/lang/String;

    .line 158
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 152
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 154
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 158
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 277
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedSerializedSize:I

    .line 278
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 302
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 280
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 281
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 285
    :cond_1
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 286
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 287
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 289
    :cond_2
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 290
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->createtime_:J

    .line 291
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 293
    :cond_3
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 294
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    .line 295
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->getNumber()I

    move-result v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    :cond_4
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 298
    const/4 v2, 0x5

    .line 299
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    :cond_5
    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedSerializedSize:I

    move v1, v0

    .line 302
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getShowlocation()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    return-object v0
.end method

.method public hasCreatetime()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

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
    .line 207
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

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

    .line 145
    iget v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

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
    .line 197
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

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
    .line 177
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    iget-byte v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedIsInitialized:B

    .line 245
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 252
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 245
    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->hasName()Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    iput-byte v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedIsInitialized:B

    move v1, v2

    .line 249
    goto :goto_0

    .line 251
    :cond_2
    iput-byte v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$a;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilderForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$a;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->toBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 384
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

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
    .line 309
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getSerializedSize()I

    .line 258
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 261
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->status_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 264
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 265
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->createtime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 267
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 268
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->showlocation_:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->getNumber()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 270
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 271
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 273
    :cond_4
    return-void
.end method
