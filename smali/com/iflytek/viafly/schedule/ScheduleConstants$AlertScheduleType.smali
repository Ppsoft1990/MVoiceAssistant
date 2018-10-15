.class public final enum Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;
.super Ljava/lang/Enum;
.source "ScheduleConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/ScheduleConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertScheduleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

.field public static final enum ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

.field public static final enum COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

.field public static final enum PUSH:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    const-string/jumbo v1, "ALARMCLOCK"

    const-string/jumbo v2, "alarmclock"

    invoke-direct {v0, v1, v3, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    .line 353
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    const-string/jumbo v1, "COMMON"

    const-string/jumbo v2, "common"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    .line 354
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    const-string/jumbo v1, "PUSH"

    const-string/jumbo v2, "push"

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->PUSH:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    .line 351
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->PUSH:Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

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
    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 357
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->mValue:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    const-class v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;

    return-object v0
.end method


# virtual methods
.method public ValueOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$AlertScheduleType;->mValue:Ljava/lang/String;

    return-object v0
.end method
