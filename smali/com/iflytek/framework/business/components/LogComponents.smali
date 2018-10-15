.class public final Lcom/iflytek/framework/business/components/LogComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "LogComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_LogComponents"


# instance fields
.field private mBlcOpLog:Lwq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    const-string/jumbo v2, "Business_LogComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onExec action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " params = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string/jumbo v2, "addCmccLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 37
    .local v8, "cmccCode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string/jumbo v2, "Business_LogComponents"

    const-string/jumbo v4, "onExec add cmcc_log opCode is empty"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v2, 0x0

    .line 75
    .end local v8    # "cmccCode":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 41
    .restart local v8    # "cmccCode":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/LogComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    invoke-virtual {v2, v8}, Lwz;->a(Ljava/lang/String;)V

    .line 75
    .end local v8    # "cmccCode":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v2, "addLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 45
    .local v12, "jsonObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_1

    .line 46
    const-string/jumbo v2, "code"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "opCode":Ljava/lang/String;
    const-string/jumbo v2, "starttime"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, "startTime":Ljava/lang/String;
    const-string/jumbo v2, "result"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    const-string/jumbo v2, "Business_LogComponents"

    const-string/jumbo v4, "opCode is empty"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :cond_3
    const-string/jumbo v2, "extend"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 54
    .local v10, "extendObject":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v7, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_4

    .line 57
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 58
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 60
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "value":Ljava/lang/String;
    invoke-virtual {v7, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 66
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 69
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/framework/business/components/LogComponents;->mBlcOpLog:Lwq;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {v2 .. v7}, Lwq;->appendOpLog(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v9

    .line 71
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Business_LogComponents"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 80
    new-instance v0, Lwq;

    invoke-direct {v0, p1}, Lwq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/LogComponents;->mBlcOpLog:Lwq;

    .line 81
    return-void
.end method
