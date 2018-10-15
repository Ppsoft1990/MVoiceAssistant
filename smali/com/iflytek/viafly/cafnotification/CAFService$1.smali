.class Lcom/iflytek/viafly/cafnotification/CAFService$1;
.super Ljava/lang/Object;
.source "CAFService.java"

# interfaces
.implements Lwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/cafnotification/CAFService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Timer;

.field final synthetic b:I

.field final synthetic c:Lzn;

.field final synthetic d:Lcom/iflytek/viafly/cafnotification/CAFService;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/cafnotification/CAFService;Ljava/util/Timer;ILzn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/cafnotification/CAFService;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    iput-object p2, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->a:Ljava/util/Timer;

    iput p3, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->b:I

    iput-object p4, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->c:Lzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJI)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 141
    const-string/jumbo v0, "CAFService"

    const-string/jumbo v1, "request the caf data from network fail."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    invoke-static {v0}, Lcom/iflytek/viafly/cafnotification/CAFService;->b(Lcom/iflytek/viafly/cafnotification/CAFService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 144
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    iget v1, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->b:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/cafnotification/CAFService;->stopSelf(I)V

    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->c:Lzn;

    invoke-virtual {v0}, Lzn;->g()V

    .line 147
    return-void

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lwa;)V
    .locals 23
    .param p1, "result"    # Lwa;

    .prologue
    .line 64
    invoke-virtual/range {p1 .. p1}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v16

    .line 65
    .local v16, "jsonResult":Ljava/lang/String;
    const-string/jumbo v2, "CAFService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reveive caf data from network, the result is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 68
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v15, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "status"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 70
    .local v19, "status":Ljava/lang/String;
    const-string/jumbo v2, "success"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "callfees":Ljava/lang/String;
    const/4 v4, 0x0

    .line 73
    .local v4, "flow":Ljava/lang/String;
    const/4 v5, 0x0

    .line 74
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v2, "caller"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 75
    .local v18, "phoneNum":Ljava/lang/String;
    const-string/jumbo v2, "bill"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 76
    .local v9, "bill":Lorg/json/JSONObject;
    const/16 v21, 0x0

    .line 77
    .local v21, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    const/4 v10, 0x0

    .line 78
    .local v10, "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    if-eqz v9, :cond_1

    .line 79
    const-string/jumbo v2, "balance"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "balance":Ljava/lang/String;
    const-string/jumbo v2, "detailsUrl"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "detailUrl":Ljava/lang/String;
    const-string/jumbo v2, "used"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 82
    .local v22, "used":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 83
    invoke-static {v8}, Lzr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    :cond_0
    new-instance v10, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;

    .end local v10    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    invoke-direct {v10}, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;-><init>()V

    .line 86
    .restart local v10    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v10, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mLeftBill:F

    .line 87
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v10, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mUsedBill:F

    .line 88
    iput-object v11, v10, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mDetailUrl:Ljava/lang/String;

    .line 89
    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mPhoneNum:Ljava/lang/String;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v10, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mUpdateTime:J

    .line 91
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    invoke-static {v6}, Lcom/iflytek/viafly/cafnotification/CAFService;->a(Lcom/iflytek/viafly/cafnotification/CAFService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v2, v6}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mImsi:Ljava/lang/String;

    .line 93
    .end local v8    # "balance":Ljava/lang/String;
    .end local v11    # "detailUrl":Ljava/lang/String;
    .end local v22    # "used":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "gprs"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 94
    .local v14, "gprs":Lorg/json/JSONObject;
    if-eqz v14, :cond_3

    .line 95
    const-string/jumbo v2, "left"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 96
    .local v17, "left":Ljava/lang/String;
    const-string/jumbo v2, "total"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 97
    .local v20, "total":Ljava/lang/String;
    const-string/jumbo v2, "detailsUrl"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, "detailsUrl":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 99
    invoke-static/range {v17 .. v17}, Lzr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    :cond_2
    new-instance v21, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .end local v21    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    invoke-direct/range {v21 .. v21}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;-><init>()V

    .line 102
    .restart local v21    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setTotalTraffic(F)V

    .line 103
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setLeftTraffic(F)V

    .line 104
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setDetailUrl(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setUpdateTime(J)V

    .line 107
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    invoke-static {v6}, Lcom/iflytek/viafly/cafnotification/CAFService;->a(Lcom/iflytek/viafly/cafnotification/CAFService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v2, v6}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setImsi(Ljava/lang/String;)V

    .line 112
    .end local v12    # "detailsUrl":Ljava/lang/String;
    .end local v17    # "left":Ljava/lang/String;
    .end local v20    # "total":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lhl;->k()I

    move-result v2

    const/16 v6, 0x13

    if-lt v2, v6, :cond_4

    .line 113
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v2

    sget-object v6, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->fee_card:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v6}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    .line 115
    :cond_4
    const-string/jumbo v2, "url"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    if-nez v3, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    if-eqz v5, :cond_7

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    invoke-static {v2}, Lcom/iflytek/viafly/cafnotification/CAFService;->b(Lcom/iflytek/viafly/cafnotification/CAFService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->a:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 120
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->b:I

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/cafnotification/CAFService;->stopSelf(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->c:Lzn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .end local v3    # "callfees":Ljava/lang/String;
    .end local v4    # "flow":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v9    # "bill":Lorg/json/JSONObject;
    .end local v10    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .end local v14    # "gprs":Lorg/json/JSONObject;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v18    # "phoneNum":Ljava/lang/String;
    .end local v19    # "status":Ljava/lang/String;
    .end local v21    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :goto_0
    return-void

    .line 120
    .restart local v3    # "callfees":Ljava/lang/String;
    .restart local v4    # "flow":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v9    # "bill":Lorg/json/JSONObject;
    .restart local v10    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .restart local v14    # "gprs":Lorg/json/JSONObject;
    .restart local v15    # "json":Lorg/json/JSONObject;
    .restart local v18    # "phoneNum":Ljava/lang/String;
    .restart local v19    # "status":Ljava/lang/String;
    .restart local v21    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    .end local v3    # "callfees":Ljava/lang/String;
    .end local v4    # "flow":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v9    # "bill":Lorg/json/JSONObject;
    .end local v10    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .end local v14    # "gprs":Lorg/json/JSONObject;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v18    # "phoneNum":Ljava/lang/String;
    .end local v19    # "status":Ljava/lang/String;
    .end local v21    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :catch_0
    move-exception v13

    .line 129
    .local v13, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "CAFService"

    const-string/jumbo v6, "the caf data received from network is invalid."

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v13    # "e":Lorg/json/JSONException;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    invoke-static {v2}, Lcom/iflytek/viafly/cafnotification/CAFService;->b(Lcom/iflytek/viafly/cafnotification/CAFService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 133
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->a:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 134
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->b:I

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/cafnotification/CAFService;->stopSelf(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/cafnotification/CAFService$1;->c:Lzn;

    invoke-virtual {v2}, Lzn;->g()V

    goto :goto_0

    .line 125
    .restart local v3    # "callfees":Ljava/lang/String;
    .restart local v4    # "flow":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v9    # "bill":Lorg/json/JSONObject;
    .restart local v10    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .restart local v14    # "gprs":Lorg/json/JSONObject;
    .restart local v15    # "json":Lorg/json/JSONObject;
    .restart local v18    # "phoneNum":Ljava/lang/String;
    .restart local v19    # "status":Ljava/lang/String;
    .restart local v21    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :cond_7
    :try_start_6
    const-string/jumbo v2, "CAFService"

    const-string/jumbo v6, "the caf data received from network is invalid."

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 134
    .end local v3    # "callfees":Ljava/lang/String;
    .end local v4    # "flow":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v9    # "bill":Lorg/json/JSONObject;
    .end local v10    # "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    .end local v14    # "gprs":Lorg/json/JSONObject;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v18    # "phoneNum":Ljava/lang/String;
    .end local v19    # "status":Ljava/lang/String;
    .end local v21    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2
.end method
