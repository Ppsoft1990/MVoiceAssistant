.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;
.super Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/AbsTrafficWarningData;
.source "DefaultTrafficWarningData.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mStrategyRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trafficWarningListener"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/AbsTrafficWarningData;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;)V

    .line 25
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->context:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->getOperationResultListener()Lyn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;-><init>(Landroid/content/Context;Lyn;Z)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->mStrategyRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getOperationResultListener()Lyn;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;)V

    return-object v0
.end method


# virtual methods
.method public request()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->mStrategyRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;->requestStrategy()J

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onFailed()V

    goto :goto_0
.end method
