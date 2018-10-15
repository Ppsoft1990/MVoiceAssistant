.class public final enum Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;
.super Ljava/lang/Enum;
.source "TrafficWarnTriggerSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

.field public static final enum fee_card:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

.field public static final enum local_monitor:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

.field public static final enum notification:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

.field public static final enum schedule_init:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    const-string/jumbo v1, "notification"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->notification:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .line 17
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    const-string/jumbo v1, "fee_card"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->fee_card:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    const-string/jumbo v1, "local_monitor"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->local_monitor:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .line 27
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    const-string/jumbo v1, "schedule_init"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->schedule_init:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->notification:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->fee_card:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->local_monitor:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->schedule_init:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->$VALUES:[Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->$VALUES:[Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    return-object v0
.end method
