.class public Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper;
.super Ljava/lang/Object;
.source "TrafficInfoAvailableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficInfoAvailableHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrafficInfoAvailableState(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    .locals 10
    .param p0, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 28
    sget-object v3, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->UNAVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    .line 29
    .local v3, "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    if-nez p0, :cond_0

    .line 30
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    const-string/jumbo v6, "trafficInfo is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 64
    .end local v3    # "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    .local v4, "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    :goto_0
    return-object v4

    .line 34
    .end local v4    # "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    .restart local v3    # "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getUpdateTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lbaa;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 35
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    const-string/jumbo v6, "same month"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "cacheImsi":Ljava/lang/String;
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imsi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cacheImsi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 46
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    const-string/jumbo v6, "imsi same "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "detailUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    const-string/jumbo v6, "url is available "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v3, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->AVAILABLE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    .end local v0    # "cacheImsi":Ljava/lang/String;
    .end local v1    # "detailUrl":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v4, v3

    .line 64
    .end local v3    # "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    .restart local v4    # "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    goto/16 :goto_0

    .line 54
    .end local v4    # "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    .restart local v0    # "cacheImsi":Ljava/lang/String;
    .restart local v2    # "imsi":Ljava/lang/String;
    .restart local v3    # "trafficInfoState":Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;
    :cond_2
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    const-string/jumbo v6, "imsi changed "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v3, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->IMSICHANGE:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    goto :goto_1

    .line 60
    .end local v0    # "cacheImsi":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "TrafficInfoAvailableHelper"

    const-string/jumbo v6, "across month"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v3, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;->ACROSSMONTH:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper$TrafficInfoState;

    goto :goto_1
.end method

.method public static isTrafficInfoAvailable(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Z
    .locals 10
    .param p0, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, "isAvailable":Z
    if-nez p0, :cond_0

    move v4, v3

    .line 93
    .end local v3    # "isAvailable":Z
    .local v4, "isAvailable":I
    :goto_0
    return v4

    .line 77
    .end local v4    # "isAvailable":I
    .restart local v3    # "isAvailable":Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getUpdateTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lbaa;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "cacheImsi":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "detailUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 88
    const/4 v3, 0x1

    .end local v0    # "cacheImsi":Ljava/lang/String;
    .end local v1    # "detailUrl":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    :cond_1
    move v4, v3

    .line 93
    .restart local v4    # "isAvailable":I
    goto :goto_0
.end method
