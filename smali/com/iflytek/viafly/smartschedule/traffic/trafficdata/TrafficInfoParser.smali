.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoParser;
.super Ljava/lang/Object;
.source "TrafficInfoParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficInfoParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImsi()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TrafficInfoParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImsi error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPhoneNumCorrect(Ljava/lang/String;)Z
    .locals 4
    .param p0, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "isCorrect":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v2

    .line 86
    .local v2, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "lastPhoneNum":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 96
    .end local v1    # "lastPhoneNum":Ljava/lang/String;
    .end local v2    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :cond_0
    :goto_0
    return v0

    .line 93
    .restart local v2    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseResult(Lwa;)Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .locals 14
    .param p0, "result"    # Lwa;

    .prologue
    const/4 v10, 0x0

    .line 29
    if-nez p0, :cond_0

    move-object v3, v10

    .line 78
    :goto_0
    return-object v3

    .line 32
    :cond_0
    invoke-virtual {p0}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "jsonResult":Ljava/lang/String;
    const-string/jumbo v11, "TrafficInfoParser"

    const-string/jumbo v12, "\u6d41\u91cf\u63a5\u53e3\u6570\u636e\u89e3\u6790"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 36
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "status"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    .local v8, "status":Ljava/lang/String;
    const-string/jumbo v11, "caller"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "phoneNum":Ljava/lang/String;
    const-string/jumbo v11, "success"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 41
    const-string/jumbo v11, "TrafficInfoParser"

    const-string/jumbo v12, "\u8bf7\u6c42\u6210\u529f"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, "left":Ljava/lang/String;
    const/4 v9, 0x0

    .line 44
    .local v9, "total":Ljava/lang/String;
    const/4 v0, 0x0

    .line 45
    .local v0, "detailUrl":Ljava/lang/String;
    const-string/jumbo v11, "gprs"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    .local v2, "gprs":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 47
    const-string/jumbo v11, "left"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    const-string/jumbo v11, "total"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 49
    const-string/jumbo v11, "detailsUrl"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    const-string/jumbo v11, "TrafficInfoParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u83b7\u53d6\u5230 left:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " detailUrl:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " phone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v7}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoParser;->isPhoneNumCorrect(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 57
    :cond_2
    const-string/jumbo v11, "TrafficInfoParser"

    const-string/jumbo v12, "\u6570\u636e\u6821\u9a8c\u5931\u8d25"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v10

    .line 58
    goto/16 :goto_0

    .line 60
    :cond_3
    new-instance v3, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    invoke-direct {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;-><init>()V

    .line 61
    .local v3, "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v3, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setLeftTraffic(F)V

    .line 62
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v3, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setTotalTraffic(F)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setUpdateTime(J)V

    .line 64
    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setDetailUrl(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoParser;->getImsi()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setImsi(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 73
    .end local v0    # "detailUrl":Ljava/lang/String;
    .end local v2    # "gprs":Lorg/json/JSONObject;
    .end local v3    # "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "left":Ljava/lang/String;
    .end local v7    # "phoneNum":Ljava/lang/String;
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "total":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "TrafficInfoParser"

    const-string/jumbo v12, "the caf data received from network is invalid."

    invoke-static {v11, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    const-string/jumbo v11, "TrafficInfoParser"

    const-string/jumbo v12, "\u63a5\u53e3\u6d41\u91cf\u8c03\u7528\u5931\u8d25"

    invoke-static {v11, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v10

    .line 78
    goto/16 :goto_0
.end method
