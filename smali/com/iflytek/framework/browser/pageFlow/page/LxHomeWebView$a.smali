.class public Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;
.super Ljava/lang/Object;
.source "LxHomeWebView.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->b:J

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 348
    const-string/jumbo v0, "LxHomeWebView"

    const-string/jumbo v1, "registerObserever()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V

    invoke-virtual {v0, v1}, Loa;->a(Ljava/util/Observer;)V

    .line 367
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const-string/jumbo v0, "LxHomeWebView"

    const-string/jumbo v1, "lbs is not locating"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loa;->a(Z)V

    .line 371
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 69
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string/jumbo v64, "LxHomeWebView"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "exec start, aciton is "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string/jumbo v66, " ,args is "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_0
    new-instance v14, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 380
    .local v14, "args":Lorg/json/JSONArray;
    const-string/jumbo v64, "homePageLoadFinish"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_0

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 382
    .local v30, "endTime":J
    const-string/jumbo v64, "ApplicationLoader"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "homePage load finish time = "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string/jumbo v64, "ApplicationLoader"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "lingxi_start_time = "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v66, v0

    .line 385
    invoke-virtual/range {v66 .. v66}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v66

    .line 384
    invoke-static/range {v66 .. v66}, Lxo;->a(Landroid/content/Context;)Lxo;

    move-result-object v66

    .line 385
    invoke-virtual/range {v66 .. v66}, Lxo;->c()J

    move-result-wide v66

    sub-long v66, v30, v66

    invoke-virtual/range {v65 .. v67}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 384
    invoke-static/range {v64 .. v65}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxo;->a(Landroid/content/Context;)Lxo;

    move-result-object v64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v66

    move-object/from16 v0, v64

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Lxo;->c(J)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxo;->a(Landroid/content/Context;)Lxo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lxo;->a()V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-static/range {v64 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;Z)Z

    .line 392
    .end local v30    # "endTime":J
    :cond_0
    const-string/jumbo v64, "getEnvironmentInfo"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_1

    .line 394
    const-string/jumbo v54, "../skin/theme_new/"

    .line 395
    .local v54, "skinPath":Ljava/lang/String;
    const/16 v37, 0x1

    .line 396
    .local v37, "isCmcc":Z
    new-instance v64, Lazg;

    invoke-direct/range {v64 .. v64}, Lazg;-><init>()V

    invoke-virtual/range {v64 .. v64}, Lazg;->b()I

    move-result v25

    .line 398
    .local v25, "cpuCount":I
    new-instance v45, Lorg/json/JSONObject;

    invoke-direct/range {v45 .. v45}, Lorg/json/JSONObject;-><init>()V

    .line 399
    .local v45, "object":Lorg/json/JSONObject;
    const-string/jumbo v64, "skinPath"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string/jumbo v64, "isCmcc"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 401
    const-string/jumbo v64, "cpuCount"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 402
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v65, "OK"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 874
    .end local v14    # "args":Lorg/json/JSONArray;
    .end local v25    # "cpuCount":I
    .end local v37    # "isCmcc":Z
    .end local v45    # "object":Lorg/json/JSONObject;
    .end local v54    # "skinPath":Ljava/lang/String;
    :goto_0
    return-object v64

    .line 405
    .restart local v14    # "args":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v64, "getHomePageCreateType"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_2

    .line 406
    new-instance v45, Lorg/json/JSONObject;

    invoke-direct/range {v45 .. v45}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .restart local v45    # "object":Lorg/json/JSONObject;
    const-string/jumbo v64, "homePageCreateType"

    invoke-static {}, Lagv;->p()I

    move-result v65

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v65, "OK"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    .end local v14    # "args":Lorg/json/JSONArray;
    .end local v45    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v28

    .line 871
    .local v28, "e":Ljava/lang/Exception;
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, ""

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v65, "JSON error"

    const-string/jumbo v66, ""

    invoke-direct/range {v64 .. v66}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v14    # "args":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    const-string/jumbo v64, "getBaseInfo"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_6

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->b(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v44

    .line 412
    .local v44, "mEnvironment":Lhl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->c(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v43

    .line 414
    .local v43, "mCmccAuthentication":Lcom/iflytek/common/cmccauth/CmccAuthentication;
    invoke-virtual/range {v44 .. v44}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v11

    .line 415
    .local v11, "appConfig":Lcom/iflytek/yd/business/AppConfig;
    new-instance v42, Lorg/json/JSONObject;

    invoke-direct/range {v42 .. v42}, Lorg/json/JSONObject;-><init>()V

    .line 417
    .local v42, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v64, "businessRequestUrl"

    const-string/jumbo v65, "http://ydclient.voicecloud.cn/traffdisp/do"

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v64, "bizRequestUrl"

    const-string/jumbo v65, "http://ydclient.voicecloud.cn/vaclient/do?c="

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 422
    .local v16, "baseJson":Lorg/json/JSONObject;
    const-string/jumbo v64, "aid"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string/jumbo v64, "ver"

    const-string/jumbo v65, "1.0"

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string/jumbo v64, "clientver"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string/jumbo v65, "imei"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v64

    if-nez v64, :cond_4

    const-string/jumbo v64, ""

    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v65

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string/jumbo v65, "imsi"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v64

    if-nez v64, :cond_5

    const-string/jumbo v64, ""

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v65

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string/jumbo v64, "uid"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string/jumbo v64, "df"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string/jumbo v64, "osid"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string/jumbo v64, "ua"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    const-string/jumbo v64, "cpu"

    invoke-static {}, Lazg;->a()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string/jumbo v64, "androidid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lhy;->e()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string/jumbo v64, "mac"

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string/jumbo v64, "cellid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lhy;->f()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string/jumbo v64, "uuid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->d(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lhl;->i()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 441
    .local v10, "apn":Ljava/lang/String;
    const-string/jumbo v64, "apn"

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string/jumbo v64, "token"

    sget-object v65, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v43

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string/jumbo v64, "mode"

    const-string/jumbo v65, "1"

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string/jumbo v64, "base"

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    invoke-static {}, Loa;->a()Loa;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v6

    .line 454
    .local v6, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v64

    if-nez v64, :cond_3

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v64

    if-nez v64, :cond_3

    .line 455
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 456
    .local v7, "addrjson":Lorg/json/JSONObject;
    const-string/jumbo v64, "long"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string/jumbo v64, "lat"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string/jumbo v64, "pos"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string/jumbo v64, "country"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getCountry()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string/jumbo v64, "province"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string/jumbo v64, "area"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getArea()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string/jumbo v64, "city"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string/jumbo v64, "street"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getStreet()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string/jumbo v64, "cityCode"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getCityCode()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string/jumbo v64, "timestamp"

    invoke-virtual {v6}, Lcom/iflytek/common/lbs/XAddress;->getTimeStamp()J

    move-result-wide v66

    move-object/from16 v0, v64

    move-wide/from16 v1, v66

    invoke-virtual {v7, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 467
    const-string/jumbo v64, "address"

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    .end local v7    # "addrjson":Lorg/json/JSONObject;
    :cond_3
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v65, "OK"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 426
    .end local v6    # "address":Lcom/iflytek/common/lbs/XAddress;
    .end local v10    # "apn":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_1

    .line 427
    :cond_5
    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_2

    .line 471
    .end local v11    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v16    # "baseJson":Lorg/json/JSONObject;
    .end local v42    # "jsonObject":Lorg/json/JSONObject;
    .end local v43    # "mCmccAuthentication":Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .end local v44    # "mEnvironment":Lhl;
    :cond_6
    const-string/jumbo v64, "getSpeechEnhanceInfo"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_c

    .line 472
    new-instance v42, Lorg/json/JSONObject;

    invoke-direct/range {v42 .. v42}, Lorg/json/JSONObject;-><init>()V

    .line 473
    .restart local v42    # "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->e(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v44

    .line 474
    .restart local v44    # "mEnvironment":Lhl;
    invoke-virtual/range {v44 .. v44}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v11

    .line 475
    .restart local v11    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    const-string/jumbo v64, "clientver"

    invoke-virtual {v11}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    invoke-static {}, Lil;->a()Lil;

    move-result-object v64

    const-string/jumbo v65, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual/range {v64 .. v65}, Lil;->d(Ljava/lang/String;)I

    move-result v46

    .line 477
    .local v46, "oldVersionCode":I
    const-string/jumbo v65, "isFirstUse"

    if-nez v46, :cond_8

    const/16 v64, 0x1

    :goto_3
    move-object/from16 v0, v42

    move-object/from16 v1, v65

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 478
    const-string/jumbo v64, "webviewHeight"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getHeight()I

    move-result v65

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 479
    const-string/jumbo v64, "webviewWidth"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getWidth()I

    move-result v65

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 482
    const/16 v38, 0x0

    .line 483
    .local v38, "isNeedRequest":Z
    :try_start_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v64

    const-string/jumbo v65, "com.iflytek.cmccIFLY_SPEECH_ENHANCE_CACHE_DATA"

    invoke-virtual/range {v64 .. v65}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 484
    .local v20, "cacheString":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v64

    if-eqz v64, :cond_9

    .line 485
    const/16 v38, 0x1

    .line 514
    :goto_4
    if-eqz v38, :cond_7

    .line 515
    new-instance v64, Lrk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->f(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v65

    invoke-direct/range {v64 .. v65}, Lrk;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v64 .. v64}, Lrk;->a()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 521
    .end local v20    # "cacheString":Ljava/lang/String;
    :cond_7
    :goto_5
    :try_start_3
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v65, "OK"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 477
    .end local v38    # "isNeedRequest":Z
    :cond_8
    const/16 v64, 0x0

    goto :goto_3

    .line 487
    .restart local v20    # "cacheString":Ljava/lang/String;
    .restart local v38    # "isNeedRequest":Z
    :cond_9
    :try_start_4
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 489
    .local v17, "cacheJson":Lorg/json/JSONObject;
    const-string/jumbo v64, "speechEnhanceCache"

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string/jumbo v64, "self_request_time"

    const-wide/16 v66, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v64

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 492
    .local v22, "cahceTime":J
    const-wide/16 v64, 0x0

    cmp-long v64, v22, v64

    if-gtz v64, :cond_a

    .line 493
    const/16 v38, 0x1

    goto :goto_4

    .line 495
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v55

    .line 496
    .local v55, "succCal":Ljava/util/Calendar;
    move-object/from16 v0, v55

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 497
    const/16 v64, 0xa

    const/16 v65, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 498
    const/16 v64, 0xc

    const/16 v65, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 499
    const/16 v64, 0xd

    const/16 v65, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 500
    const/16 v64, 0xe

    const/16 v65, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 502
    invoke-virtual/range {v55 .. v55}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 503
    .local v18, "before":J
    const/16 v64, 0x6

    const/16 v65, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 504
    invoke-virtual/range {v55 .. v55}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 505
    .local v8, "after":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v26

    .line 507
    .local v26, "curTime":J
    cmp-long v64, v18, v26

    if-gez v64, :cond_b

    cmp-long v64, v8, v26

    if-lez v64, :cond_b

    .line 508
    const/16 v38, 0x0

    goto/16 :goto_4

    .line 510
    :cond_b
    const/16 v38, 0x1

    goto/16 :goto_4

    .line 517
    .end local v8    # "after":J
    .end local v17    # "cacheJson":Lorg/json/JSONObject;
    .end local v18    # "before":J
    .end local v20    # "cacheString":Ljava/lang/String;
    .end local v22    # "cahceTime":J
    .end local v26    # "curTime":J
    .end local v55    # "succCal":Ljava/util/Calendar;
    :catch_1
    move-exception v28

    .line 518
    .restart local v28    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, ""

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 523
    .end local v11    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v28    # "e":Ljava/lang/Exception;
    .end local v38    # "isNeedRequest":Z
    .end local v42    # "jsonObject":Lorg/json/JSONObject;
    .end local v44    # "mEnvironment":Lhl;
    .end local v46    # "oldVersionCode":I
    :cond_c
    const-string/jumbo v64, "speechEnhanceClick"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_e

    .line 524
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-le v0, v1, :cond_d

    .line 525
    const/16 v64, 0x0

    const-string/jumbo v65, ""

    move/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 526
    .local v34, "id":Ljava/lang/String;
    const/16 v64, 0x1

    const/16 v65, 0x0

    move/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 527
    .local v51, "position":Ljava/lang/String;
    const-string/jumbo v64, "spread"

    move-object/from16 v0, v64

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_d

    .line 528
    invoke-static {}, Lil;->a()Lil;

    move-result-object v64

    const-string/jumbo v65, "com.iflytek.cmccIFLY_SPEECH_ENHANCE_CACHE_DATA"

    invoke-virtual/range {v64 .. v65}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 529
    .restart local v20    # "cacheString":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v64

    if-nez v64, :cond_d

    .line 530
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 531
    .restart local v17    # "cacheJson":Lorg/json/JSONObject;
    const-string/jumbo v64, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v64

    move-object/from16 v0, v34

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_d

    .line 532
    const-string/jumbo v64, "self_show_tip"

    const/16 v65, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 534
    invoke-static {}, Lil;->a()Lil;

    move-result-object v64

    const-string/jumbo v65, "com.iflytek.cmccIFLY_SPEECH_ENHANCE_CACHE_DATA"

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v64 .. v66}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 874
    .end local v17    # "cacheJson":Lorg/json/JSONObject;
    .end local v20    # "cacheString":Ljava/lang/String;
    .end local v34    # "id":Ljava/lang/String;
    .end local v51    # "position":Ljava/lang/String;
    :cond_d
    :goto_6
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v64 .. v64}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 541
    :cond_e
    :try_start_6
    const-string/jumbo v64, "showMockDialog"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_f

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->g(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lazp;->a(Landroid/content/Context;)V

    goto :goto_6

    .line 543
    :cond_f
    const-string/jumbo v64, "cardListUpdateSucess"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_10

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxd;->a(Landroid/content/Context;)Lxd;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lxd;->a()V

    goto :goto_6

    .line 547
    :cond_10
    const-string/jumbo v64, "appenCardOpLog"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_14

    .line 548
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-ge v0, v1, :cond_11

    .line 549
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "append OpLog miss necessary parameters"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 552
    :cond_11
    const/16 v64, 0x0

    const/16 v65, 0x0

    move/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 553
    .local v47, "opCode":Ljava/lang/String;
    const/16 v64, 0x1

    const/16 v65, 0x0

    move/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 554
    .local v48, "opKey":Ljava/lang/String;
    if-eqz v47, :cond_12

    if-nez v48, :cond_13

    .line 555
    :cond_12
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 557
    :cond_13
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v29, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lrh;->a()Lrh;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lrh;->c()I

    move-result v52

    .line 559
    .local v52, "resVersion":I
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "c_"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, "_"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 560
    const-string/jumbo v64, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v47

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 563
    .end local v29    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v47    # "opCode":Ljava/lang/String;
    .end local v48    # "opKey":Ljava/lang/String;
    .end local v52    # "resVersion":I
    :cond_14
    const-string/jumbo v64, "appenCardCpaLog"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_15

    .line 564
    const/16 v64, 0x0

    const-string/jumbo v65, "website"

    move/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 565
    .local v32, "focus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v64

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v32

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lwz;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 567
    .end local v32    # "focus":Ljava/lang/String;
    :cond_15
    const-string/jumbo v64, "getCacheBannerData"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_16

    .line 568
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "getCacheBannerData"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lve;->a(Landroid/content/Context;)Lve;

    move-result-object v64

    const-string/jumbo v65, "HOMEPAGE"

    invoke-virtual/range {v64 .. v65}, Lve;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 570
    .local v15, "bannerDataJsonObject":Lorg/json/JSONObject;
    if-eqz v15, :cond_d

    .line 571
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v65, "OK"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-direct {v0, v1, v15}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 573
    .end local v15    # "bannerDataJsonObject":Lorg/json/JSONObject;
    :cond_16
    const-string/jumbo v64, "requestBannerData"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_17

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lve;->a(Landroid/content/Context;)Lve;

    move-result-object v64

    new-instance v65, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$2;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$2;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V

    invoke-virtual/range {v64 .. v65}, Lve;->a(Lve$a;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->h(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lve;->a(Landroid/content/Context;)Lve;

    move-result-object v64

    const-string/jumbo v65, "HOMEPAGE"

    invoke-virtual/range {v64 .. v65}, Lve;->b(Ljava/lang/String;)J

    goto/16 :goto_6

    .line 589
    :cond_17
    const-string/jumbo v64, "downloadPic"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_18

    .line 590
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v50

    .line 591
    .local v50, "picUrl":Ljava/lang/String;
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Lvg;->a(Landroid/content/Context;)V

    .line 592
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Lvg;->b(Landroid/content/Context;)V

    .line 593
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v64

    const-string/jumbo v65, "HOMEPAGE"

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v50

    move-object/from16 v2, v65

    move-object/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3}, Lvg;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 595
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v64

    new-instance v65, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$3;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$3;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V

    invoke-virtual/range {v64 .. v65}, Lvg;->a(Lvh;)V

    goto/16 :goto_6

    .line 609
    .end local v50    # "picUrl":Ljava/lang/String;
    :cond_18
    const-string/jumbo v64, "clickBanner"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_19

    .line 610
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 611
    .restart local v34    # "id":Ljava/lang/String;
    const/16 v64, 0x1

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 612
    .local v59, "targetString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->i(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lvc;->a(Landroid/content/Context;)Lvc;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lvc;->a(Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->j(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v66

    move-object/from16 v0, v64

    move-wide/from16 v1, v66

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lwv;->c(JLjava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->k(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v64

    const-string/jumbo v65, "LX_300000"

    invoke-virtual/range {v64 .. v65}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 619
    .end local v34    # "id":Ljava/lang/String;
    .end local v59    # "targetString":Ljava/lang/String;
    :cond_19
    const-string/jumbo v64, "deleteBanner"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_1a

    .line 620
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 622
    .restart local v34    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->l(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v66

    move-object/from16 v0, v64

    move-wide/from16 v1, v66

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lwv;->b(JLjava/lang/String;)V

    goto/16 :goto_6

    .line 623
    .end local v34    # "id":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v64, "addBannersShowLog"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_1b

    .line 624
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v35

    .line 625
    .local v35, "idArray":Lorg/json/JSONArray;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    .line 626
    .local v56, "startTime":J
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_7
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v64

    move/from16 v0, v33

    move/from16 v1, v64

    if-ge v0, v1, :cond_d

    .line 627
    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 628
    .restart local v34    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->m(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v64

    move-object/from16 v0, v64

    move-wide/from16 v1, v56

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lwv;->a(JLjava/lang/String;)V

    .line 626
    add-int/lit8 v33, v33, 0x1

    goto :goto_7

    .line 632
    .end local v33    # "i":I
    .end local v34    # "id":Ljava/lang/String;
    .end local v35    # "idArray":Lorg/json/JSONArray;
    .end local v56    # "startTime":J
    :cond_1b
    const-string/jumbo v64, "startCardsMgr"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_1c

    .line 633
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v41

    .line 634
    .local v41, "jsonArray":Lorg/json/JSONArray;
    new-instance v36, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->n(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    const-class v65, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;

    move-object/from16 v0, v36

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    .local v36, "intent":Landroid/content/Intent;
    const-string/jumbo v64, "cards_list"

    invoke-virtual/range {v41 .. v41}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v36

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->o(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 637
    .end local v36    # "intent":Landroid/content/Intent;
    .end local v41    # "jsonArray":Lorg/json/JSONArray;
    :cond_1c
    const-string/jumbo v64, "isNeedShowWeatherGuide"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_1d

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lawe;->a(Landroid/content/Context;)Z

    move-result v39

    .line 640
    .local v39, "isNeedShowWeatherGuide":Z
    new-instance v42, Lorg/json/JSONObject;

    invoke-direct/range {v42 .. v42}, Lorg/json/JSONObject;-><init>()V

    .line 641
    .restart local v42    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v64, "isNeedShowWeatherGuide"

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 642
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v65, "JSON error"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 643
    .end local v39    # "isNeedShowWeatherGuide":Z
    .end local v42    # "jsonObject":Lorg/json/JSONObject;
    :cond_1d
    const-string/jumbo v64, "clickWeatherGuidBtn"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_d

    .line 649
    const-string/jumbo v64, "requestLocate"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_20

    .line 650
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "requestLocate"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Loa;->a()Loa;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v64

    if-eqz v64, :cond_1e

    .line 652
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "startWeatherRequest()"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    const-string/jumbo v65, "startWeatherRequest()"

    invoke-virtual/range {v64 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 655
    :cond_1e
    invoke-static {}, Lhl;->k()I

    move-result v64

    const/16 v65, 0x17

    move/from16 v0, v64

    move/from16 v1, v65

    if-lt v0, v1, :cond_1f

    .line 656
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "above android 6.0, request permission first."

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {}, Lagv;->f()Lahd;

    move-result-object v64

    new-instance v65, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V

    invoke-virtual/range {v64 .. v65}, Lahd;->a(Lahd$a;)Lahd;

    move-result-object v64

    .line 682
    invoke-virtual/range {v64 .. v64}, Lahd;->h()V

    goto/16 :goto_6

    .line 684
    :cond_1f
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "below android 6.0, get location now."

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a()V

    goto/16 :goto_6

    .line 691
    :cond_20
    const-string/jumbo v64, "LocalPageLoadFinish"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_d

    .line 739
    const-string/jumbo v64, "clickLocalCard"

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_d

    .line 740
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 741
    .local v12, "arg":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 743
    .local v13, "argJ":Lorg/json/JSONObject;
    const-string/jumbo v64, "actionType"

    move-object/from16 v0, v64

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 744
    .local v58, "targetAction":Ljava/lang/String;
    const-string/jumbo v64, "actionParams"

    move-object/from16 v0, v64

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v60

    .line 746
    .local v60, "targetparam":Lorg/json/JSONArray;
    const/16 v49, 0x0

    .line 747
    .local v49, "paramObj":Lorg/json/JSONObject;
    invoke-virtual/range {v60 .. v60}, Lorg/json/JSONArray;->length()I

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ge v0, v1, :cond_21

    .line 748
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 750
    :cond_21
    const/16 v64, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v49

    .line 751
    const/16 v61, 0x0

    .line 752
    .local v61, "url":Ljava/lang/String;
    const/16 v53, 0x0

    .line 753
    .local v53, "scriptId":Ljava/lang/String;
    if-eqz v49, :cond_22

    .line 754
    const-string/jumbo v64, "url"

    const/16 v65, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 755
    const-string/jumbo v64, "scriptId"

    const/16 v65, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 758
    :cond_22
    const-string/jumbo v64, "targetFocus"

    const-string/jumbo v65, "website"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 761
    .local v21, "cardFocus":Ljava/lang/String;
    const-string/jumbo v64, "OPEN_LOCAL_CARD"

    move-object/from16 v0, v64

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_24

    .line 763
    const-string/jumbo v64, "plugin_manager"

    move-object/from16 v0, v64

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_23

    const-string/jumbo v64, "humming"

    .line 764
    move-object/from16 v0, v64

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_23

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v64

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v21

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lwz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 767
    :cond_23
    const-string/jumbo v64, "telephone"

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_25

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v64

    const-string/jumbo v65, "FT69101"

    const/16 v66, 0x0

    invoke-virtual/range {v64 .. v66}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 776
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "\u6253\u5f00\u7535\u8bdd\u77ed\u4fe1\u9891\u9053"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v64

    .line 778
    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v64

    const-string/jumbo v65, "telephone"

    const/16 v66, 0x0

    .line 779
    invoke-virtual/range {v64 .. v66}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 867
    :cond_24
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    const-string/jumbo v65, "onPagePause()"

    invoke-virtual/range {v64 .. v65}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 780
    :cond_25
    const-string/jumbo v64, "schedule"

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_26

    .line 781
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "\u6253\u5f00\u63d0\u9192\u9891\u9053"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v36, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    const-class v65, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    move-object/from16 v0, v36

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 783
    .restart local v36    # "intent":Landroid/content/Intent;
    const/high16 v64, 0x30000000

    move-object/from16 v0, v36

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->p(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v64

    const-string/jumbo v65, "other"

    invoke-virtual/range {v64 .. v65}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    goto :goto_8

    .line 795
    .end local v36    # "intent":Landroid/content/Intent;
    :cond_26
    const-string/jumbo v64, "translation"

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_27

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v64

    const-string/jumbo v65, "FT69103"

    const/16 v66, 0x0

    invoke-virtual/range {v64 .. v66}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 798
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "\u6253\u5f00\u7ffb\u8bd1\u9891\u9053"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v64

    const-string/jumbo v65, "translation"

    const/16 v66, 0x0

    invoke-virtual/range {v64 .. v66}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto/16 :goto_8

    .line 800
    :cond_27
    const-string/jumbo v64, "plugin_manager"

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_2a

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v62

    .line 802
    .local v62, "timeNow":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->b:J

    move-wide/from16 v64, v0

    cmp-long v64, v62, v64

    if-gez v64, :cond_28

    .line 803
    move-wide/from16 v0, v62

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->b:J

    .line 810
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v64

    const-string/jumbo v65, "FT69104"

    const/16 v66, 0x0

    invoke-virtual/range {v64 .. v66}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 811
    new-instance v36, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    const-class v65, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    move-object/from16 v0, v36

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 813
    .restart local v36    # "intent":Landroid/content/Intent;
    const-string/jumbo v64, "EXTRA_ENTRY"

    const-string/jumbo v65, "home_title_left"

    move-object/from16 v0, v36

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 804
    .end local v36    # "intent":Landroid/content/Intent;
    :cond_28
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->b:J

    move-wide/from16 v64, v0

    sub-long v64, v62, v64

    const-wide/16 v66, 0x7d0

    cmp-long v64, v64, v66

    if-gez v64, :cond_29

    .line 805
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "handleLeftClick too often"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v64, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v64 .. v64}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 808
    :cond_29
    move-wide/from16 v0, v62

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->b:J

    goto :goto_9

    .line 816
    .end local v62    # "timeNow":J
    :cond_2a
    const-string/jumbo v64, "smarthome"

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_24

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v64

    const-string/jumbo v65, "FT69105"

    const/16 v66, 0x0

    invoke-virtual/range {v64 .. v66}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 818
    invoke-static {}, Lhl;->k()I

    move-result v64

    const/16 v65, 0xe

    move/from16 v0, v64

    move/from16 v1, v65

    if-ge v0, v1, :cond_2b

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    const-string/jumbo v65, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/16 v66, 0x0

    invoke-static/range {v64 .. v66}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v64

    .line 820
    invoke-virtual/range {v64 .. v64}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 823
    :cond_2b
    const/16 v64, 0xcd

    .line 824
    invoke-static/range {v64 .. v64}, Lasb;->d(I)Z

    move-result v40

    .line 825
    .local v40, "isPluginInstalled":Z
    if-nez v40, :cond_2c

    .line 829
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "\u5f00\u59cb\u5b89\u88c5\u63d2\u4ef6!"

    invoke-static/range {v64 .. v65}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, v64

    instance-of v0, v0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    move/from16 v64, v0

    if-eqz v64, :cond_24

    .line 831
    new-instance v65, Lasi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    const/16 v66, 0x0

    move-object/from16 v0, v65

    move-object/from16 v1, v64

    move-object/from16 v2, v66

    invoke-direct {v0, v1, v2}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    .line 834
    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v64

    check-cast v64, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/16 v66, 0xcd

    sget-object v67, Lasc;->a:Lasc;

    sget-object v68, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->smart_home:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .line 833
    move-object/from16 v0, v65

    move-object/from16 v1, v64

    move/from16 v2, v66

    move-object/from16 v3, v67

    move-object/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto/16 :goto_8

    .line 841
    :cond_2c
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "\u6253\u5f00\u667a\u80fd\u5bb6\u5c45\u9891\u9053"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v24, Lcom/iflytek/yd/system/ConnectionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    .line 843
    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->q(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, v24

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 845
    .local v24, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v64

    if-nez v64, :cond_2d

    .line 846
    const-string/jumbo v64, "LxHomeWebView"

    const-string/jumbo v65, "network not connected clear cache devices"

    invoke-static/range {v64 .. v65}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->r(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v64

    .line 849
    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->clearFoundDevices()V

    .line 851
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v64

    .line 852
    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v64

    const-string/jumbo v65, "smarthome"

    const/16 v66, 0x0

    .line 853
    invoke-virtual/range {v64 .. v66}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 860
    :goto_a
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v64

    const/16 v65, 0x1

    .line 861
    invoke-virtual/range {v64 .. v65}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->setHomeEntryScanFlag(Z)V

    goto/16 :goto_8

    .line 857
    :cond_2d
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v64

    .line 858
    invoke-virtual/range {v64 .. v64}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->startScan()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_a
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 885
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 880
    return-void
.end method
