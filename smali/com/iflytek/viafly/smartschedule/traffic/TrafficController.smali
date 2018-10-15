.class public Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
.source "TrafficController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;
    }
.end annotation


# static fields
.field private static final MSG_REMOVE_FLOAT_WIN:I = 0x2

.field private static final MSG_SHOW_FLOAT_WIN:I = 0x1

.field private static final SMART_ID:Ljava/lang/String; = "TrafficSchedule"

.field private static final SMART_TYPE:Ljava/lang/String; = "TrafficController"

.field private static final TAG:Ljava/lang/String; = "TrafficController"


# instance fields
.field private mFloatWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

.field private mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;

.field private trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

.field private trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;-><init>()V

    .line 51
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->changeTrafficFloatWinSate(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->addRemoveTrafficWinAlarm(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    return-void
.end method

.method private addRemoveTrafficWinAlarm(J)V
    .locals 3
    .param p1, "triggerTime"    # J

    .prologue
    .line 295
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "addRemoveTrafficWinAlarm "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mFloatWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->addAlarm(J)V

    .line 298
    return-void
.end method

.method private changeTrafficFloatWinSate(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 360
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "showTrafficFloatWin"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 364
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private deleteData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 1
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->deleteData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteData(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string/jumbo v0, "TrafficController"

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

    .line 335
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataById(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCardClick()V
    .locals 5

    .prologue
    .line 347
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v0

    .line 348
    .local v0, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->launchHomeOpenBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->context:Landroid/content/Context;

    invoke-static {v2}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    const-string/jumbo v3, "data_transfer"

    const-string/jumbo v4, "LX_100009"

    .line 356
    invoke-static {v3, v4}, Lwj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v2, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method private handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "smartData"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 301
    if-nez p1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "smartId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->deleteData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 310
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mFloatWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mFloatWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->cancelAlarm()V

    goto :goto_0
.end method

.method private handleCommonDeleteTaskById(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->deleteData(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mFloatWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mFloatWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->cancelAlarm()V

    goto :goto_0
.end method

.method private hasToken()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 343
    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 342
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
    .line 83
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "start init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mHandler:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;

    .line 86
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    const-string/jumbo v1, "TrafficSchedule"

    new-instance v2, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$2;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)V

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;-><init>(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->mFloatWinDismissAlarm:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->launch()V

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->addRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 99
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->judgeCacheDataAvailable()V

    .line 100
    return-void
.end method

.method private isAboveVersion()Z
    .locals 2

    .prologue
    .line 253
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
    .line 390
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->isWarnedScheduleAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "judgeCacheDataAvailable , warned schedule is still available"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->changeTrafficFloatWinSate(I)V

    .line 394
    :cond_0
    return-void
.end method

.method private updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 372
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "updateCacheDataUnavailable"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "schedultID":Ljava/lang/String;
    const-string/jumbo v1, "TrafficController"

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

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    const-string/jumbo v1, "TrafficSchedule"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "updateCacheDataUnavailable TOTAL_TRAFFIC_SCHEDULE "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->setWarnedInfoUnavailable()V

    .line 384
    .end local v0    # "schedultID":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->close()V

    .line 131
    :cond_0
    const-string/jumbo v0, "TrafficSchedule"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "delete"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficRemindForUI:Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->close()V

    .line 143
    :cond_0
    const-string/jumbo v0, "TrafficSchedule"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    return-void
.end method

.method public handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 191
    const-string/jumbo v0, "TrafficController"

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

    .line 192
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCardClick()V

    .line 196
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 180
    const-string/jumbo v0, "TrafficController"

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

    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCardClick()V

    .line 185
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 160
    const-string/jumbo v1, "TrafficController"

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

    .line 161
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.CMCC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->context:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 175
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->context:Landroid/content/Context;

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
    .line 230
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "handleGrayControlChanged"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_3

    .line 232
    const-string/jumbo v1, "120020"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "120020"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 235
    .local v0, "isSupport":Z
    :goto_0
    const-string/jumbo v1, "TrafficController"

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

    .line 237
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficScheduleGrayCtrlFlag(Z)V

    .line 241
    if-nez v0, :cond_0

    .line 242
    const-string/jumbo v1, "TrafficSchedule"

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 250
    .end local v0    # "isSupport":Z
    :cond_0
    :goto_1
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_2
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "TrafficController  no handleGrayControlChanged"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :cond_3
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "TrafficController grayHashMap is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 148
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "handleRemove"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->handleCommonDeleteTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->updateCacheDataUnavailable(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 213
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$3;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->isOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->trafficControlInit:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getLocalTrafficLooper()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->getNetworkChanged()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;->onNetworkChanged()V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "init "

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->isAboveVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "init unsupport lower than 4.4"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficScheduleGrayCtrlFlag(Z)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->isOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->initOperation()V

    .line 80
    :cond_1
    return-void
.end method

.method public isForbiddenGray()Z
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficScheduleGrayCtrlFlag()Z

    move-result v0

    .line 208
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
    .line 104
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "open"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->isOpenStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "open gray not forbidden or status is not open"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->hasToken()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "open no token"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->initOperation()V

    goto :goto_0
.end method
