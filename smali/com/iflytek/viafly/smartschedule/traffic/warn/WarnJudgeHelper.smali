.class public Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;
.super Ljava/lang/Object;
.source "WarnJudgeHelper.java"


# static fields
.field private static final NO_NEED_WARN_LEVEL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WarnJudgeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentLevel(FLjava/util/List;)I
    .locals 8
    .param p0, "leftPercent"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 91
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object p1

    .line 93
    :cond_1
    const/4 v3, -0x1

    .line 95
    .local v3, "level":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 96
    .local v2, "length":I
    new-array v4, v2, [F

    .line 97
    .local v4, "values":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v5

    aput v5, v4, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->sort([F)V

    .line 104
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 105
    aget v5, v4, v1

    cmpl-float v5, v5, p0

    if-ltz v5, :cond_4

    .line 107
    aget v5, v4, v1

    invoke-static {v5, p1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getLevelAccordingValue(FLjava/util/List;)I

    move-result v3

    .line 108
    const-string/jumbo v5, "WarnJudgeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLevelAccordingValue level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3
    return v3

    .line 104
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getCurrentWarnScale(I)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    .locals 6
    .param p0, "level"    # I

    .prologue
    .line 154
    const-string/jumbo v3, "WarnJudgeHelper"

    const-string/jumbo v4, " getCurrentWarnScale "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v1

    .line 156
    .local v1, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    const-string/jumbo v3, "WarnJudgeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " getWarnConfigInfo warnConfigInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 159
    .local v2, "warnscale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 160
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;-><init>()V

    .line 161
    .local v0, "tmpWarnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setLevel(I)V

    .line 162
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setValue(F)V

    .line 163
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getTip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setTip(Ljava/lang/String;)V

    .line 169
    .end local v0    # "tmpWarnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    .end local v2    # "warnscale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLevelAccordingValue(FLjava/util/List;)I
    .locals 3
    .param p0, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 117
    .local v0, "warnscale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v2

    cmpl-float v2, p0, v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v1

    .line 121
    .end local v0    # "warnscale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getScheduleData()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v3

    .line 234
    .local v3, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-nez v3, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v1

    .line 237
    :cond_1
    const-string/jumbo v7, "WarnJudgeHelper"

    const-string/jumbo v8, "getScheduleData "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v6

    .line 239
    .local v6, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    if-eqz v6, :cond_0

    .line 240
    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getWarnScaleList()Ljava/util/List;

    move-result-object v5

    .line 241
    .local v5, "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 243
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 244
    .local v4, "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    if-eqz v4, :cond_0

    .line 247
    new-instance v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-direct {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;-><init>()V

    .line 248
    .local v1, "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    const-string/jumbo v7, "TrafficController"

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setType(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v7, "TrafficSchedule"

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setId(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v7, "\u6d41\u91cf\u63d0\u9192"

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setTitle(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getTip()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setContent(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getLeftTraffic()F

    move-result v7

    cmpg-float v7, v7, v0

    if-gez v7, :cond_2

    .line 253
    .local v0, "left":F
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u672c\u6708\u603b\u6d41\u91cf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lzr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", \u5269\u4f59\u6d41\u91cf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 254
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lzr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setTipText(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v7, "image.ic_smart_float_flow"

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setFloatIconUrl(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v7, "image.ic_smart_card_flow"

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setCardIconUrl(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v7, "\u8be6\u60c5"

    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setBottomText(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getUpdateTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->formatUpdateTime(J)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "subTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 260
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v0    # "left":F
    .end local v2    # "subTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getLeftTraffic()F

    move-result v0

    goto :goto_1
.end method

.method public static getWarnScaleSwitchState(I)Z
    .locals 4
    .param p0, "position"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "isOpen":Z
    packed-switch p0, :pswitch_data_0

    .line 209
    :goto_0
    const-string/jumbo v1, "WarnJudgeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWarnScaleSwitchState isOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v0

    .line 198
    :pswitch_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getFirstWarnScaleSwitchState()Z

    move-result v0

    .line 199
    goto :goto_0

    .line 201
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getSecondWarnScaleSwitchState()Z

    move-result v0

    .line 202
    goto :goto_0

    .line 204
    :pswitch_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getThirdWarnScaleSwitchState()Z

    move-result v0

    .line 205
    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getWarnedInfoTriggerTime()J
    .locals 5

    .prologue
    .line 278
    const-string/jumbo v3, "WarnJudgeHelper"

    const-string/jumbo v4, "getScheduleData "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-wide/16 v0, 0x0

    .line 280
    .local v0, "updateTime":J
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v2

    .line 281
    .local v2, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getUpdateTime()J

    move-result-wide v0

    .line 284
    :cond_0
    return-wide v0
.end method

.method public static isCurrentLevelWarned(I)Z
    .locals 7
    .param p0, "level"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "isCurrentLevelWarned":Z
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v3

    .line 179
    .local v3, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getWarnScaleList()Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 182
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 183
    .local v1, "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v5

    if-lt p0, v5, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 190
    .end local v1    # "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    .end local v2    # "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    :cond_1
    const-string/jumbo v4, "WarnJudgeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " isCurrentLevelWarned is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v0
.end method

.method public static isNeedWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Z)Z
    .locals 10
    .param p0, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .param p1, "isNeedSaveWarnScale"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "isNeedWarn":Z
    if-nez p0, :cond_0

    move v1, v0

    .line 67
    .end local v0    # "isNeedWarn":Z
    .local v1, "isNeedWarn":I
    :goto_0
    return v1

    .line 38
    .end local v1    # "isNeedWarn":I
    .restart local v0    # "isNeedWarn":Z
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v6

    .line 39
    .local v6, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    if-eqz v6, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v5

    .line 41
    .local v5, "total":F
    const-string/jumbo v7, "WarnJudgeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getTotalTraffic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getLeftTraffic()F

    move-result v7

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v8

    div-float v2, v7, v8

    .line 45
    .local v2, "leftPercent":F
    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->isReachThreshold(Ljava/util/List;)F

    move-result v4

    .line 46
    .local v4, "threshold":F
    const-string/jumbo v7, "WarnJudgeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " leftPercent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string/jumbo v7, "WarnJudgeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " threshold "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    cmpg-float v7, v2, v4

    if-gtz v7, :cond_1

    .line 50
    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getCurrentLevel(FLjava/util/List;)I

    move-result v3

    .line 51
    .local v3, "level":I
    const-string/jumbo v7, "WarnJudgeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " current level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    .line 54
    const-string/jumbo v7, "WarnJudgeHelper"

    const-string/jumbo v8, " reach the threshold"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->isCurrentLevelWarned(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getWarnScaleSwitchState(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    .line 57
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v7, "WarnJudgeHelper"

    const-string/jumbo v8, " warn triggered \uff0c save warned info"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v3, v2}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->saveCurrentWarnScale(IF)V

    .end local v2    # "leftPercent":F
    .end local v3    # "level":I
    .end local v4    # "threshold":F
    .end local v5    # "total":F
    :cond_1
    :goto_2
    move v1, v0

    .line 67
    .restart local v1    # "isNeedWarn":I
    goto/16 :goto_0

    .line 55
    .end local v1    # "isNeedWarn":I
    .restart local v2    # "leftPercent":F
    .restart local v3    # "level":I
    .restart local v4    # "threshold":F
    .restart local v5    # "total":F
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 64
    .end local v2    # "leftPercent":F
    .end local v3    # "level":I
    .end local v4    # "threshold":F
    :cond_3
    const-string/jumbo v7, "WarnJudgeHelper"

    const-string/jumbo v8, " trafficInfo.getTotalTraffic error"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static isReachThreshold(Ljava/util/List;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "warnScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object p0

    .line 75
    :cond_1
    const/4 v1, 0x0

    .line 76
    .local v1, "threshold":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 77
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 78
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v1

    .line 76
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_3
    return v1
.end method

.method public static isWarnedScheduleAvailable()Z
    .locals 7

    .prologue
    .line 215
    const-string/jumbo v4, "WarnJudgeHelper"

    const-string/jumbo v5, "isWarnedScheduleAvailable "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "isStillAvailable":Z
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v3

    .line 218
    .local v3, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getEndTime()J

    move-result-wide v0

    .line 220
    .local v0, "endTime":J
    const-string/jumbo v4, "WarnJudgeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warnedInfo endTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 223
    const-string/jumbo v4, "WarnJudgeHelper"

    const-string/jumbo v5, "warned info is available "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x1

    .line 229
    .end local v0    # "endTime":J
    :cond_0
    :goto_0
    return v2

    .line 226
    .restart local v0    # "endTime":J
    :cond_1
    const-string/jumbo v4, "WarnJudgeHelper"

    const-string/jumbo v5, "warned info is unavailable"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveCurrentWarnScale(IF)V
    .locals 6
    .param p0, "level"    # I
    .param p1, "actualValue"    # F

    .prologue
    .line 128
    const-string/jumbo v3, "WarnJudgeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " saveCurrentWarnScale level is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v2

    .line 131
    .local v2, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    if-nez v2, :cond_0

    .line 132
    new-instance v2, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    .end local v2    # "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    invoke-direct {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;-><init>()V

    .line 134
    .restart local v2    # "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    :cond_0
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getCurrentWarnScale(I)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    move-result-object v1

    .line 135
    .local v1, "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->addWarnScale(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;)V

    .line 138
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v0

    .line 139
    .local v0, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setChecked(Z)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setUpdateTime(J)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->getFloatWInDismissTime(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setEndTime(J)V

    .line 143
    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setActualValue(F)V

    .line 144
    const-string/jumbo v3, "WarnJudgeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " saveCurrentWarnScale warnedInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateWarnedInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;)V

    .line 147
    .end local v0    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :cond_1
    return-void
.end method

.method public static setWarnedInfoUnavailable()V
    .locals 4

    .prologue
    .line 269
    const-string/jumbo v1, "WarnJudgeHelper"

    const-string/jumbo v2, "setWarnedInfoUnavailable "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v0

    .line 271
    .local v0, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setEndTime(J)V

    .line 273
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateWarnedInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;)V

    .line 275
    :cond_0
    return-void
.end method
