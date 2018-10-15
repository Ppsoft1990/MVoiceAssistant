.class public Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;
.super Ljava/lang/Object;
.source "DefaultTrafficLooperStrategy.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public isTrafficLooper()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;->context:Landroid/content/Context;

    .line 20
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;->context:Landroid/content/Context;

    .line 21
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
