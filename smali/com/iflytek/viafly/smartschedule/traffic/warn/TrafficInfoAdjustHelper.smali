.class public Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;
.super Ljava/lang/Object;
.source "TrafficInfoAdjustHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficInfoAdjustHelper"


# instance fields
.field private mListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

.field private mTrafficInfoRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

.field private mTrafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->mTrafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->mTrafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    invoke-direct {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->mTrafficInfoRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    return-object v0
.end method

.method private startadjustTrafficInfo()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "TrafficInfoAdjustHelper"

    const-string/jumbo v1, "startadjustTrafficInfo "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->mTrafficInfoRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->mTrafficInfoRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;->request()V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustTrafficInfo(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    .prologue
    .line 29
    const-string/jumbo v0, "TrafficInfoAdjustHelper"

    const-string/jumbo v1, "adjustTrafficInfo"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 31
    :cond_0
    const-string/jumbo v0, "TrafficInfoAdjustHelper"

    const-string/jumbo v1, "adjustTrafficInfo error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    .line 36
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficTriesLimit;->isSatisfyCondition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string/jumbo v0, "TrafficInfoAdjustHelper"

    const-string/jumbo v1, "adjustTrafficInfo start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->startadjustTrafficInfo()V

    goto :goto_0
.end method
