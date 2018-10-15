.class public Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;
.super Ljava/lang/Object;
.source "TrafficControlInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficControlInit"

.field private static mInstance:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;


# instance fields
.field private context:Landroid/content/Context;

.field private dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

.field private executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

.field private localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

.field private trafficDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

.field private trafficWarningDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->context:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->trafficDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTrafficListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)V

    return-object v0
.end method

.method private getTrafficWarningListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$2;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)V

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getTrafficWarningListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->trafficWarningDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    .line 57
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getTrafficListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->trafficDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    .line 59
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->setTrafficLooperStrategy(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;)V

    .line 61
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .line 64
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultTrafficLooperStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->setTrafficLooperStrategy(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;)V

    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->addExecuteLooper(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;)V

    .line 67
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->setNotificationCard(Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;)V

    .line 79
    return-void
.end method

.method private isAuthSuccess(Laam;)Z
    .locals 2
    .param p1, "event"    # Laam;

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-virtual {p1}, Laam;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p1}, Laam;->a()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p1}, Laam;->a()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwitchClosed()Z
    .locals 3

    .prologue
    .line 107
    const-string/jumbo v0, "TrafficControlInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSwitchClosed executeLooper.isSwitchOpen() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->isSwitchOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo v0, "TrafficControlInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSwitchClosed dailyExecuteLooper.isSwitchOpen() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->isSwitchOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->isSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->isSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registeVerifyCodeAuthListener()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method


# virtual methods
.method public addRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V
    .locals 1
    .param p1, "trafficRemindForUI"    # Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->addRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->addRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 116
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->isSwitchClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "TrafficControlInit"

    const-string/jumbo v1, "switch is both closed, close"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->setNotificationCard(Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->trafficWarningDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->close()V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->trafficDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->close()V

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->stopLoop()V

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->clear()V

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->clear()V

    .line 102
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public getLocalTrafficLooper()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    return-object v0
.end method

.method public launch()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->launchForDaily()V

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->trafficWarningDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->start()V

    .line 84
    return-void
.end method

.method public launchForDaily()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getNotificationCard()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->init()V

    .line 90
    :cond_0
    return-void
.end method

.method public onAuthTokenChangedCallback()V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearTrafficRelativeInfo()V

    .line 217
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearDailyWarnInfo()V

    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->trafficDataHelper:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->start()V

    .line 222
    return-void
.end method

.method public onEvent(Laam;)V
    .locals 4
    .param p1, "event"    # Laam;

    .prologue
    .line 168
    const-string/jumbo v0, "TrafficControlInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent | EventAuth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->isAuthSuccess(Laam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v0, "TrafficControlInit"

    const-string/jumbo v1, "onEvent | auth is success, start init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearTrafficRelativeInfo()V

    .line 173
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearDailyWarnInfo()V

    .line 174
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateLastDailyTrafficTriggerTime(J)V

    .line 175
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->resetTrafficInfoUpdateFlag()V

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->dismissWin()V

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->dismissWin()V

    .line 180
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->launch()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string/jumbo v0, "TrafficControlInit"

    const-string/jumbo v1, "onEvent | auth is failed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V
    .locals 1
    .param p1, "trafficRemindForUI"    # Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->executeLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->dailyExecuteLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 121
    return-void
.end method
