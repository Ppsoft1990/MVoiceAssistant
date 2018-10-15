.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;
.super Ljava/lang/Enum;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScheduleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

.field public static final enum ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

.field public static final enum COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    const-string/jumbo v1, "COMMON"

    const-string/jumbo v2, "common"

    invoke-direct {v0, v1, v3, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 166
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    const-string/jumbo v1, "ALARMCLOCK"

    const-string/jumbo v2, "alarmclock"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->mValue:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    return-object v0
.end method

.method public static valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string/jumbo v0, "common"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 185
    :goto_0
    return-object v0

    .line 182
    :cond_0
    const-string/jumbo v0, "alarmclock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->mValue:Ljava/lang/String;

    return-object v0
.end method
