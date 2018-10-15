.class public Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;
.super Ljava/lang/Object;
.source "TrafficJsonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficJsonUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dailyWarnInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "info"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    .prologue
    .line 190
    const-class v3, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 191
    const/4 v2, 0x0

    .line 206
    :goto_0
    monitor-exit v3

    return-object v2

    .line 194
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v0, "dailyWarn":Lorg/json/JSONObject;
    const-string/jumbo v2, "totalTraffic"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getTotalTraffic()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v2, "updateTime"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getUpdateTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 198
    const-string/jumbo v2, "dailyEndTime"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v2, "todayTraffic"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getTodayTraffic()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v2, "phoneNum"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v2, "imsi"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 204
    .end local v0    # "dailyWarn":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "ex":Lorg/json/JSONException;
    :try_start_1
    const-string/jumbo v2, "TrafficJsonUtil"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const-string/jumbo v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    .end local v1    # "ex":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized jsonToDailyWarnInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 211
    const-class v5, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v4

    .line 229
    :goto_0
    monitor-exit v5

    return-object v2

    .line 215
    :cond_0
    :try_start_1
    new-instance v2, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    invoke-direct {v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;-><init>()V

    .line 216
    .local v2, "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 218
    .local v0, "dailyWarnInfo":Lorg/json/JSONObject;
    const-string/jumbo v6, "totalTraffic"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setTotalTraffic(F)V

    .line 220
    const-string/jumbo v6, "updateTime"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setUpdateTime(J)V

    .line 221
    const-string/jumbo v6, "dailyEndTime"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setEndTime(J)V

    .line 223
    const-string/jumbo v6, "todayTraffic"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setTodayTraffic(J)V

    .line 224
    const-string/jumbo v6, "phoneNum"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v6, "imsi"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setImsi(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "dailyWarnInfo":Lorg/json/JSONObject;
    .end local v2    # "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    .end local v3    # "jsonParser":Lorg/json/JSONTokener;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "ex":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v6, "TrafficJsonUtil"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v4

    .line 229
    goto :goto_0

    .line 211
    .end local v1    # "ex":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized jsonToTrafficInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    const-class v5, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 66
    :goto_0
    monitor-exit v5

    return-object v1

    .line 53
    :cond_0
    :try_start_1
    new-instance v1, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    invoke-direct {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;-><init>()V

    .line 54
    .local v1, "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 56
    .local v3, "traffic":Lorg/json/JSONObject;
    const-string/jumbo v6, "totalTraffic"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setTotalTraffic(F)V

    .line 57
    const-string/jumbo v6, "leftTraffic"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setLeftTraffic(F)V

    .line 58
    const-string/jumbo v6, "updateTime"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setUpdateTime(J)V

    .line 60
    const-string/jumbo v6, "detailUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setDetailUrl(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v6, "phoneNum"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v6, "imsi"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setImsi(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v1    # "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .end local v2    # "jsonParser":Lorg/json/JSONTokener;
    .end local v3    # "traffic":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v6, "TrafficJsonUtil"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    .line 66
    goto :goto_0

    .line 49
    .end local v0    # "ex":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized jsonToWarnConfigInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    .locals 12
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 163
    const-class v8, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    move-object v3, v7

    .line 186
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v3

    .line 167
    :cond_1
    :try_start_1
    new-instance v3, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    invoke-direct {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;-><init>()V

    .line 168
    .local v3, "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    .local v4, "object":Lorg/json/JSONObject;
    const-string/jumbo v9, "maxAccess"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->setMaxAccess(I)V

    .line 170
    const-string/jumbo v9, "scale"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 171
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v6, "warnScales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 174
    new-instance v5, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    invoke-direct {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;-><init>()V

    .line 175
    .local v5, "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "level"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setLevel(I)V

    .line 176
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "tip"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setTip(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setValue(F)V

    .line 178
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    .end local v5    # "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :cond_2
    invoke-virtual {v3, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->setScales(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v6    # "warnScales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v9, "TrafficJsonUtil"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v7

    .line 186
    goto :goto_0

    .line 163
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static declared-synchronized jsonToWarnedInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    .locals 12
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 102
    const-class v8, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    move-object v3, v7

    .line 131
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v3

    .line 106
    :cond_1
    :try_start_1
    new-instance v3, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    invoke-direct {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;-><init>()V

    .line 107
    .local v3, "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v4, "object":Lorg/json/JSONObject;
    const-string/jumbo v9, "isChecked"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setChecked(Z)V

    .line 110
    const-string/jumbo v9, "phoneNum"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v9, "updateTime"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setUpdateTime(J)V

    .line 112
    const-string/jumbo v9, "endtime"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setEndTime(J)V

    .line 113
    const-string/jumbo v9, "actualValue"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setActualValue(F)V

    .line 114
    const-string/jumbo v9, "warnScales"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 115
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v6, "warnScales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 118
    new-instance v5, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    invoke-direct {v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;-><init>()V

    .line 119
    .local v5, "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "warnLevel"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setLevel(I)V

    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "warnTip"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setTip(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "warnValue"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {v5, v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setValue(F)V

    .line 122
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v5    # "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :cond_2
    invoke-virtual {v3, v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->setWarnScaleList(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 128
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v6    # "warnScales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v9, "TrafficJsonUtil"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v7

    .line 131
    goto/16 :goto_0

    .line 102
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static declared-synchronized trafficInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "info"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 29
    const-class v3, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 30
    :try_start_0
    const-string/jumbo v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    monitor-exit v3

    return-object v2

    .line 33
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v1, "traffic":Lorg/json/JSONObject;
    const-string/jumbo v2, "totalTraffic"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v2, "leftTraffic"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getLeftTraffic()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v2, "updateTime"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getUpdateTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v2, "phoneNum"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v2, "detailUrl"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v2, "imsi"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 42
    .end local v1    # "traffic":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v2, "TrafficJsonUtil"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const-string/jumbo v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 29
    .end local v0    # "ex":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized warnConfigInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)Ljava/lang/String;
    .locals 10
    .param p0, "warnConfigInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    .prologue
    .line 135
    const-class v6, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v6

    if-nez p0, :cond_0

    .line 136
    :try_start_0
    const-string/jumbo v5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit v6

    return-object v5

    .line 139
    :cond_0
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v4, "warnConfigObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "maxAccess"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getMaxAccess()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 144
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 145
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 146
    .local v3, "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v7, "level"

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v7, "tip"

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getTip()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v7, "value"

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    .end local v4    # "warnConfigObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v5, "TrafficJsonUtil"

    const-string/jumbo v7, ""

    invoke-static {v5, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v5, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "warnConfigObj":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    const-string/jumbo v5, "scale"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 135
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "warnConfigObj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized warnedInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;)Ljava/lang/String;
    .locals 12
    .param p0, "warnedInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    .prologue
    const/4 v5, 0x0

    .line 71
    const-class v6, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;

    monitor-enter v6

    if-nez p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 75
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v4, "warnedInfoObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "isChecked"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->isChecked()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v7, "phoneNum"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v7, "updateTime"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v7, "endtime"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getEndTime()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v7, "actualValue"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getActualValue()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getWarnScaleList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getWarnScaleList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 84
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 85
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->getWarnScaleList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 86
    .local v3, "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "warnLevel"

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v8, "warnTip"

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getTip()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v8, "warnValue"

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v9

    float-to-double v10, v9

    invoke-virtual {v2, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 95
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    .end local v4    # "warnedInfoObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    const-string/jumbo v7, "TrafficJsonUtil"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 92
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "warnedInfoObj":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    const-string/jumbo v7, "warnScales"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto/16 :goto_0
.end method
