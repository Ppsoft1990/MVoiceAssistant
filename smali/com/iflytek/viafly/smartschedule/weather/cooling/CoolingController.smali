.class public final Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
.source "CoolingController.java"


# static fields
.field private static final COOLING_SCHEDULE_GRAY_KEY:Ljava/lang/String; = "120014"

.field private static final TAG:Ljava/lang/String; = "Weather_CoolingController"


# instance fields
.field private mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

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

    .line 234
    if-nez p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const-string/jumbo v1, "80002"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 239
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "close gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "delete gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->isForbiddenGray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string/jumbo v1, "Weather_CoolingController"

    const-string/jumbo v2, "handleBackgroundIntent gray forbidden"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-eq v1, v2, :cond_3

    .line 155
    :cond_2
    const-string/jumbo v1, "Weather_CoolingController"

    const-string/jumbo v2, "handleBackgroundIntent not open status"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_3
    const-string/jumbo v1, "com.iflytek.cmcc.SMART_SCHEDULE_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "extra":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    const-string/jumbo v1, "Weather_CoolingController"

    const-string/jumbo v2, "handleBackgroundIntent extra is empty"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_4
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handleBackgroundIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->bottombtn:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 142
    :cond_1
    return-void
.end method

.method public handleBottomLeftBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 0
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 145
    return-void
.end method

.method public handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->content:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 131
    :cond_1
    return-void
.end method

.method public handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->edit:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 120
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
    .line 210
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 211
    const-string/jumbo v2, "120014"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "COOLING_SCHEDULE_GRAY_CTRL_FLAG"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    .line 214
    .local v1, "oldSupport":Z
    const-string/jumbo v3, "Weather_CoolingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "120014:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v2, "120014"

    .line 215
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v3, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "120014"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 218
    .local v0, "isSupport":Z
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "COOLING_SCHEDULE_GRAY_CTRL_FLAG"

    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 221
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 222
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->onGrayChanged(Z)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->onGrayChanged(Z)V

    .line 231
    .end local v0    # "isSupport":Z
    .end local v1    # "oldSupport":Z
    :cond_1
    return-void

    .line 216
    .restart local v1    # "oldSupport":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->close:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 109
    :cond_1
    return-void
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "handleSystemEvent gray forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-eq v0, v1, :cond_3

    .line 185
    :cond_2
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "handleSystemEvent not open status"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_3
    sget-object v0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handlePushReceive()V

    goto :goto_0

    .line 189
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
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "init failed context or rundata is empty"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "init gray forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getInstance()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    move-result-object v0

    if-nez v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->createInstance(Landroid/content/Context;)V

    .line 49
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getInstance()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V

    .line 51
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V

    goto :goto_0
.end method

.method public isForbiddenGray()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "COOLING_SCHEDULE_GRAY_CTRL_FLAG"

    invoke-virtual {v2, v3, v1}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    .local v0, "isSupport":Z
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
    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "Weather_CoolingController"

    const-string/jumbo v1, "open gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingEffectCategory;->open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method
