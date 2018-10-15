.class public final enum Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
.super Ljava/lang/Enum;
.source "ScheduleConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/ScheduleConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordRingSubType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

.field public static final enum MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

.field public static final enum NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

.field public static final enum REMIND:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 413
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    const-string/jumbo v1, "MORNING"

    const-string/jumbo v2, "morning"

    invoke-direct {v0, v1, v3, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    .line 414
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    const-string/jumbo v1, "NIGHT"

    const-string/jumbo v2, "night"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    .line 415
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    const-string/jumbo v1, "REMIND"

    const-string/jumbo v2, "remind"

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->REMIND:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    .line 412
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->REMIND:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

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
    .line 418
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 419
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->mValue:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    const-class v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    return-object v0
.end method

.method public static valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 427
    if-nez p0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-object v0

    .line 430
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    goto :goto_0

    .line 432
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    goto :goto_0

    .line 434
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->REMIND:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->REMIND:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    goto :goto_0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    return-object v0
.end method


# virtual methods
.method public ValueOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->mValue:Ljava/lang/String;

    return-object v0
.end method
