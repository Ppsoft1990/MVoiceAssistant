.class public final enum Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
.super Ljava/lang/Enum;
.source "TrafficInfoAvailableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrafficInfoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

.field public static final enum ACROSSMONTH:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

.field public static final enum AVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

.field public static final enum IMSICHANGE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

.field public static final enum UNAVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    const-string/jumbo v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->AVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    const-string/jumbo v1, "ACROSSMONTH"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->ACROSSMONTH:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    const-string/jumbo v1, "IMSICHANGE"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->IMSICHANGE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    const-string/jumbo v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->UNAVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->AVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->ACROSSMONTH:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->IMSICHANGE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->UNAVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->$VALUES:[Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->$VALUES:[Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    return-object v0
.end method
