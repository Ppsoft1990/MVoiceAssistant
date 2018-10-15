.class public Lakh;
.super Ljava/lang/Object;
.source "CmccDataNotify.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "CmccDataNotify"

    iput-object v0, p0, Lakh;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const/4 v11, 0x0

    .line 29
    .local v11, "bottomUrl":Ljava/lang/String;
    const-string/jumbo v25, "bottomButton"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 30
    .local v4, "array":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v25

    if-lez v25, :cond_2

    .line 31
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 32
    .local v21, "obj":Lorg/json/JSONObject;
    const-string/jumbo v25, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 34
    .end local v21    # "obj":Lorg/json/JSONObject;
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 35
    const-string/jumbo v25, "CmccDataNotify"

    const-string/jumbo v26, "bottom url is empty"

    invoke-static/range {v25 .. v26}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_3
    const-string/jumbo v25, "updateTime"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 40
    .local v24, "updateTime":Ljava/lang/String;
    if-nez v24, :cond_4

    .line 41
    const-string/jumbo v25, "CmccDataNotify"

    const-string/jumbo v26, "updateTime is empty"

    invoke-static/range {v25 .. v26}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_4
    const/16 v22, 0x0

    .line 46
    .local v22, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    const/4 v15, 0x0

    .line 47
    .local v15, "flowLeft":Ljava/lang/String;
    const/16 v16, 0x0

    .line 48
    .local v16, "flowTotal":Ljava/lang/String;
    const/4 v14, 0x0

    .line 49
    .local v14, "flowDetailUrl":Ljava/lang/String;
    const/16 v18, 0x0

    .line 51
    .local v18, "formatFlowLeft":Ljava/lang/String;
    new-instance v7, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;

    invoke-direct {v7}, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;-><init>()V

    .line 52
    .local v7, "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    const/4 v9, 0x0

    .line 53
    .local v9, "billLeft":Ljava/lang/String;
    const/4 v10, 0x0

    .line 54
    .local v10, "billUsed":Ljava/lang/String;
    const/4 v6, 0x0

    .line 55
    .local v6, "billDetailUrl":Ljava/lang/String;
    const/16 v17, 0x0

    .line 57
    .local v17, "formatBillLeft":Ljava/lang/String;
    const-string/jumbo v25, "caller"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 59
    .local v12, "caller":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v25, "gprs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 60
    .local v19, "gprs":Lorg/json/JSONObject;
    if-eqz v19, :cond_9

    .line 61
    new-instance v23, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    invoke-direct/range {v23 .. v23}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v22    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .local v23, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :try_start_1
    const-string/jumbo v25, "left"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 64
    const-string/jumbo v25, "total"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 65
    const-string/jumbo v25, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 66
    const-string/jumbo v25, "CmccDataNotify"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "gprs-----------------flowLeft = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ; flowTotal = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ; flowDetailUrl = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 70
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setLeftTraffic(F)V

    .line 73
    :cond_5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 74
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setTotalTraffic(F)V

    .line 77
    :cond_6
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setDetailUrl(Ljava/lang/String;)V

    .line 79
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 80
    invoke-static {v15}, Lzr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 82
    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 83
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 86
    :cond_8
    sget-object v25, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setImsi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v23

    .line 89
    .end local v23    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .restart local v22    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :cond_9
    :try_start_2
    const-string/jumbo v25, "bill"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 90
    .local v5, "bill":Lorg/json/JSONObject;
    if-eqz v5, :cond_e

    .line 91
    new-instance v8, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;

    invoke-direct {v8}, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    .end local v7    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .local v8, "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    :try_start_3
    const-string/jumbo v25, "balance"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 93
    const-string/jumbo v25, "used"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    const-string/jumbo v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    const-string/jumbo v25, "CmccDataNotify"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "bill--------billLeft = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ; billUsed = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ; billDetailUrl = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 99
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    iput v0, v8, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mLeftBill:F

    .line 102
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 103
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    iput v0, v8, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mUsedBill:F

    .line 106
    :cond_b
    iput-object v6, v8, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mDetailUrl:Ljava/lang/String;

    .line 108
    if-eqz v9, :cond_c

    .line 109
    invoke-static {v9}, Lzr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 112
    :cond_c
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 113
    iput-object v12, v8, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mPhoneNum:Ljava/lang/String;

    .line 116
    :cond_d
    const-string/jumbo v25, "CmccDataNotify"

    const-string/jumbo v26, "bill--------end "

    invoke-static/range {v25 .. v26}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v8

    .line 119
    .end local v8    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .restart local v7    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    :cond_e
    :try_start_4
    invoke-static {}, Lhl;->k()I

    move-result v25

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_f

    .line 121
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v25

    sget-object v26, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->notification:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    .line 125
    :cond_f
    if-eqz v17, :cond_0

    if-eqz v18, :cond_0

    if-eqz v11, :cond_0

    .line 126
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v25, "com.iflytek.viafly.cafnotification.ACTION_RECEIVE_CAF_DATA_FROM_CARD"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v20, "intent":Landroid/content/Intent;
    const-string/jumbo v25, "callfees"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v25, "flow"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v25, "update_time_in_millis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 130
    const-string/jumbo v25, "url"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 133
    .end local v5    # "bill":Lorg/json/JSONObject;
    .end local v19    # "gprs":Lorg/json/JSONObject;
    .end local v20    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 134
    .local v13, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v25, "CmccDataNotify"

    const-string/jumbo v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 133
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v22    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .restart local v19    # "gprs":Lorg/json/JSONObject;
    .restart local v23    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :catch_1
    move-exception v13

    move-object/from16 v22, v23

    .end local v23    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .restart local v22    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    goto :goto_1

    .end local v7    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .restart local v5    # "bill":Lorg/json/JSONObject;
    .restart local v8    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    :catch_2
    move-exception v13

    move-object v7, v8

    .end local v8    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .restart local v7    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    goto :goto_1
.end method
