.class public final Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
.source "UmbrellaController.java"


# static fields
.field private static final FLOAT_WINDOW_GRAY_CONTROL_KEY:Ljava/lang/String; = "120006"

.field private static final TAG:Ljava/lang/String; = "Weather_UmbrellaController"


# instance fields
.field private mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

.field private mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;-><init>()V

    return-void
.end method

.method private judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    const/4 v0, 0x0

    .line 149
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const-string/jumbo v1, "80001"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 154
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "close gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "delete gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->isForbiddenGray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const-string/jumbo v1, "Weather_UmbrellaController"

    const-string/jumbo v2, "handleBackgroundIntent gray forbidden"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-eq v1, v2, :cond_3

    .line 169
    :cond_2
    const-string/jumbo v1, "Weather_UmbrellaController"

    const-string/jumbo v2, "handleBackgroundIntent not open status"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_3
    const-string/jumbo v1, "com.iflytek.cmcc.SMART_SCHEDULE_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "extra":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    const-string/jumbo v1, "Weather_UmbrellaController"

    const-string/jumbo v2, "handleBackgroundIntent extra is empty"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_4
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handleBackgroundIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->bottombtn:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 143
    :cond_1
    return-void
.end method

.method public handleBottomLeftBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 0
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 146
    return-void
.end method

.method public handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->content:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 132
    :cond_1
    return-void
.end method

.method public handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->edit:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 121
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
    .line 224
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 225
    const-string/jumbo v2, "120006"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "FLOAT_WEATHER_GRAY_CTRL_FALG"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    .line 228
    .local v1, "oldSupport":Z
    const-string/jumbo v3, "Weather_UmbrellaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "120006:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v2, "120006"

    .line 229
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v3, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "120006"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 232
    .local v0, "isSupport":Z
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "FLOAT_WEATHER_GRAY_CTRL_FALG"

    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 235
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 236
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->onGrayChanged(Z)V

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->onGrayChanged(Z)V

    .line 245
    .end local v0    # "isSupport":Z
    .end local v1    # "oldSupport":Z
    :cond_1
    return-void

    .line 230
    .restart local v1    # "oldSupport":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->judgeDataLegal(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "handleRemove data not legal"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->close:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 110
    :cond_1
    return-void
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "handleBackgroundIntent gray forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-eq v0, v1, :cond_3

    .line 200
    :cond_2
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "handleSystemEvent not open status"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_3
    sget-object v0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handlePushReceive()V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    sget-object v1, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_1

    .line 36
    :cond_0
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "init failed context or rundata is empty"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "init gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getInstance()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    move-result-object v0

    if-nez v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->createInstance(Landroid/content/Context;)V

    .line 49
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getInstance()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V

    .line 51
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V

    goto :goto_0
.end method

.method public isForbiddenGray()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "FLOAT_WEATHER_GRAY_CTRL_FALG"

    invoke-virtual {v2, v3, v1}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 189
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
    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "Weather_UmbrellaController"

    const-string/jumbo v1, "open gray not forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mRequestCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->mEffectCategory:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    goto :goto_0
.end method
