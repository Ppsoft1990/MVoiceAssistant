.class public final Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TriggerLog.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunDataItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    }
.end annotation


# static fields
.field public static final ALARMTRIGGERTIME_FIELD_NUMBER:I = 0x4

.field public static final ALERTTYPE_FIELD_NUMBER:I = 0x5

.field public static final CREATETIME_FIELD_NUMBER:I = 0x6

.field public static final FINISHTIME_FIELD_NUMBER:I = 0x7

.field public static final SCHEDULEID_FIELD_NUMBER:I = 0x2

.field public static final SCHEDULETRIGGERTIME_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x8

.field public static final UUID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

.field private static final serialVersionUID:J


# instance fields
.field private alarmtriggertime_:J

.field private alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

.field private bitField0_:I

.field private createtime_:J

.field private finishtime_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private scheduleid_:I

.field private scheduletriggertime_:J

.field private status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

.field private uuid_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 790
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;-><init>(Z)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .line 791
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->initFields()V

    .line 792
    return-void
.end method

.method private constructor <init>(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .prologue
    const/4 v0, -0x1

    .line 133
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 237
    iput-byte v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedIsInitialized:B

    .line 279
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedSerializedSize:I

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .param p2, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 135
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 237
    iput-byte v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedIsInitialized:B

    .line 279
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedSerializedSize:I

    .line 135
    return-void
.end method

.method static synthetic access$1002(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->uuid_:I

    return p1
.end method

.method static synthetic access$402(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduleid_:I

    return p1
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduletriggertime_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alarmtriggertime_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    return-object p1
.end method

.method static synthetic access$802(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->createtime_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->finishtime_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 228
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->uuid_:I

    .line 229
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduleid_:I

    .line 230
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduletriggertime_:J

    .line 231
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alarmtriggertime_:J

    .line 232
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 233
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->createtime_:J

    .line 234
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->finishtime_:J

    .line 235
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 236
    return-void
.end method

.method public static newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$100()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .prologue
    .line 398
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    .line 365
    .local v0, "builder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    .line 368
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    .line 376
    .local v0, "builder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    .line 379
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 338
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 360
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom([B)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 349
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->access$000(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlarmtriggertime()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alarmtriggertime_:J

    return-wide v0
.end method

.method public getAlerttype()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    return-object v0
.end method

.method public getCreatetime()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->createtime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->defaultInstance:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    return-object v0
.end method

.method public getFinishtime()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->finishtime_:J

    return-wide v0
.end method

.method public getScheduleid()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduleid_:I

    return v0
.end method

.method public getScheduletriggertime()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduletriggertime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 281
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedSerializedSize:I

    .line 282
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 318
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 284
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 285
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 286
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->uuid_:I

    .line 287
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 289
    :cond_1
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 290
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduleid_:I

    .line 291
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 293
    :cond_2
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 294
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduletriggertime_:J

    .line 295
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    :cond_3
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 298
    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alarmtriggertime_:J

    .line 299
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    :cond_4
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 302
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 303
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 305
    :cond_5
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 306
    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->createtime_:J

    .line 307
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 309
    :cond_6
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 310
    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->finishtime_:J

    .line 311
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 313
    :cond_7
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 314
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 315
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->getNumber()I

    move-result v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    :cond_8
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedSerializedSize:I

    move v1, v0

    .line 318
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getStatus()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    return-object v0
.end method

.method public getUuid()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->uuid_:I

    return v0
.end method

.method public hasAlarmtriggertime()Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

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
    .line 191
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

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
    .line 201
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

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
    .line 211
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

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
    .line 161
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

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
    .line 171
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

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
    .line 221
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

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

    .line 151
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 239
    iget-byte v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedIsInitialized:B

    .line 240
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 247
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 240
    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->hasUuid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 243
    iput-byte v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedIsInitialized:B

    move v1, v2

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    iput-byte v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$a;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilderForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 396
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$a;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->toBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .locals 1

    .prologue
    .line 400
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

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
    .line 325
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 252
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getSerializedSize()I

    .line 253
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 254
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->uuid_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 256
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 257
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduleid_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 259
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 260
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->scheduletriggertime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 262
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 263
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alarmtriggertime_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 265
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 266
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->alerttype_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 268
    :cond_4
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 269
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->createtime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 271
    :cond_5
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 272
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->finishtime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 274
    :cond_6
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 275
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->status_:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 277
    :cond_7
    return-void
.end method
