.class public final Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
.source "AirPollutionController.java"


# static fields
.field private static final FLOAT_AIR_POLLUTION_GRAY_CONTROL_KEY:Ljava/lang/String; = "120032"

.field private static final TAG:Ljava/lang/String; = "AirPollutionController"


# instance fields
.field private mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

.field private mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;-><init>()V

    return-void
.end method

.method private judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    const-string/jumbo v1, "80003"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 155
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "close gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "delete gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->isForbiddenGray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    const-string/jumbo v1, "AirPollutionController"

    const-string/jumbo v2, "handleBackgroundIntent gray forbidden"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-eq v1, v2, :cond_3

    .line 170
    :cond_2
    const-string/jumbo v1, "AirPollutionController"

    const-string/jumbo v2, "handleBackgroundIntent not open status"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_3
    const-string/jumbo v1, "com.iflytek.cmcc.SMART_SCHEDULE_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "extra":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    const-string/jumbo v1, "AirPollutionController"

    const-string/jumbo v2, "handleBackgroundIntent extra is empty"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_4
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handleBackgroundIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->bottombtn:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 144
    :cond_1
    return-void
.end method

.method public handleBottomLeftBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 0
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 147
    return-void
.end method

.method public handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->content:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 133
    :cond_1
    return-void
.end method

.method public handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->edit:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 122
    :cond_1
    return-void
.end method

.method public handleGrayControlChanged(Ljava/util/HashMap;)V
    .locals 5
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
    .line 225
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 226
    const-string/jumbo v2, "120032"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "FLOAT_AIR_POLLUTION_GRAY_CTRL_FALG"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    .line 229
    .local v1, "oldSupport":Z
    const-string/jumbo v3, "AirPollutionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "120032:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v2, "120032"

    .line 230
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v3, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "120032"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 233
    .local v0, "isSupport":Z
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "FLOAT_AIR_POLLUTION_GRAY_CTRL_FALG"

    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 236
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 237
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->onGrayChanged(Z)V

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->onGrayChanged(Z)V

    .line 246
    .end local v0    # "isSupport":Z
    .end local v1    # "oldSupport":Z
    :cond_1
    return-void

    .line 231
    .restart local v1    # "oldSupport":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->close:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 111
    :cond_1
    return-void
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "handleBackgroundIntent gray forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-eq v0, v1, :cond_3

    .line 201
    :cond_2
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "handleSystemEvent not open status"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_3
    sget-object v0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handlePushReceive()V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "init failed context or rundata is empty"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "init gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getInstance()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    move-result-object v0

    if-nez v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->createInstance(Landroid/content/Context;)V

    .line 50
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getInstance()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V

    .line 52
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V

    goto :goto_0
.end method

.method public isForbiddenGray()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "FLOAT_AIR_POLLUTION_GRAY_CTRL_FALG"

    invoke-virtual {v2, v3, v1}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    .local v0, "cacheSupport":Z
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string/jumbo v0, "AirPollutionController"

    const-string/jumbo v1, "open gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method
