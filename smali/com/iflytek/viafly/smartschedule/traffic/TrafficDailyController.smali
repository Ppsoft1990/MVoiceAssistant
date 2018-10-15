.class public Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
.source "TrafficDailyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;
    }
.end annotation


# static fields
.field private static final MSG_REMOVE_DAILY_FLOAT_WIN:I = 0x2

.field private static final MSG_SHOW_DAILY_FLOAT_WIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrafficDailyController"


# instance fields
.field private mDailyTrafficWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

.field private mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

.field private trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

.field private trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;-><init>()V

    .line 49
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->changeTrafficFloatWinSate(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->addDailyRemoveTrafficWinAlarm(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    return-void
.end method

.method private addDailyRemoveTrafficWinAlarm(J)V
    .locals 3
    .param p1, "triggerTime"    # J

    .prologue
    .line 290
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "addDailyRemoveTrafficWinAlarm "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mDailyTrafficWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->addAlarm(J)V

    .line 293
    return-void
.end method

.method private changeTrafficFloatWinSate(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 355
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "showTrafficFloatWin"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 358
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 359
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private deleteData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 1
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->deleteData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteData(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v0, "TrafficDailyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteData | id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataById(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCardClick()V
    .locals 5

    .prologue
    .line 342
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v0

    .line 343
    .local v0, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->launchHomeOpenBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->context:Landroid/content/Context;

    invoke-static {v2}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    const-string/jumbo v3, "data_transfer"

    const-string/jumbo v4, "LX_100009"

    .line 351
    invoke-static {v3, v4}, Lwj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-virtual {v2, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "smartData"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 296
    if-nez p1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "smartId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->deleteData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 305
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mDailyTrafficWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mDailyTrafficWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->cancelAlarm()V

    goto :goto_0
.end method

.method private handleCommonDeleteTaskById(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->deleteData(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mDailyTrafficWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mDailyTrafficWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->cancelAlarm()V

    goto :goto_0
.end method

.method private hasToken()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 338
    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initOperation()V
    .locals 3

    .prologue
    .line 80
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "start init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

    .line 84
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    const-string/jumbo v1, "DailyTrafficSchedule"

    new-instance v2, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$2;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)V

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;-><init>(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->mDailyTrafficWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->launchForDaily()V

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->addRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 96
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->judgeCacheDataAvailable()V

    .line 97
    return-void
.end method

.method private isAboveVersion()Z
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private judgeCacheDataAvailable()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnInfoHelper;->isDailyWarnInfoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "judgeCacheDataAvailable , daily warned schedule is still available"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->changeTrafficFloatWinSate(I)V

    .line 389
    :cond_0
    return-void
.end method

.method private updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 367
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "updateCacheDataUnavailable"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "schedultID":Ljava/lang/String;
    const-string/jumbo v1, "TrafficDailyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCacheDataUnavailable schedultID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    const-string/jumbo v1, "DailyTrafficSchedule"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "updateCacheDataUnavailable DAILY_TRAFFIC_SCHEDULE "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnInfoHelper;->setDailyWarnInfoUnavailable()V

    .line 379
    .end local v0    # "schedultID":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->close()V

    .line 128
    :cond_0
    const-string/jumbo v0, "DailyTrafficSchedule"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "delete"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->close()V

    .line 140
    :cond_0
    const-string/jumbo v0, "DailyTrafficSchedule"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    return-void
.end method

.method public handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 189
    const-string/jumbo v0, "TrafficDailyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleBottomBtn | data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCardClick()V

    .line 194
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 178
    const-string/jumbo v0, "TrafficDailyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleContent | data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCardClick()V

    .line 183
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 157
    const-string/jumbo v1, "TrafficDailyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleEdit | data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string/jumbo v1, "TrafficDailyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runDataItem.getName() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.CMCC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->context:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 173
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->context:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100057"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleGrayControlChanged(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "handleGrayControlChanged"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz p1, :cond_3

    .line 229
    const-string/jumbo v1, "120023"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "120023"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 232
    .local v0, "isSupport":Z
    :goto_0
    const-string/jumbo v1, "TrafficDailyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " handleGrayControlChanged isSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setDailyTrafficScheduleGrayCtrlFlag(Z)V

    .line 237
    if-nez v0, :cond_0

    .line 238
    const-string/jumbo v1, "DailyTrafficSchedule"

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 246
    .end local v0    # "isSupport":Z
    :cond_0
    :goto_1
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_2
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "TrafficController  no handleGrayControlChanged"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_3
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "TrafficController grayHashMap is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 145
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "handleRemove"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 211
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$3;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getLocalTrafficLooper()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->getNetworkChanged()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;->onNetworkChanged()V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "init "

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isAboveVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "init unsupport lower than 4.4"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setDailyTrafficScheduleGrayCtrlFlag(Z)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->initOperation()V

    .line 77
    :cond_1
    return-void
.end method

.method public isForbiddenGray()Z
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getDailyTrafficScheduleGrayCtrlFlag()Z

    move-result v0

    .line 206
    .local v0, "cacheSupport":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "open"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->isOpenStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "open gray not forbidden or status is not open"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->hasToken()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "open no token"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->initOperation()V

    goto :goto_0
.end method
