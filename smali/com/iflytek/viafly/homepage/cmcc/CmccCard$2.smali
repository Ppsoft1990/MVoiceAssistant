.class Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;
.super Ljava/lang/Object;
.source "CmccCard.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 24
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 484
    if-nez p2, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "the cmcc card data received from network is null"

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    .line 577
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :goto_0
    return-void

    .line 493
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 496
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual/range {p2 .. p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v17

    .line 497
    .local v17, "jsonResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "result is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    .line 500
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v17}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    .local v16, "json":Lorg/json/JSONObject;
    const-string/jumbo v21, "content"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 503
    .local v13, "jsContent":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 505
    const-string/jumbo v21, "status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 506
    .local v20, "status":Ljava/lang/String;
    const-string/jumbo v21, "success"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 507
    if-eqz v13, :cond_7

    .line 508
    const/4 v4, 0x0

    .line 509
    .local v4, "bottomUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->f(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lorg/json/JSONObject;

    move-result-object v21

    const-string/jumbo v22, "bottomButton"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 510
    .local v11, "jsBottomArr":Lorg/json/JSONArray;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 511
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 512
    .local v10, "jsBottom":Lorg/json/JSONObject;
    if-eqz v10, :cond_1

    .line 513
    const-string/jumbo v21, "url"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    .end local v10    # "jsBottom":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->f(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lorg/json/JSONObject;

    move-result-object v21

    const-string/jumbo v22, "gprs"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 519
    .local v15, "jsFlow":Lorg/json/JSONObject;
    const-string/jumbo v8, ""

    .line 520
    .local v8, "flow":Ljava/lang/String;
    const-string/jumbo v18, ""

    .line 521
    .local v18, "leftFee":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 523
    .local v5, "chargeBillUrl":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 524
    const-string/jumbo v21, "left"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 527
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->f(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lorg/json/JSONObject;

    move-result-object v21

    const-string/jumbo v22, "bill"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 528
    .local v14, "jsFee":Lorg/json/JSONObject;
    if-eqz v14, :cond_3

    .line 529
    const-string/jumbo v21, "balance"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 531
    const-string/jumbo v21, "button"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 532
    .local v12, "jsChargeBill":Lorg/json/JSONObject;
    if-eqz v12, :cond_3

    .line 533
    const-string/jumbo v21, "url"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 537
    .end local v12    # "jsChargeBill":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/4 v9, 0x1

    .line 540
    .local v9, "isIllegalFlowAndFee":Z
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    if-eqz v9, :cond_6

    .line 541
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "return result is isIllegalFlowAndFee  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 569
    .end local v4    # "bottomUrl":Ljava/lang/String;
    .end local v5    # "chargeBillUrl":Ljava/lang/String;
    .end local v8    # "flow":Ljava/lang/String;
    .end local v9    # "isIllegalFlowAndFee":Z
    .end local v11    # "jsBottomArr":Lorg/json/JSONArray;
    .end local v13    # "jsContent":Lorg/json/JSONObject;
    .end local v14    # "jsFee":Lorg/json/JSONObject;
    .end local v15    # "jsFlow":Lorg/json/JSONObject;
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v18    # "leftFee":Ljava/lang/String;
    .end local v20    # "status":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 570
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "the cmcc card data received from network parse fail"

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 537
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "bottomUrl":Ljava/lang/String;
    .restart local v5    # "chargeBillUrl":Ljava/lang/String;
    .restart local v8    # "flow":Ljava/lang/String;
    .restart local v11    # "jsBottomArr":Lorg/json/JSONArray;
    .restart local v13    # "jsContent":Lorg/json/JSONObject;
    .restart local v14    # "jsFee":Lorg/json/JSONObject;
    .restart local v15    # "jsFlow":Lorg/json/JSONObject;
    .restart local v16    # "json":Lorg/json/JSONObject;
    .restart local v18    # "leftFee":Ljava/lang/String;
    .restart local v20    # "status":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 544
    .restart local v9    # "isIllegalFlowAndFee":Z
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-string/jumbo v21, "yyyy-MM-dd HH:mm:ss"

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 545
    .local v19, "localTime":Ljava/lang/String;
    const-string/jumbo v21, "updateTime"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string/jumbo v21, "imsi"

    sget-object v22, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->l(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string/jumbo v21, "version"

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    .line 550
    invoke-static {}, Lil;->a()Lil;

    move-result-object v21

    const-string/jumbo v22, "com.iflytek.cmcc.IFLY_CARD_CMCC_CACHE"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v21, Lakh;

    invoke-direct/range {v21 .. v21}, Lakh;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->m(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lakh;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 555
    .end local v4    # "bottomUrl":Ljava/lang/String;
    .end local v5    # "chargeBillUrl":Ljava/lang/String;
    .end local v8    # "flow":Ljava/lang/String;
    .end local v9    # "isIllegalFlowAndFee":Z
    .end local v11    # "jsBottomArr":Lorg/json/JSONArray;
    .end local v14    # "jsFee":Lorg/json/JSONObject;
    .end local v15    # "jsFlow":Lorg/json/JSONObject;
    .end local v18    # "leftFee":Ljava/lang/String;
    .end local v19    # "localTime":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 558
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    const-string/jumbo v22, "errorCode"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    const-string/jumbo v21, "000004"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    const-string/jumbo v21, "000001"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 562
    :cond_9
    const-string/jumbo v21, "errorBoot"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 563
    .local v7, "errorBoot":Lorg/json/JSONObject;
    if-eqz v7, :cond_a

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    const-string/jumbo v22, "imgUrl"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .end local v7    # "errorBoot":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 574
    .end local v13    # "jsContent":Lorg/json/JSONObject;
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v20    # "status":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "the cmcc card data received from network is empty."

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
