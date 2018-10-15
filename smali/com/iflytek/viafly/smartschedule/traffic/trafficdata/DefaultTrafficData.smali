.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;
.super Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/AbsTrafficData;
.source "DefaultTrafficData.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private trafficInfoRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trafficListener"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/AbsTrafficData;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;)V

    .line 27
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->getOnOperationResultListener()Lyn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;-><init>(Landroid/content/Context;Lyn;Z)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficInfoRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getOnOperationResultListener()Lyn;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;)V

    return-object v0
.end method


# virtual methods
.method public request()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->context:Landroid/content/Context;

    .line 72
    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficInfoRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;->requestTrafficData()J

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;->onFailed()V

    goto :goto_0
.end method
