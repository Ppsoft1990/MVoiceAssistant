.class public Lcom/iflytek/framework/business/components/SystemComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "SystemComponents.java"


# static fields
.field private static final SETTING_BLC_ADDRESS:I = 0x5

.field private static final SETTING_TYPE_BOOLEAN:I = 0x1

.field private static final SETTING_TYPE_INT:I = 0x2

.field private static final SETTING_TYPE_LONG:I = 0x4

.field private static final SETTING_TYPE_STRING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Buniness_SystemComponents"


# instance fields
.field private mCmccAuthentication:Lcom/iflytek/common/cmccauth/CmccAuthentication;

.field private mCpuUtil:Lazg;

.field private mEnvironment:Lhl;

.field private mSetting:Lil;

.field private mSimInfoHelper:Lhy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method

.method private HandlerGetTokenResult(Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 358
    .local v3, "resultObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "getMiguToken"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/SystemComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "callbackID":Ljava/lang/String;
    const-string/jumbo v4, "Buniness_SystemComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GET_MIGU_TOKEN callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_0
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string/jumbo v4, "miguToken"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string/jumbo v4, "errorCode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 368
    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 371
    return-void

    .line 364
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "Buniness_SystemComponents"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/SystemComponents;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/SystemComponents;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/SystemComponents;->HandlerGetTokenResult(Ljava/lang/String;)V

    return-void
.end method

.method private transferSimOperator(Lcom/iflytek/common/cmccauth/entities/SimOperatorType;)I
    .locals 3
    .param p1, "operatorType"    # Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .prologue
    const/4 v0, 0x0

    .line 419
    if-nez p1, :cond_0

    .line 430
    :goto_0
    return v0

    .line 422
    :cond_0
    sget-object v1, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$common$cmccauth$entities$SimOperatorType:[I

    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 424
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 426
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 428
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private transferSimState(Lcom/iflytek/yd/system/SimState;)I
    .locals 3
    .param p1, "simState"    # Lcom/iflytek/yd/system/SimState;

    .prologue
    const/4 v0, 0x0

    .line 435
    if-nez p1, :cond_0

    .line 443
    :goto_0
    :pswitch_0
    return v0

    .line 439
    :cond_0
    sget-object v1, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$yd$system$SimState:[I

    invoke-virtual {p1}, Lcom/iflytek/yd/system/SimState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 443
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 387
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 388
    .local v0, "card":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 389
    move-object v0, p1

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mSimInfoHelper:Lhy;

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mSimInfoHelper:Lhy;

    invoke-virtual {v1, v0}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/iflytek/yd/system/SimState;->UNKNOWN:Lcom/iflytek/yd/system/SimState;

    goto :goto_0
.end method

.method public getSimType(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 405
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 406
    .local v0, "card":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-eqz p1, :cond_0

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 407
    move-object v0, p1

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mSimInfoHelper:Lhy;

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mSimInfoHelper:Lhy;

    invoke-virtual {v2, v0}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v2

    .line 415
    .end local v1    # "imsi":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 37
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    const-string/jumbo v3, "Buniness_SystemComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onExec action = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " params = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v3, "getBaseInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mEnvironment:Lhl;

    invoke-virtual {v3}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v9

    .line 92
    .local v9, "appConfig":Lcom/iflytek/yd/business/AppConfig;
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v23, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "imei"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v4, "imsi"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    :goto_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v3, "appId"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v3, "clientver"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v3, "df"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v3, "uid"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v3, "token"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mCmccAuthentication:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v4, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v3, "ver"

    const-string/jumbo v4, "2.0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v3, "osid"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v3, "ua"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v3, "cpu"

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v3, "androidid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v4

    invoke-virtual {v4}, Lhy;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v3, "mac"

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v3, "cellid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v4

    invoke-virtual {v4}, Lhy;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v3, "uuid"

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->i()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 353
    .end local v9    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    return-object v29

    .line 93
    .restart local v9    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 94
    :cond_1
    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 115
    .end local v9    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v3, "getJson30BaseInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mEnvironment:Lhl;

    invoke-virtual {v3}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v9

    .line 117
    .restart local v9    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "imei"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, ""

    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v4, "imsi"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v3, ""

    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v3, "aid"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v3, "df"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v3, "uid"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v3, "token"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mCmccAuthentication:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v4, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v3, "pver"

    const-string/jumbo v4, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v3, "ver"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v3, "osid"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v3, "ua"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string/jumbo v3, "cpu"

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string/jumbo v3, "androidid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v4

    invoke-virtual {v4}, Lhy;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v3, "mac"

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string/jumbo v3, "cellid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v4

    invoke-virtual {v4}, Lhy;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string/jumbo v3, "uuid"

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->i()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 118
    :cond_3
    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 119
    :cond_4
    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 139
    .end local v9    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v3, "getAppconfig"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mEnvironment:Lhl;

    invoke-virtual {v3}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v9

    .line 141
    .restart local v9    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "imei"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v3, "imsi"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v3, "appId"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v3, "channel"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v3, "uid"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v3, "token"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mCmccAuthentication:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v4, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v3, "clientver"

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 151
    .end local v9    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    :cond_6
    const-string/jumbo v3, "getNetWorkType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 152
    new-instance v12, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 153
    .local v12, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v12}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v27

    .line 155
    .local v27, "networkType":I
    sget-object v3, Lcom/iflytek/yd/system/ApnAccessorType;->UNKNOWN:Lcom/iflytek/yd/system/ApnAccessorType;

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "apn":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 157
    invoke-virtual {v12}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 159
    sget-object v3, Lcom/iflytek/yd/system/ApnAccessorType;->WIFI:Lcom/iflytek/yd/system/ApnAccessorType;

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v8

    .line 161
    :cond_7
    new-instance v3, Lcom/iflytek/yd/system/ApnManager;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/iflytek/yd/system/SimInfoManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4, v6}, Lcom/iflytek/yd/system/ApnManager;-><init>(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnManager;->getAPNType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v8

    .line 164
    :cond_8
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 165
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "apn"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string/jumbo v3, "networktype"

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 169
    .end local v8    # "apn":Ljava/lang/String;
    .end local v12    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v27    # "networkType":I
    :cond_9
    const-string/jumbo v3, "isNetWorkAvailable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 170
    new-instance v12, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 171
    .restart local v12    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v12}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v21

    .line 172
    .local v21, "isConnected":Z
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 174
    .end local v12    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .end local v21    # "isConnected":Z
    :cond_a
    const-string/jumbo v3, "getDeviceInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 175
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "product"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v3, "sdk_init"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v3, "release"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/WindowManager;

    .line 181
    .local v36, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 182
    .local v15, "display":Landroid/view/Display;
    const-string/jumbo v3, "screenHeight"

    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v3, "screenWidth"

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mCpuUtil:Lazg;

    if-nez v3, :cond_b

    .line 185
    new-instance v3, Lazg;

    invoke-direct {v3}, Lazg;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mCpuUtil:Lazg;

    .line 187
    :cond_b
    const-string/jumbo v3, "cpuCount"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mCpuUtil:Lazg;

    invoke-virtual {v4}, Lazg;->b()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v3

    instance-of v3, v3, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v3, :cond_c

    .line 190
    const-string/jumbo v4, "wideViewPortMode"

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v3

    check-cast v3, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getWideViewPort()Z

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 193
    :cond_c
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 194
    .local v29, "result":Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    goto/16 :goto_2

    .line 196
    .end local v15    # "display":Landroid/view/Display;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v29    # "result":Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .end local v36    # "wm":Landroid/view/WindowManager;
    :cond_d
    const-string/jumbo v3, "getSimInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 197
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->getSimType(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v20

    .line 199
    .local v20, "firstType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->getSimType(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v32

    .line 200
    .local v32, "secondType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/SystemComponents;->transferSimOperator(Lcom/iflytek/common/cmccauth/entities/SimOperatorType;)I

    move-result v18

    .line 201
    .local v18, "firstSimType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/SystemComponents;->transferSimOperator(Lcom/iflytek/common/cmccauth/entities/SimOperatorType;)I

    move-result v30

    .line 202
    .local v30, "secondSimType":I
    if-eqz v18, :cond_e

    .line 203
    const-string/jumbo v3, "sim1"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    :cond_e
    if-eqz v30, :cond_f

    .line 206
    const-string/jumbo v3, "sim2"

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    :cond_f
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 211
    .end local v18    # "firstSimType":I
    .end local v20    # "firstType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v30    # "secondSimType":I
    .end local v32    # "secondType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    :cond_10
    const-string/jumbo v3, "getSimState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 212
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->transferSimState(Lcom/iflytek/yd/system/SimState;)I

    move-result v19

    .line 214
    .local v19, "firstState":I
    const-string/jumbo v3, "sim1"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSimInfoHelper:Lhy;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSimInfoHelper:Lhy;

    invoke-virtual {v3}, Lhy;->b()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 217
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->transferSimState(Lcom/iflytek/yd/system/SimState;)I

    move-result v31

    .line 218
    .local v31, "secondState":I
    const-string/jumbo v3, "sim2"

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    .end local v31    # "secondState":I
    :cond_11
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 223
    .end local v19    # "firstState":I
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    :cond_12
    const-string/jumbo v3, "getUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 224
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 225
    .local v33, "type":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 226
    const-string/jumbo v3, "Buniness_SystemComponents"

    const-string/jumbo v4, "GET_URL url is empty"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 230
    :cond_13
    const-string/jumbo v3, "business"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 231
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    const-string/jumbo v4, "http://ydclient.voicecloud.cn/vaclient/do?c="

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 234
    .end local v33    # "type":Ljava/lang/String;
    :cond_14
    const-string/jumbo v3, "isSpeechDialogMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 235
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v3, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v22

    .line 236
    .local v22, "isSpeechDialogMode":Z
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    .line 237
    .restart local v29    # "result":Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    goto/16 :goto_2

    .line 239
    .end local v22    # "isSpeechDialogMode":Z
    .end local v29    # "result":Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    :cond_15
    const-string/jumbo v3, "getSetting"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 240
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    if-eqz v3, :cond_19

    .line 241
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 242
    .local v24, "key":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v33

    .line 243
    .local v33, "type":I
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    const/16 v28, 0x0

    .line 245
    .local v28, "object":Ljava/lang/Object;
    packed-switch v33, :pswitch_data_0

    .line 261
    .end local v28    # "object":Ljava/lang/Object;
    :goto_5
    if-eqz v28, :cond_19

    .line 262
    const-string/jumbo v3, "value"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 247
    .restart local v28    # "object":Ljava/lang/Object;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 248
    .local v28, "object":Ljava/lang/Boolean;
    goto :goto_5

    .line 250
    .local v28, "object":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 251
    .local v28, "object":Ljava/lang/Integer;
    goto :goto_5

    .line 253
    .local v28, "object":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 254
    .local v28, "object":Ljava/lang/String;
    goto :goto_5

    .line 256
    .local v28, "object":Ljava/lang/Object;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v6, v7}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 257
    .local v28, "object":Ljava/lang/Long;
    goto :goto_5

    .line 267
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v24    # "key":Ljava/lang/String;
    .end local v28    # "object":Ljava/lang/Long;
    .end local v33    # "type":I
    :cond_16
    const-string/jumbo v3, "setSetting"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 268
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    if-eqz v3, :cond_19

    .line 269
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 270
    .restart local v24    # "key":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 271
    .local v35, "value":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v33

    .line 272
    .restart local v33    # "type":I
    packed-switch v33, :pswitch_data_1

    .line 286
    :cond_17
    :goto_6
    :pswitch_4
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v29 .. v29}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_2

    .line 274
    :pswitch_5
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BLC_ADDRESS_CONFIG"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 279
    :pswitch_6
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v3, v0, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 290
    .end local v24    # "key":Ljava/lang/String;
    .end local v33    # "type":I
    .end local v35    # "value":Ljava/lang/String;
    :cond_18
    const-string/jumbo v3, "feedBack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 291
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 292
    .local v14, "content":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, "contact":Ljava/lang/String;
    new-instance v17, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;-><init>(Landroid/content/Context;)V

    .line 294
    .local v17, "feedBackHelper":Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v13}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->feedBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v13    # "contact":Ljava/lang/String;
    .end local v14    # "content":Ljava/lang/String;
    .end local v17    # "feedBackHelper":Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;
    :cond_19
    :goto_7
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 296
    :cond_1a
    const-string/jumbo v3, "copyContent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 297
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 298
    .restart local v14    # "content":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/base/clipboard/ClipboardManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/base/clipboard/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/iflytek/base/clipboard/ClipboardManager;->copy(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u590d\u5236\u6210\u529f"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 305
    :goto_8
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v29 .. v29}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_2

    .line 302
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SystemComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u590d\u5236\u5931\u8d25"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 307
    .end local v14    # "content":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v3, "getSearchUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 308
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 309
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 310
    .local v26, "keyWord":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 311
    .local v11, "channel":Ljava/lang/String;
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v26

    invoke-static {v11, v0}, Lbbt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 313
    .end local v11    # "channel":Ljava/lang/String;
    .end local v26    # "keyWord":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v3, "getDemoFlag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 314
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 315
    :cond_1e
    const-string/jumbo v3, "getBusinessUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 316
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 317
    .local v25, "keyCode":Ljava/lang/String;
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 318
    .local v34, "url":Ljava/lang/String;
    const-string/jumbo v3, "Buniness_SystemComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GET_BUSINESS_URL, url is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v29, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 320
    .end local v25    # "keyCode":Ljava/lang/String;
    .end local v34    # "url":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v3, "getMiguToken"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 322
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    .line 323
    .local v28, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "callbackId"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, "callbackId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 325
    const-string/jumbo v3, "getMiguToken"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/iflytek/framework/business/components/SystemComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lmz;->m()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 327
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->i()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "mobile":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v2

    .line 331
    .local v2, "mAuthnHelper":Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
    const-string/jumbo v3, "20401801"

    const-string/jumbo v4, "985E24BC7CE25174"

    const-string/jumbo v6, "default"

    new-instance v7, Lcom/iflytek/framework/business/components/SystemComponents$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/iflytek/framework/business/components/SystemComponents$1;-><init>(Lcom/iflytek/framework/business/components/SystemComponents;)V

    invoke-interface/range {v2 .. v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 343
    .end local v2    # "mAuthnHelper":Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
    :catch_0
    move-exception v16

    .line 344
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Buniness_SystemComponents"

    const-string/jumbo v4, ""

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->HandlerGetTokenResult(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 349
    .end local v5    # "mobile":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_20
    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/framework/business/components/SystemComponents;->HandlerGetTokenResult(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 272
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 375
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mEnvironment:Lhl;

    .line 376
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mCmccAuthentication:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    .line 377
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mSimInfoHelper:Lhy;

    .line 378
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SystemComponents;->mSetting:Lil;

    .line 379
    return-void
.end method
