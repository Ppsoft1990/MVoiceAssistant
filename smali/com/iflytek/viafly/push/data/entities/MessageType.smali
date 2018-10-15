.class public final enum Lcom/iflytek/viafly/push/data/entities/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/push/data/entities/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum ChannelSample:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum FeedBack:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum Greeting:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum HotSchedule:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum InnerTest:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum LockScreen:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewLayout:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewPass:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewPlugin:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewProduct:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewSkin:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewTheme:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewVersion:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum NewVersionUp:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum OPActivities:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum OralGame:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum SpeakExample:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum SpokenEvaluate:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum StoryNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum Violation:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum common:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

.field public static final enum silentNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewProduct"

    const-string/jumbo v2, "1001"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewProduct:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewSkin"

    const-string/jumbo v2, "1002"

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewSkin:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewPass"

    const-string/jumbo v2, "1003"

    invoke-direct {v0, v1, v6, v2}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewPass:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewPlugin"

    const-string/jumbo v2, "1004"

    invoke-direct {v0, v1, v7, v2}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewPlugin:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 25
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "FeedBack"

    const-string/jumbo v2, "1005"

    invoke-direct {v0, v1, v8, v2}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->FeedBack:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewVersion"

    const/4 v2, 0x5

    const-string/jumbo v3, "1006"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewVersion:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 31
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewVersionUp"

    const/4 v2, 0x6

    const-string/jumbo v3, "1007"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewVersionUp:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 34
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "InnerTest"

    const/4 v2, 0x7

    const-string/jumbo v3, "1008"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->InnerTest:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 37
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewTheme"

    const/16 v2, 0x8

    const-string/jumbo v3, "1009"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewTheme:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 40
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "NewLayout"

    const/16 v2, 0x9

    const-string/jumbo v3, "1010"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewLayout:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 43
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "OPActivities"

    const/16 v2, 0xa

    const-string/jumbo v3, "1011"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->OPActivities:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 46
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "Greeting"

    const/16 v2, 0xb

    const-string/jumbo v3, "1012"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->Greeting:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 49
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "Violation"

    const/16 v2, 0xc

    const-string/jumbo v3, "1013"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->Violation:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 52
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "ChannelSample"

    const/16 v2, 0xd

    const-string/jumbo v3, "1017"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->ChannelSample:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 55
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "SpokenEvaluate"

    const/16 v2, 0xe

    const-string/jumbo v3, "1018"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->SpokenEvaluate:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 58
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "StoryNotice"

    const/16 v2, 0xf

    const-string/jumbo v3, "1019"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->StoryNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 61
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "LockScreen"

    const/16 v2, 0x10

    const-string/jumbo v3, "1020"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->LockScreen:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 64
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "SpeakExample"

    const/16 v2, 0x11

    const-string/jumbo v3, "1021"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->SpeakExample:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 67
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "HotSchedule"

    const/16 v2, 0x12

    const-string/jumbo v3, "1022"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->HotSchedule:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 70
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "OralGame"

    const/16 v2, 0x13

    const-string/jumbo v3, "1023"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->OralGame:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 73
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "newNotice"

    const/16 v2, 0x14

    const-string/jumbo v3, "1024"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 76
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "silentNotice"

    const/16 v2, 0x15

    const-string/jumbo v3, "1025"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->silentNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 79
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    const-string/jumbo v1, "common"

    const/16 v2, 0x16

    const-string/jumbo v3, "-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->common:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 10
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/iflytek/viafly/push/data/entities/MessageType;

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewProduct:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewSkin:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewPass:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewPlugin:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->FeedBack:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewVersion:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewVersionUp:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->InnerTest:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewTheme:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewLayout:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->OPActivities:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->Greeting:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->Violation:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->ChannelSample:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->SpokenEvaluate:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->StoryNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->LockScreen:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->SpeakExample:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->HotSchedule:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->OralGame:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->silentNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->common:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->$VALUES:[Lcom/iflytek/viafly/push/data/entities/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lcom/iflytek/viafly/push/data/entities/MessageType;->value:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static getCommon()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewProduct:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewSkin:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewPass:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewPlugin:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->FeedBack:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewVersion:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewVersionUp:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->InnerTest:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewTheme:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->NewLayout:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->OPActivities:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->SpokenEvaluate:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->LockScreen:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->OralGame:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v0
.end method

.method public static isCommon(Lcom/iflytek/viafly/push/data/entities/MessageType;)Z
    .locals 5
    .param p0, "type"    # Lcom/iflytek/viafly/push/data/entities/MessageType;

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 130
    const/4 v2, 0x0

    .line 140
    :cond_0
    :goto_0
    return v2

    .line 132
    :cond_1
    const/4 v2, 0x0

    .line 133
    .local v2, "ret":Z
    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MessageType;->getCommon()Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "commonTypes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 135
    .local v1, "item":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-virtual {v1, p0}, Lcom/iflytek/viafly/push/data/entities/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    const/4 v2, 0x1

    .line 137
    goto :goto_0
.end method

.method public static isInList(Ljava/util/List;Lcom/iflytek/viafly/push/data/entities/MessageType;)Z
    .locals 4
    .param p1, "type"    # Lcom/iflytek/viafly/push/data/entities/MessageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ">;",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    const/4 v1, 0x0

    .line 155
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 159
    .local v0, "messageType":Lcom/iflytek/viafly/push/data/entities/MessageType;
    if-ne p1, v0, :cond_2

    .line 160
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static varargs toList([Lcom/iflytek/viafly/push/data/entities/MessageType;)Ljava/util/List;
    .locals 4
    .param p0, "types"    # [Lcom/iflytek/viafly/push/data/entities/MessageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 145
    :cond_0
    const/4 v1, 0x0

    .line 151
    :cond_1
    return-object v1

    .line 147
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 149
    .local v0, "item":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    return-object v0
.end method

.method public static valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p0, :cond_1

    move-object v0, v2

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MessageType;->values()[Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v1

    .line 97
    .local v1, "types":[Lcom/iflytek/viafly/push/data/entities/MessageType;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 98
    .local v0, "item":Lcom/iflytek/viafly/push/data/entities/MessageType;
    iget-object v5, v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->value:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "item":Lcom/iflytek/viafly/push/data/entities/MessageType;
    :cond_2
    move-object v0, v2

    .line 102
    goto :goto_0
.end method

.method public static values()[Lcom/iflytek/viafly/push/data/entities/MessageType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->$VALUES:[Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/push/data/entities/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/push/data/entities/MessageType;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/push/data/entities/MessageType;->value:Ljava/lang/String;

    return-object v0
.end method
