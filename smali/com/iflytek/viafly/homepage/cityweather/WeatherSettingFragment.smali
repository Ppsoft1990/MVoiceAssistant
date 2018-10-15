.class public final Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.source "WeatherSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

.field private e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

.field private f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private h:Laic;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method private a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V
    .locals 5
    .param p1, "settingType"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    .prologue
    const/4 v4, 0x1

    .line 280
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->i:Z

    .line 281
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->j:Z

    .line 282
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->k:Z

    .line 284
    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherNearby:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    if-ne p1, v1, :cond_1

    .line 286
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v1

    const-string/jumbo v2, "Weather"

    invoke-virtual {v1, v2}, Lakm;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g:Ljava/util/List;

    .line 287
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 289
    .local v0, "homeCardItem":Laic;
    const-string/jumbo v2, "weather_category"

    invoke-virtual {v0}, Laic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 291
    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    goto :goto_0

    .line 296
    .end local v0    # "homeCardItem":Laic;
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherRemind:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    if-ne p1, v1, :cond_7

    .line 297
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->l:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->i:Z

    if-nez v1, :cond_4

    :cond_2
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->m:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->j:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->n:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->k:Z

    if-eqz v1, :cond_6

    .line 299
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 319
    :cond_5
    :goto_1
    return-void

    .line 301
    :cond_6
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    goto :goto_1

    .line 303
    :cond_7
    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherAbnormal:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    if-ne p1, v1, :cond_8

    .line 304
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->l:Z

    if-nez v1, :cond_5

    .line 305
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->i:Z

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 306
    const-string/jumbo v1, "WeatherSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData: umbrellaState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    :cond_8
    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->AirPollution:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    if-ne p1, v1, :cond_9

    .line 309
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->m:Z

    if-nez v1, :cond_5

    .line 310
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->j:Z

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 311
    const-string/jumbo v1, "WeatherSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData: airPollutionState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    :cond_9
    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->TempChange:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    if-ne p1, v1, :cond_5

    .line 314
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->n:Z

    if-nez v1, :cond_5

    .line 315
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->k:Z

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 316
    const-string/jumbo v1, "WeatherSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData: tempState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;
    .param p1, "x1"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    return-object v0
.end method


# virtual methods
.method public a(IZLcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # Z
    .param p3, "CheckBoxSetting"    # Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    .prologue
    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->addSmartSchedule(I)V

    .line 262
    const-string/jumbo v0, "WeatherSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchClick: addSmartSchedule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 272
    :goto_0
    invoke-virtual {p3, p2}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setChecked(Z)V

    .line 273
    return-void

    .line 266
    :cond_0
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 267
    const-string/jumbo v0, "WeatherSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchClick: removeSmartSchedule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_0
.end method

.method protected loadData(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const-string/jumbo v0, "WeatherSettingFragment"

    const-string/jumbo v1, "loadData: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100023"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "\u83b7\u53d6\u4f60\u6240\u5728\u57ce\u5e02\u7684\u5b9e\u65f6\u4ee5\u53ca\u672a\u6765\u5929\u6c14\uff0c\u5e76\u63d0\u4f9b\u5929\u6c14\u9884\u8b66"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->setTipText(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->l:Z

    .line 83
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->m:Z

    .line 84
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->n:Z

    .line 85
    const-string/jumbo v0, "WeatherSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initCheckSate: isUmbrellaGray "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string/jumbo v0, "WeatherSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initCheckSate: isAirPollutionGray "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string/jumbo v0, "WeatherSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initCheckSate: isTempGray "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v1, "\u9644\u8fd1\u5929\u6c14\u9884\u62a5"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 93
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherNearby:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 112
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->addDiverView(I)V

    .line 114
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->n:Z

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherRemind:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V

    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->c:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$2;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->l:Z

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    const-string/jumbo v1, "\u5f02\u5e38\u5929\u6c14\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setBottomLineVisible(Z)V

    .line 157
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherAbnormal:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->d:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$3;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_2
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->m:Z

    if-nez v0, :cond_3

    .line 188
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    .line 189
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    const-string/jumbo v1, "\u7a7a\u6c14\u6c61\u67d3\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setBottomLineVisible(Z)V

    .line 191
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->AirPollution:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->e:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$4;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_3
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->n:Z

    if-nez v0, :cond_4

    .line 221
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    .line 222
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    const-string/jumbo v1, "\u6e29\u5ea6\u9aa4\u53d8\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitle(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setBottomLineVisible(Z)V

    .line 224
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->TempChange:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;)V

    .line 226
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->f:Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;

    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$5;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 323
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onDestroy()V

    .line 324
    const/4 v4, 0x0

    .line 327
    .local v4, "isChange":Z
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    const/4 v4, 0x1

    .line 329
    new-instance v5, Laic;

    invoke-direct {v5}, Laic;-><init>()V

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    .line 330
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    const-string/jumbo v6, "Weather"

    invoke-virtual {v5, v6}, Laic;->a(Ljava/lang/String;)V

    .line 331
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    const-string/jumbo v6, "\u5929\u6c14\u5361\u7247"

    invoke-virtual {v5, v6}, Laic;->b(Ljava/lang/String;)V

    .line 332
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    const-string/jumbo v6, "weather_category"

    invoke-virtual {v5, v6}, Laic;->c(Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    const-string/jumbo v6, "\u5929\u6c14\u5361\u7247"

    invoke-virtual {v5, v6}, Laic;->d(Ljava/lang/String;)V

    .line 334
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    invoke-virtual {v5, v7}, Laic;->a(I)V

    .line 335
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    invoke-virtual {v5, v7}, Laic;->b(I)V

    .line 336
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g:Ljava/util/List;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 339
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->b:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 340
    const/4 v4, 0x1

    .line 341
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->h:Laic;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 346
    :cond_1
    if-eqz v4, :cond_3

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v1, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laic;

    .line 350
    .local v3, "homeCardItem":Laic;
    invoke-virtual {v3}, Laic;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v3}, Laic;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v3    # "homeCardItem":Laic;
    :cond_2
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v5

    const-string/jumbo v6, "Weather"

    const-string/jumbo v7, "\u5929\u6c14\u5361\u7247"

    invoke-virtual {v5, v6, v7, v1, v2}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 354
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 355
    .local v0, "changeOrderEvent":Laia;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    invoke-virtual {v5, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 357
    .end local v0    # "changeOrderEvent":Laia;
    .end local v1    # "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
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
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    const-string/jumbo v0, "WeatherSettingFragment"

    const-string/jumbo v1, "onViewCreated: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string/jumbo v0, "\u5929\u6c14"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
