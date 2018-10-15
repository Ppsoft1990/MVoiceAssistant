.class public final Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.source "CmccSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

.field private e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

.field private f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

.field private g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private h:Lakj;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private j:Laic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 364
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 368
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_0
.end method

.method public static a(IZ)V
    .locals 1
    .param p0, "position"    # I
    .param p1, "isOpen"    # Z

    .prologue
    .line 346
    packed-switch p0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 348
    :pswitch_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateFirstWarnScaleSwitchState(Z)V

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateSecondWarnScaleSwitchState(Z)V

    goto :goto_0

    .line 354
    :pswitch_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateThirdWarnScaleSwitchState(Z)V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;)V
    .locals 8
    .param p1, "settingType"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 296
    sget-object v5, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->FeeTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    if-ne p1, v5, :cond_1

    .line 298
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v4

    const-string/jumbo v5, "Fee"

    invoke-virtual {v4, v5}, Lakm;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->i:Ljava/util/List;

    .line 299
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->i:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 300
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic;

    .line 301
    .local v1, "homeCardItem":Laic;
    const-string/jumbo v5, "cmcc_category"

    invoke-virtual {v1}, Laic;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 303
    iput-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    goto :goto_0

    .line 307
    .end local v1    # "homeCardItem":Laic;
    :cond_1
    sget-object v5, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->MonthTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    if-ne p1, v5, :cond_a

    .line 309
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_TRAFFIC_MONTH_IS_TOUCH"

    invoke-virtual {v5, v6, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    invoke-static {v7, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 311
    invoke-static {v3, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 312
    invoke-static {v4, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 314
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 315
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_TRAFFIC_MONTH_IS_TOUCH"

    invoke-virtual {v5, v6, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    .line 316
    .local v2, "isMonthSwitchOpen":Z
    :goto_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lmz;->l()Z

    move-result v5

    if-nez v5, :cond_4

    .line 317
    :cond_3
    const/4 v2, 0x0

    .line 319
    :cond_4
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 320
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-static {v7}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getWarnScaleSwitchState(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 321
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getWarnScaleSwitchState(I)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 322
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getWarnScaleSwitchState(I)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    :goto_4
    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 337
    .end local v2    # "isMonthSwitchOpen":Z
    :cond_5
    :goto_5
    return-void

    :cond_6
    move v2, v4

    .line 315
    goto :goto_1

    .restart local v2    # "isMonthSwitchOpen":Z
    :cond_7
    move v5, v4

    .line 320
    goto :goto_2

    :cond_8
    move v5, v4

    .line 321
    goto :goto_3

    :cond_9
    move v3, v4

    .line 322
    goto :goto_4

    .line 323
    .end local v2    # "isMonthSwitchOpen":Z
    :cond_a
    sget-object v5, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->DadayTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    if-ne p1, v5, :cond_5

    .line 324
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 326
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v4, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 327
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d()I

    move-result v0

    .line 328
    .local v0, "dayLimit":I
    new-instance v3, Lakj;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lakj;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h:Lakj;

    .line 329
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h:Lakj;

    invoke-virtual {v3, v0}, Lakj;->a(I)V

    .line 330
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h:Lakj;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    goto :goto_5

    .line 333
    .end local v0    # "dayLimit":I
    :cond_b
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 334
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h:Lakj;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->remove(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;
    .param p1, "x1"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 10

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    .line 378
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v3

    .line 379
    .local v3, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    const-string/jumbo v6, "WeatherSettingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getWarnConfigInfo warnConfigInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 381
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v5, "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, "midValue":F
    const/4 v2, 0x0

    .line 385
    .local v2, "minValue":F
    const/4 v0, 0x0

    .line 386
    .local v0, "maxValue":F
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 387
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 388
    .local v4, "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v7

    if-nez v7, :cond_1

    .line 389
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v2

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 391
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v1

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 393
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v0

    goto :goto_0

    .line 397
    .end local v4    # "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :cond_3
    const/4 v2, 0x0

    .line 398
    const v1, 0x3dcccccd    # 0.1f

    .line 399
    const/high16 v0, 0x3f000000    # 0.5f

    .line 401
    :cond_4
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0d\u8db3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v0, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%\u63d0\u9192"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 402
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0d\u8db3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v1, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%\u63d0\u9192"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 403
    const/4 v6, 0x0

    cmpl-float v6, v6, v2

    if-nez v6, :cond_6

    .line 404
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    const-string/jumbo v7, "\u5df2\u7528\u5b8c\u63d0\u9192"

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 409
    .end local v0    # "maxValue":F
    .end local v1    # "midValue":F
    .end local v2    # "minValue":F
    .end local v5    # "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    :cond_5
    :goto_1
    return-void

    .line 406
    .restart local v0    # "maxValue":F
    .restart local v1    # "midValue":F
    .restart local v2    # "minValue":F
    .restart local v5    # "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    :cond_6
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0d\u8db3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v2, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%\u63d0\u9192"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lmz;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 421
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficDailyScheduleThreshold()I

    move-result v0

    .line 422
    .local v0, "threshold":I
    const-string/jumbo v1, "WeatherSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTrafficThreshold threshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-nez v0, :cond_0

    .line 425
    const/16 v0, 0x64

    .line 427
    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a()V

    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/16 v3, 0x13

    const/4 v2, 0x1

    .line 76
    const-string/jumbo v0, "WeatherSettingFragment"

    const-string/jumbo v1, "loadData: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100115"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "\u5b9e\u65f6\u83b7\u53d6\u4f60\u7684\u79fb\u52a8\u624b\u673a\u53f7\u8bdd\u8d39\u6d41\u91cf\uff0c\u5e76\u63d0\u4f9b\u5269\u4f59\u63d0\u9192"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->setTipText(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v1, "\u5b9e\u65f6\u8bdd\u8d39\u6d41\u91cf"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 88
    sget-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->FeeTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$1;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->addDiverView(I)V

    .line 117
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v1, "\u6bcf\u6708\u6d41\u91cf\u5269\u4f59\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$2;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    const-string/jumbo v1, "\u4e0d\u8db350%\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setBottomLineVisible(Z)V

    .line 157
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$3;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    const-string/jumbo v1, "\u4e0d\u8db310%\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setBottomLineVisible(Z)V

    .line 189
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$4;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    .line 220
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    const-string/jumbo v1, "\u5df2\u7528\u5b8c\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setBottomLineVisible(Z)V

    .line 222
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 223
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$5;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->addDiverView(I)V

    .line 252
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b()V

    .line 253
    sget-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->MonthTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;)V

    .line 256
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v1, "\u6bcf\u65e5\u6d41\u91cf\u9650\u989d\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    .line 259
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$6;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 283
    sget-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;->DadayTraffic:Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment$SettingType;)V

    .line 284
    return-void
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 432
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onDestroy()V

    .line 433
    const/4 v4, 0x0

    .line 436
    .local v4, "isChange":Z
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v6}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 437
    const/4 v4, 0x1

    .line 438
    new-instance v6, Laic;

    invoke-direct {v6}, Laic;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    .line 439
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    const-string/jumbo v7, "Fee"

    invoke-virtual {v6, v7}, Laic;->a(Ljava/lang/String;)V

    .line 440
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    const-string/jumbo v7, "\u8bdd\u8d39\u6d41\u91cf"

    invoke-virtual {v6, v7}, Laic;->b(Ljava/lang/String;)V

    .line 441
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    const-string/jumbo v7, "cmcc_category"

    invoke-virtual {v6, v7}, Laic;->c(Ljava/lang/String;)V

    .line 442
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    const-string/jumbo v7, "\u8bdd\u8d39\u6d41\u91cf"

    invoke-virtual {v6, v7}, Laic;->d(Ljava/lang/String;)V

    .line 443
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    invoke-virtual {v6, v8}, Laic;->a(I)V

    .line 444
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    invoke-virtual {v6, v8}, Laic;->b(I)V

    .line 445
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->i:Ljava/util/List;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 448
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v6}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 449
    const/4 v4, 0x1

    .line 450
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->i:Ljava/util/List;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->j:Laic;

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    :cond_1
    if-eqz v4, :cond_3

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v1, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v2, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laic;

    .line 459
    .local v3, "homeCardItem":Laic;
    invoke-virtual {v3}, Laic;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v3}, Laic;->d()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v3    # "homeCardItem":Laic;
    :cond_2
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v6

    const-string/jumbo v7, "Fee"

    const-string/jumbo v8, "\u8bdd\u8d39\u6d41\u91cf"

    invoke-virtual {v6, v7, v8, v1, v2}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 463
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 464
    .local v0, "changeOrderEvent":Laia;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v6

    invoke-virtual {v6, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 467
    .end local v0    # "changeOrderEvent":Laia;
    .end local v1    # "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->g:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v6}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 468
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->h:Lakj;

    invoke-virtual {v6}, Lakj;->a()I

    move-result v5

    .line 469
    .local v5, "tmp":I
    if-lez v5, :cond_4

    .line 470
    const-string/jumbo v6, "WeatherSettingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " get edittext value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficDailyScheduleThreshold(I)V

    .line 474
    .end local v5    # "tmp":I
    :cond_4
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    const-string/jumbo v0, "\u8bdd\u8d39\u6d41\u91cf"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
