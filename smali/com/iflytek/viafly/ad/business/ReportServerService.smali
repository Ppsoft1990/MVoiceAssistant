.class public Lcom/iflytek/viafly/ad/business/ReportServerService;
.super Lcom/iflytek/viafly/ad/business/MyIntentService;
.source "ReportServerService.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lty;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "ReportServerService"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ad/business/MyIntentService;-><init>(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "ReportServerService"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/ReportServerService;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "behaviorType"    # Ljava/lang/String;
    .param p3, "adId"    # Ljava/lang/String;
    .param p4, "placeId"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string/jumbo v2, "MDAwMDAwMDAwMMqsg6KKfHuYepqr27B2q6t_0Y2mjHeBa3qgrJqbhqNv"

    .line 76
    .local v2, "APP_ID":Ljava/lang/String;
    const-string/jumbo v3, "phpAD"

    .line 77
    .local v3, "MIGU_AD_TOKEN":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v13

    invoke-virtual {v13}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v5

    .line 79
    .local v5, "config":Lcom/iflytek/yd/business/AppConfig;
    :try_start_0
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v10, "paramlist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const-string/jumbo v13, "app_id"

    const-string/jumbo v14, "MDAwMDAwMDAwMMqsg6KKfHuYepqr27B2q6t_0Y2mjHeBa3qgrJqbhqNv"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v13, "MDAwMDAwMDAwMMqsg6KKfHuYepqr27B2q6t_0Y2mjHeBa3qgrJqbhqNv"

    invoke-virtual {v10, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    const-string/jumbo v14, "finger_point"

    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    const-string/jumbo v13, ""

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    const-string/jumbo v13, ""

    :goto_1
    invoke-virtual {v10, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    const-string/jumbo v13, "connection"

    const-string/jumbo v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v13, ""

    invoke-virtual {v10, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 89
    const-string/jumbo v13, "location_lat"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v13, "0"

    invoke-virtual {v10, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    const-string/jumbo v13, "location_lng"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v13, "0"

    invoke-virtual {v10, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {}, Loa;->a()Loa;

    move-result-object v13

    invoke-virtual {v13}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v4

    .line 96
    .local v4, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v4, :cond_0

    .line 97
    const-string/jumbo v13, "location_lat"

    invoke-virtual {v4}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    float-to-int v14, v14

    const v15, 0xf4240

    mul-int/2addr v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const/4 v13, 0x3

    invoke-virtual {v4}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    const v15, 0x49742400    # 1000000.0f

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v13, "location_lng"

    invoke-virtual {v4}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    float-to-int v14, v14

    const v15, 0xf4240

    mul-int/2addr v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const/4 v13, 0x4

    invoke-virtual {v4}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    const v15, 0x49742400    # 1000000.0f

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 105
    .local v6, "curTime":J
    const-string/jumbo v13, "local_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    const-string/jumbo v13, "behavior_type"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v13, "ad_id"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    const-string/jumbo v13, "place_id"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v10, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v11, "sBuilder":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v13

    if-ge v9, v13, :cond_3

    .line 121
    invoke-virtual {v10, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 83
    .end local v4    # "address":Lcom/iflytek/common/lbs/XAddress;
    .end local v6    # "curTime":J
    .end local v9    # "i":I
    .end local v11    # "sBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 84
    :cond_2
    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 123
    .restart local v4    # "address":Lcom/iflytek/common/lbs/XAddress;
    .restart local v6    # "curTime":J
    .restart local v9    # "i":I
    .restart local v11    # "sBuilder":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v13, Ltz;

    invoke-direct {v13}, Ltz;-><init>()V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ltz;->b([B)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "signature":Ljava/lang/String;
    const-string/jumbo v13, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v4    # "address":Lcom/iflytek/common/lbs/XAddress;
    .end local v6    # "curTime":J
    .end local v9    # "i":I
    .end local v10    # "paramlist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v11    # "sBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "signature":Ljava/lang/String;
    :goto_3
    return-void

    .line 126
    :catch_0
    move-exception v8

    .line 127
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "ReportServerService"

    const-string/jumbo v14, "appendMIGUPostParams exception "

    invoke-static {v13, v14, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/ReportServerService;->b:Lty;

    if-nez v6, :cond_2

    .line 42
    new-instance v6, Lty;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lty;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/ad/business/ReportServerService;->b:Lty;

    .line 44
    :cond_2
    const-string/jumbo v6, "type"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 45
    .local v4, "type":I
    const-string/jumbo v6, "url"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "url":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v6

    invoke-virtual {v6}, Lhl;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 47
    const/16 v6, 0x52

    if-ne v6, v4, :cond_3

    .line 48
    const-string/jumbo v6, "{"

    const-string/jumbo v7, "%7B"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "}"

    const-string/jumbo v8, "%7D"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "["

    const-string/jumbo v8, "%5B"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "]"

    const-string/jumbo v8, "%5D"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\""

    const-string/jumbo v8, "%22"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 49
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/ReportServerService;->b:Lty;

    invoke-virtual {v6, v4, v5}, Lty;->reportServerWithGet(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v4    # "type":I
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ReportServerService"

    const-string/jumbo v7, "report server fail"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "type":I
    .restart local v5    # "url":Ljava/lang/String;
    :cond_3
    const/16 v6, 0x53

    if-ne v6, v4, :cond_0

    .line 51
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v3, "root":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 53
    .local v0, "dataArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v2, "itemData":Lorg/json/JSONObject;
    const-string/jumbo v6, "behaviorType"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "platformslotid"

    .line 55
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-direct {p0, v2, v6, v7, v8}, Lcom/iflytek/viafly/ad/business/ReportServerService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    const-string/jumbo v6, "data_type"

    const-string/jumbo v7, "user_behavior"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v6, "data"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/ReportServerService;->b:Lty;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7, v5}, Lty;->reportServerWithPost(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    .end local v0    # "dataArray":Lorg/json/JSONArray;
    .end local v2    # "itemData":Lorg/json/JSONObject;
    .end local v3    # "root":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v6, "ReportServerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NetWork isn\'t ok, url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "ReportServerService"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/ReportServerService;->b:Lty;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/ReportServerService;->b:Lty;

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ad/business/MyIntentService;->onDestroy()V

    .line 138
    return-void
.end method
