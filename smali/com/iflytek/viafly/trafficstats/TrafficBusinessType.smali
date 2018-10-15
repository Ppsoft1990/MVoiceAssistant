.class public final enum Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;
.super Ljava/lang/Enum;
.source "TrafficBusinessType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

.field public static final enum All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

.field public static final enum Music:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

.field public static final enum Video:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    const-string/jumbo v1, "All"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    const-string/jumbo v1, "Video"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->Video:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 14
    new-instance v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    const-string/jumbo v1, "Music"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->Music:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    sget-object v1, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->Video:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->Music:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->$VALUES:[Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->$VALUES:[Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    return-object v0
.end method
