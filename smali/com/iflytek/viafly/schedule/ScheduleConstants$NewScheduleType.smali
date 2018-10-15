.class public final enum Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;
.super Ljava/lang/Enum;
.source "ScheduleConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/ScheduleConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NewScheduleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum MANUAL_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum MANUAL_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum PUSH_ADD:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum PUSH_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum PUSH_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum REPEAT_TYPE:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum SPEECH_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

.field public static final enum SPEECH_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 329
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "SPEECH_ALARMCLOCK"

    const-string/jumbo v2, "speech_alarmclock"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->SPEECH_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 330
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "SPEECH_COMMON"

    const-string/jumbo v2, "speech_common"

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->SPEECH_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 331
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "MANUAL_ALARMCLOCK"

    const-string/jumbo v2, "manual_alarmclock"

    invoke-direct {v0, v1, v6, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->MANUAL_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 332
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "MANUAL_COMMON"

    const-string/jumbo v2, "manual_common"

    invoke-direct {v0, v1, v7, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->MANUAL_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 333
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "PUSH_ADD"

    const-string/jumbo v2, "push_add"

    invoke-direct {v0, v1, v8, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->PUSH_ADD:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 334
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "PUSH_ALARMCLOCK"

    const/4 v2, 0x5

    const-string/jumbo v3, "push_alarmclock"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->PUSH_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 335
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "PUSH_COMMON"

    const/4 v2, 0x6

    const-string/jumbo v3, "push_common"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->PUSH_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 336
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    const-string/jumbo v1, "REPEAT_TYPE"

    const/4 v2, 0x7

    const-string/jumbo v3, "repeat_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->REPEAT_TYPE:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    .line 328
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->SPEECH_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->SPEECH_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->MANUAL_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->MANUAL_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->PUSH_ADD:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->PUSH_ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->PUSH_COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->REPEAT_TYPE:Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

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
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 339
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->mValue:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    const-class v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;

    return-object v0
.end method


# virtual methods
.method public ValueOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$NewScheduleType;->mValue:Ljava/lang/String;

    return-object v0
.end method
