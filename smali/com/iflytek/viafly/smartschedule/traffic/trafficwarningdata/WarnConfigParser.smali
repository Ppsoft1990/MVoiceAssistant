.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigParser;
.super Ljava/lang/Object;
.source "WarnConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WarnConfigParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseStrategyResult(Lwa;)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    .locals 14
    .param p0, "result"    # Lwa;

    .prologue
    const/4 v10, 0x0

    .line 32
    if-nez p0, :cond_1

    move-object v9, v10

    .line 73
    :cond_0
    :goto_0
    return-object v9

    .line 35
    :cond_1
    invoke-virtual {p0}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "jsonResult":Ljava/lang/String;
    const-string/jumbo v11, "WarnConfigParser"

    const-string/jumbo v12, "\u5f00\u59cb\u89e3\u6790\u7b56\u7565\u63a5\u53e3\u6570\u636e"

    invoke-static {v11, v12}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 39
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "status"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "status":Ljava/lang/String;
    const-string/jumbo v11, "success"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 42
    new-instance v9, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    invoke-direct {v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;-><init>()V

    .line 44
    .local v9, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v7, "scales_gprs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    const-string/jumbo v11, "warnGprs"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    .local v1, "gprs":Lorg/json/JSONObject;
    const-string/jumbo v11, "scales"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 47
    .local v2, "gprsScales":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 48
    new-instance v6, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    invoke-direct {v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;-><init>()V

    .line 49
    .local v6, "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "level"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setLevel(I)V

    .line 51
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "value"

    .line 52
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v11, v12

    .line 51
    invoke-virtual {v6, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setValue(F)V

    .line 53
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "tip"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->setTip(Ljava/lang/String;)V

    .line 55
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v6    # "scale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :cond_2
    invoke-virtual {v9, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->setScales(Ljava/util/List;)V

    .line 58
    const-string/jumbo v11, "maxAccess"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->setMaxAccess(I)V

    .line 61
    invoke-virtual {v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    .line 63
    :cond_3
    const-string/jumbo v11, "WarnConfigParser"

    const-string/jumbo v12, "\u7b56\u7565\u63a5\u53e3\u6570\u636e\uff0c\u6821\u9a8c\u5931\u8d25"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    .line 64
    goto/16 :goto_0

    .line 68
    .end local v1    # "gprs":Lorg/json/JSONObject;
    .end local v2    # "gprsScales":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v7    # "scales_gprs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "WarnConfigParser"

    const-string/jumbo v12, "the caf data received from network is invalid."

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    const-string/jumbo v11, "WarnConfigParser"

    const-string/jumbo v12, "\u7b56\u7565\u63a5\u53e3\u6570\u636e\u89e3\u6790\u5931\u8d25"

    invoke-static {v11, v12}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 73
    goto/16 :goto_0
.end method
