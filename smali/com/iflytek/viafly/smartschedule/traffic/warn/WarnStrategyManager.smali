.class public Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;
.super Ljava/lang/Object;
.source "WarnStrategyManager.java"


# static fields
.field private static final REQUEST_INTERVAL:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "WarnStrategyManager"


# instance fields
.field private mLocalTraffic:J

.field private mTrafficAdjustHelper:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

.field private mTrafficRandomRequestAlarm:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;

.field private mTrafficRemindForUILiteners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficResultListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "trafficRemindForUI":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mLocalTraffic:J

    .line 182
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$2;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficResultListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficAdjustHelper:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->startAdjustRequest()V

    return-void
.end method

.method private getTriggerSource(Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "triggerSource":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$3;->$SwitchMap$com$iflytek$viafly$smartschedule$traffic$TrafficWarnTriggerSource:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 283
    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    const-string/jumbo v0, "source_type_notification"

    .line 271
    goto :goto_0

    .line 273
    :pswitch_1
    const-string/jumbo v0, "source_type_card"

    .line 274
    goto :goto_0

    .line 276
    :pswitch_2
    const-string/jumbo v0, "source_type_init"

    .line 277
    goto :goto_0

    .line 279
    :pswitch_3
    const-string/jumbo v0, "source_type_localmonitor"

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private randomTimeTrafficRequest()V
    .locals 2

    .prologue
    .line 158
    const-string/jumbo v0, "WarnStrategyManager"

    const-string/jumbo v1, "randomTimeTrafficRequest "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRandomRequestAlarm:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;)V

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRandomRequestAlarm:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRandomRequestAlarm:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->addAlarm()V

    .line 170
    return-void
.end method

.method private saveTrafficScheduleLog(Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V
    .locals 9
    .param p1, "source"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .prologue
    .line 241
    const-string/jumbo v6, "WarnStrategyManager"

    const-string/jumbo v7, " saveTrafficScheduleLog"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v5

    .line 243
    .local v5, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    if-eqz v5, :cond_1

    .line 244
    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getWarnScaleList()Ljava/util/List;

    move-result-object v4

    .line 245
    .local v4, "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 247
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 248
    .local v3, "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    if-eqz v3, :cond_1

    .line 249
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->getTriggerSource(Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "mSource":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 252
    const-string/jumbo v6, "d_traffic_schedule_trigger_source"

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    const-string/jumbo v6, "d_traffic_schedule_trigger_time"

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7}, Ljava/text/SimpleDateFormat;-><init>()V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v6, "d_traffic_schedule_warn_level"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v6, "d_traffic_schedule_warn_value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v6, "d_traffic_schedule_real_value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getActualValue()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getCurrentTrafficInterfaceCount()I

    move-result v0

    .line 259
    .local v0, "adjustCount":I
    const-string/jumbo v6, "d_traffic_schedule_interface_count"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lxp;->a(Landroid/content/Context;)Lxp;

    move-result-object v6

    const-string/jumbo v7, "FT24001"

    invoke-virtual {v6, v7, v2}, Lxp;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    .end local v0    # "adjustCount":I
    .end local v1    # "mSource":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    .end local v4    # "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    :cond_1
    return-void
.end method

.method private startAdjustRequest()V
    .locals 4

    .prologue
    .line 173
    const-string/jumbo v0, "WarnStrategyManager"

    const-string/jumbo v1, "startAdjustRequest "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficAdjustHelper:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "WarnStrategyManager"

    const-string/jumbo v1, "onEndCalTraffic start adjust"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficAdjustHelper:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficResultListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->adjustTrafficInfo(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;)V

    .line 178
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateLastTrafficAdjustRequestTime(J)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissTrafficWin()V
    .locals 4

    .prologue
    .line 287
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "dismissTrafficWin"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .line 290
    .local v0, "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    const-string/jumbo v2, "WarnStrategyManager"

    const-string/jumbo v3, " dismiss float win"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;->onDismissTotalTrafficFloatWin()V

    goto :goto_0

    .line 294
    .end local v0    # "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    :cond_0
    return-void
.end method

.method public handleWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V
    .locals 4
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .param p2, "source"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .prologue
    .line 205
    const-string/jumbo v1, "WarnStrategyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWarn trafficInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p1, :cond_6

    .line 208
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper;->isTrafficInfoAvailable(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->isNeedWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "onTrafficSuccess after adjust, trigger warn"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->notification:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->fee_card:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .line 215
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->setWarnedInfoUnavailable()V

    .line 218
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "handleWarn triggered by notification or card, return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .line 225
    .local v0, "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;->onTotalTrafficRemind()V

    goto :goto_1

    .line 228
    .end local v0    # "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    :cond_3
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "onTrafficSuccess mTrafficRemindForUILiteners is null or size is 0"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->saveTrafficScheduleLog(Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    goto :goto_0

    .line 233
    :cond_5
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "handleWarn , trafficinfo is unavailable"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_6
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "handleWarn error, trafficinfo is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBeginCalTraffic()V
    .locals 6

    .prologue
    .line 54
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "onBeginCalTraffic "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v0

    .line 58
    .local v0, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDataAPIReader;->getAllGPRSTraffic()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mLocalTraffic:J

    .line 61
    const-string/jumbo v1, "WarnStrategyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBeginCalTraffic \u521d\u59cb\u672c\u5730\u6d41\u91cf\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mLocalTraffic:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public onEndCalTraffic()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 77
    const-string/jumbo v7, "WarnStrategyManager"

    const-string/jumbo v8, "onEndCalTraffic "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v5

    .line 80
    .local v5, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-nez v5, :cond_1

    .line 81
    const-string/jumbo v7, "WarnStrategyManager"

    const-string/jumbo v8, "onEndCalTraffic trafficinfo is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-wide v8, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mLocalTraffic:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 90
    const-string/jumbo v7, "WarnStrategyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onEndCalTraffic trafficinfo is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {v5}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper;->getTrafficInfoAvailableState(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    move-result-object v6

    .line 93
    .local v6, "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    const-string/jumbo v7, "WarnStrategyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onEndCalTraffic trafficInfoState is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v7, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$3;->$SwitchMap$com$iflytek$viafly$smartschedule$traffic$warn$TrafficInfoAvailableHelper$TrafficInfoState:[I

    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDataAPIReader;->getAllGPRSTraffic()J

    move-result-wide v0

    .line 100
    .local v0, "currentReadTraffic":J
    const-string/jumbo v7, "WarnStrategyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u672c\u6b21\u8bfb\u53d6\u7684\u503c\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getLeftTraffic()F

    move-result v7

    iget-wide v8, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mLocalTraffic:J

    sub-long v8, v0, v8

    long-to-float v8, v8

    sub-float v4, v7, v8

    .line 105
    .local v4, "leftTraffic":F
    const-string/jumbo v7, "WarnStrategyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u7f13\u5b58\u7684\u672c\u5730\u6d41\u91cf\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mLocalTraffic:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string/jumbo v7, "WarnStrategyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u5269\u4f59\u603b\u91cf\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v7, "WarnStrategyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u603b\u6d41\u91cf\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setLeftTraffic(F)V

    .line 111
    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->mLocalTraffic:J

    .line 114
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    .line 116
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->isNeedWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    const-string/jumbo v7, "WarnStrategyManager"

    const-string/jumbo v8, "onEndCalTraffic need warn"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->startAdjustRequest()V

    goto/16 :goto_0

    .line 124
    .end local v0    # "currentReadTraffic":J
    .end local v4    # "leftTraffic":F
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->randomTimeTrafficRequest()V

    .line 126
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearTrafficRelativeInfo()V

    goto/16 :goto_0

    .line 131
    :pswitch_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getLastTrafficAdjustRequestTime()J

    move-result-wide v2

    .line 132
    .local v2, "lastRequestTime":J
    const-string/jumbo v7, "WarnStrategyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onEndCalTraffic lastRequestTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    cmp-long v7, v2, v10

    if-lez v7, :cond_3

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/32 v10, 0x1b7740

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 136
    const-string/jumbo v7, "WarnStrategyManager"

    const-string/jumbo v8, "onEndCalTraffic start to request interface, over interval"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->startAdjustRequest()V

    .line 148
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->dismissTrafficWin()V

    .line 150
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearTrafficRelativeInfo()V

    goto/16 :goto_0

    .line 140
    :cond_2
    const-string/jumbo v7, "WarnStrategyManager"

    const-string/jumbo v8, "onEndCalTraffic inner interval, not request"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_3
    const-string/jumbo v7, "WarnStrategyManager"

    const-string/jumbo v8, "onEndCalTraffic start to request interface"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->startAdjustRequest()V

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
