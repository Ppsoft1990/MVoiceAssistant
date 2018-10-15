.class public Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;
.super Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;
.source "CoolingEffectCategory.java"


# static fields
.field private static final DISMISS_ALARM_ID:Ljava/lang/String; = "cooling_dismiss"

.field protected static final EXTRA_BOTTOMBTN:I = 0x7d8

.field protected static final EXTRA_CLOSE:I = 0x7d5

.field protected static final EXTRA_CONTENT:I = 0x7d7

.field protected static final EXTRA_EDIT:I = 0x7d6

.field private static final MSG_CLOSE_SHOW:I = 0x7d3

.field private static final MSG_DESTORY:I = 0x7d4

.field private static final MSG_DISMISS:I = 0x7d2

.field private static final MSG_SHOW:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "Weather_CoolingEffectCategory"


# instance fields
.field private mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory$1;-><init>(Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;)V

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private handleScreenOnImpl()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->isCoolingInfoCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v1, "Weather_CoolingEffectCategory"

    const-string/jumbo v2, "isCoolingInfoCached"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->loadWeatherInfoCache()Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;

    move-result-object v0

    .line 127
    .local v0, "coolingData":Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    if-eqz v0, :cond_0

    .line 128
    const/16 v1, 0x7d1

    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 131
    .end local v0    # "coolingData":Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    :cond_0
    return-void
.end method

.method private loadWeatherInfoCache()Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    .locals 4

    .prologue
    .line 242
    const-string/jumbo v2, "Weather_CoolingEffectCategory"

    const-string/jumbo v3, "loadWeatherInfoCache"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "COOLING_SCHEDULE_CACHE"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "coolingData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-string/jumbo v2, "Weather_CoolingEffectCategory"

    const-string/jumbo v3, "loadWeatherInfoCache weatherCache is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, 0x0

    .line 258
    :goto_0
    return-object v1

    .line 250
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;

    invoke-direct {v1, v0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "data":Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    const-string/jumbo v2, "\u6e29\u5ea6\u9aa4\u53d8\u63d0\u9192"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setTitle(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v2, "\u8be6\u60c5"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setBottomText(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v2, "image.ic_smart_card_cooling"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setCardIconUrl(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v2, "image.ic_smart_float_cooling"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setFloatIconUrl(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setType(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v2, "80002"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registDefaultDismiss()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x0

    .line 291
    const-string/jumbo v2, "Weather_CoolingEffectCategory"

    const-string/jumbo v3, "WeatherFloatWindowDismissAlarm: registDefaultDismiss"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 293
    .local v1, "date":Ljava/util/GregorianCalendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 294
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 295
    invoke-virtual {v1, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 297
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const/4 v3, 0x2

    .line 298
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "cooling_dismiss"

    .line 299
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 300
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 301
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 302
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 305
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 317
    :cond_0
    return-void
.end method

.method private unRedistDefaultDismiss()V
    .locals 3

    .prologue
    .line 347
    const-string/jumbo v0, "Weather_CoolingEffectCategory"

    const-string/jumbo v1, "WeatherFloatWindowDismissAlarm: unRegistDefaultDismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cooling_dismiss"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "Weather_CoolingEffectCategory"

    return-object v0
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    return-void
.end method

.method protected handleEditTask()V
    .locals 3

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.WEATHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method protected handleMessageImpl(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 143
    const-string/jumbo v2, "Weather_CoolingEffectCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessageImpl message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;

    .line 151
    .local v0, "coolingData":Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 153
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->registDefaultDismiss()V

    .line 156
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "tempChange"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v0    # "coolingData":Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    if-eqz v2, :cond_0

    .line 167
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 168
    .local v1, "data":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->unRedistDefaultDismiss()V

    .line 170
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_1

    .line 187
    :goto_1
    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->launchHomeOpenWeather(Landroid/content/Context;)V

    goto :goto_1

    .line 178
    :pswitch_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->launchHomeOpenWeather(Landroid/content/Context;)V

    goto :goto_1

    .line 181
    :pswitch_6
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleEditTask()V

    goto :goto_1

    .line 193
    .end local v1    # "data":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_7
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->unRedistDefaultDismiss()V

    .line 194
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x7d5
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected handleScreeOn()V
    .locals 14

    .prologue
    .line 103
    const-string/jumbo v5, "Weather_CoolingEffectCategory"

    const-string/jumbo v6, "handleScreeOn"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    .line 105
    .local v11, "currentDate":Ljava/util/GregorianCalendar;
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 106
    .local v1, "currentYear":I
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 107
    .local v2, "currentMonth":I
    const/4 v5, 0x5

    invoke-virtual {v11, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 108
    .local v3, "currentDay":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.LATEST_COOLING_SCREEN_ON_TIME"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v12

    .line 110
    .local v12, "latestScreenOnTime":J
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 111
    .local v0, "minDate":Ljava/util/GregorianCalendar;
    new-instance v4, Ljava/util/GregorianCalendar;

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct/range {v4 .. v10}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 113
    .local v4, "maxDate":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {v4, v11}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v5, v12, v6

    if-gez v5, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleScreenOnImpl()V

    .line 118
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.LATEST_COOLING_SCREEN_ON_TIME"

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 118
    invoke-virtual {v5, v6, v8, v9}, Lil;->a(Ljava/lang/String;J)V

    .line 121
    return-void
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 83
    const-string/jumbo v0, "Weather_CoolingEffectCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSystemEvent event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-ne p1, v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleScreeOn()V

    .line 87
    :cond_0
    return-void
.end method

.method protected isCoolingInfoCached()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 266
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "COOLING_SCHEDULE_CACHE"

    invoke-virtual {v5, v6}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "coolingData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    const-string/jumbo v5, "Weather_CoolingEffectCategory"

    const-string/jumbo v6, "isCoolingInfoCached weatherCache is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return v4

    .line 273
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;

    invoke-direct {v1, v0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "data":Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->getDate()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "date":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 278
    .local v3, "tmpDate":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 278
    invoke-static {v5, v3}, Lbaa;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    if-nez v5, :cond_1

    .line 280
    const/4 v4, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "date":Ljava/lang/String;
    .end local v3    # "tmpDate":Ljava/util/Date;
    :cond_1
    const-string/jumbo v5, "Weather_CoolingEffectCategory"

    const-string/jumbo v6, "isWeatherInfoCached, date error"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected launchHomeOpenWeather(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v0, "intentToHome":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_OPEN_WEATHER_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100023"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v1, "Weather_CoolingEffectCategory"

    const-string/jumbo v2, "launchHomeOpenWeather()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method protected onBottomBtnClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    const/16 v0, 0x7d3

    const/16 v1, 0x7d8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 239
    :cond_0
    return-void
.end method

.method protected onClose()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->unRedistDefaultDismiss()V

    .line 206
    return-void
.end method

.method protected onCloseClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    const/16 v0, 0x7d3

    const/16 v1, 0x7d5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 218
    :cond_0
    return-void
.end method

.method protected onContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    const/16 v0, 0x7d3

    const/16 v1, 0x7d7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 225
    :cond_0
    return-void
.end method

.method protected onDelete()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->unRedistDefaultDismiss()V

    .line 211
    return-void
.end method

.method protected onEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    const/16 v0, 0x7d3

    const/16 v1, 0x7d6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 232
    :cond_0
    return-void
.end method

.method protected onGrayChanged(Z)V
    .locals 4
    .param p1, "isSupport"    # Z

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string/jumbo v0, "Weather_CoolingEffectCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGrayChanged isSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez p1, :cond_0

    .line 137
    const/16 v0, 0x7d4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onOpen()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
