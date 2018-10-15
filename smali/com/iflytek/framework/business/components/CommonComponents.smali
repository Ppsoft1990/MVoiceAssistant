.class public final Lcom/iflytek/framework/business/components/CommonComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "CommonComponents.java"


# static fields
.field private static final ENCRYTY_KEY:Ljava/lang/String; = "lingxdes"

.field private static final TAG:Ljava/lang/String; = "Business_CommonComponents"


# instance fields
.field private final BIND_UNBIND_RESULT_FAIL:Ljava/lang/String;

.field private final BIND_UNBIND_RESULT_SUCCESS:Ljava/lang/String;

.field private final ERROR_CODE_SUCCESS:Ljava/lang/String;

.field private browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private mOnDownloadStateListener:Lno$c;

.field private mUnBindRequestLisnter:Lyn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    .line 90
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents;->BIND_UNBIND_RESULT_SUCCESS:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents;->BIND_UNBIND_RESULT_FAIL:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents;->ERROR_CODE_SUCCESS:Ljava/lang/String;

    .line 639
    new-instance v0, Lcom/iflytek/framework/business/components/CommonComponents$5;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/CommonComponents$5;-><init>(Lcom/iflytek/framework/business/components/CommonComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents;->mOnDownloadStateListener:Lno$c;

    .line 775
    new-instance v0, Lcom/iflytek/framework/business/components/CommonComponents$6;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/CommonComponents$6;-><init>(Lcom/iflytek/framework/business/components/CommonComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents;->mUnBindRequestLisnter:Lyn;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/CommonComponents;)Lcom/iflytek/mmp/core/webcore/BrowserCore;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/CommonComponents;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/CommonComponents;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/CommonComponents;->onSubmitResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/framework/business/components/CommonComponents;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/CommonComponents;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/CommonComponents;->onFlowDataTipResult(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/framework/business/components/CommonComponents;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/CommonComponents;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/components/CommonComponents;->onImageDownloadResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/CommonComponents;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/CommonComponents;->scanToAlbum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/CommonComponents;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/CommonComponents;->notifyUnBindResult(Ljava/lang/String;)V

    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 540
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_UNIQUE_DEVICE_INFO"

    invoke-virtual {v2, v3}, Lil;->a(Ljava/lang/String;)Z

    move-result v1

    .line 541
    .local v1, "isSetted":Z
    if-eqz v1, :cond_0

    .line 543
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_UNIQUE_DEVICE_INFO"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-direct {p0, v0}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 549
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->retryGetDeviceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 524
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneNum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v0

    .line 529
    .local v0, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRandomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyUnBindResult(Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 838
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 839
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 841
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "unbindPhoneNum"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/CommonComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    const-string/jumbo v4, "Business_CommonComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UN_BIND_PHONE_NUM callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 849
    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/CommonComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

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

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 852
    return-void

    .line 845
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 846
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_CommonComponents"

    const-string/jumbo v5, "UN_BIND_PHONE_NUM assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onFlowDataTipResult(Z)V
    .locals 6
    .param p1, "isAgree"    # Z

    .prologue
    .line 606
    const-string/jumbo v3, "Business_CommonComponents"

    const-string/jumbo v4, "onFlowDataTipResult  "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 609
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "isAgree"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    invoke-direct {v3, v4, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "Business_CommonComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network callback jsonObject "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFlowDataTipResult(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 616
    return-void

    .line 610
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Business_CommonComponents"

    const-string/jumbo v4, "network callback error "

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onGetChannelCallback(ILjava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 723
    const-string/jumbo v4, "Business_CommonComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGetChannelCallback errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 726
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 728
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "getChannel"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/CommonComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    const-string/jumbo v4, "Business_CommonComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGetChannelCallback errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string/jumbo v4, "Business_CommonComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGetChannelCallback callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 733
    const-string/jumbo v4, "channelId"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/CommonComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LXJSBridge.callbackFromNative(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 740
    return-void

    .line 734
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_CommonComponents"

    const-string/jumbo v5, "onGetChannelCallback assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onImageDownloadResult(ILjava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "des"    # Ljava/lang/String;

    .prologue
    .line 698
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 699
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "savePic"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/CommonComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "callbackID":Ljava/lang/String;
    const-string/jumbo v4, "Business_CommonComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onImageDownloadResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :try_start_0
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 705
    const-string/jumbo v4, "des"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

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

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 713
    return-void

    .line 706
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 707
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_CommonComponents"

    const-string/jumbo v5, "onImageDownloadResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSubmitResult(Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 858
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 859
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 861
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "translateErrorSubmit"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/CommonComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    const-string/jumbo v4, "Business_CommonComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSubmitResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

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

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 871
    return-void

    .line 865
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_CommonComponents"

    const-string/jumbo v5, "onSubmitResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private retryGetDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "deviceId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getRandomID()Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_UNIQUE_DEVICE_INFO"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-object v0
.end method

.method private scanToAlbum(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 765
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 767
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Business_CommonComponents"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showDelayGuide(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 580
    const-string/jumbo v1, "\u5f53\u524d\u65e0wifi\uff0c\u662f\u5426\u5141\u8bb8\u6253\u5f002G/3G/4G\u7f51\u7edc\u64ad\u653e\u5f00\u5173"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 582
    const-string/jumbo v1, "\u62d2\u7edd"

    new-instance v2, Lcom/iflytek/framework/business/components/CommonComponents$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/framework/business/components/CommonComponents$3;-><init>(Lcom/iflytek/framework/business/components/CommonComponents;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 592
    const-string/jumbo v1, "\u5141\u8bb8"

    new-instance v2, Lcom/iflytek/framework/business/components/CommonComponents$4;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/framework/business/components/CommonComponents$4;-><init>(Lcom/iflytek/framework/business/components/CommonComponents;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 602
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 603
    return-void
.end method

.method private turnToTranslateChannel()V
    .locals 3

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 754
    :goto_0
    return-void

    .line 750
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 753
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "other"

    invoke-virtual {v1, v2}, Lxq;->j(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 619
    const-string/jumbo v3, "Business_CommonComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "encrypt, text is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 622
    :cond_0
    const-string/jumbo v3, ""

    .line 633
    :goto_0
    return-object v3

    .line 626
    :cond_1
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 627
    .local v0, "content":[B
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v3}, Ltb;->a([B[B)[B

    move-result-object v2

    .line 628
    .local v2, "result":[B
    const-string/jumbo v3, "Business_CommonComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "encrypt, result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {v2}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 630
    .end local v0    # "content":[B
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Business_CommonComponents"

    const-string/jumbo v4, "encrypt"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public onEvent(Lcom/iflytek/viafly/account/model/BindSuccessEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/iflytek/viafly/account/model/BindSuccessEvent;

    .prologue
    .line 813
    if-nez p1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/account/model/BindSuccessEvent;->getMobile()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "caller":Ljava/lang/String;
    const-string/jumbo v5, "bindPhoneNum"

    invoke-virtual {p0, v5}, Lcom/iflytek/framework/business/components/CommonComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "callbackID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 821
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 823
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "Business_CommonComponents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BIND_PHONE_NUM callbackID  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string/jumbo v5, "callbackId"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string/jumbo v5, "phoneNum"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    const-string/jumbo v5, "errorCode"

    const-string/jumbo v6, "0"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_1
    new-instance v5, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v6, "OK"

    invoke-direct {v5, v6, v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 831
    invoke-virtual {v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v4

    .line 832
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/framework/business/components/CommonComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 827
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 828
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Business_CommonComponents"

    const-string/jumbo v6, "BIND_PHONE_NUM assemble json error "

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 58
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "Invalid action"

    const-string/jumbo v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_0
    return-object v2

    .line 102
    :cond_0
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExec action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string/jumbo v2, "getDeviceInfo"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 106
    .local v48, "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "keys"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 107
    .local v42, "keys":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get device info keys "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "get device info error ,keys is empty "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "Invalid action"

    const-string/jumbo v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_1
    new-instance v43, Lorg/json/JSONArray;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 113
    .local v43, "keysArray":Lorg/json/JSONArray;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get device info keysArray "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v44

    .line 115
    .local v44, "length":I
    new-instance v40, Lorg/json/JSONObject;

    invoke-direct/range {v40 .. v40}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v40, "json":Lorg/json/JSONObject;
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_1
    move/from16 v0, v37

    move/from16 v1, v44

    if-ge v0, v1, :cond_3

    .line 117
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v31

    .line 118
    .local v31, "deviceInfoKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const-string/jumbo v2, "imei"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getIMEI()Ljava/lang/String;

    move-result-object v38

    .line 122
    .local v38, "imei":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIMEI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v2, "imei"

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .end local v38    # "imei":Ljava/lang/String;
    :cond_2
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 132
    .end local v31    # "deviceInfoKey":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 133
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "GET_DEVICE_INFOMATION success "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v40

    invoke-direct {v2, v3, v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 136
    :cond_4
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "No result"

    const-string/jumbo v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v37    # "i":I
    .end local v40    # "json":Lorg/json/JSONObject;
    .end local v42    # "keys":Ljava/lang/String;
    .end local v43    # "keysArray":Lorg/json/JSONArray;
    .end local v44    # "length":I
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v2, "getNetworkType"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "GET_NETWORKTYPE"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lazf;->a()Ljava/lang/String;

    move-result-object v47

    .line 140
    .local v47, "netType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 141
    const-string/jumbo v47, "none"

    .line 143
    :cond_6
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GET_NETWORKTYPE netType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v41, Lorg/json/JSONObject;

    invoke-direct/range {v41 .. v41}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v41, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "netType"

    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v41

    invoke-direct {v2, v3, v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 147
    .end local v41    # "jsonObject":Lorg/json/JSONObject;
    .end local v47    # "netType":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "getBizConfig"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 149
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "keys"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 150
    .restart local v42    # "keys":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get config info keys "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 152
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "get config info error ,keys is empty "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "Invalid action"

    const-string/jumbo v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_8
    new-instance v43, Lorg/json/JSONArray;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v43    # "keysArray":Lorg/json/JSONArray;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get config info keysArray "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v44

    .line 158
    .restart local v44    # "length":I
    new-instance v40, Lorg/json/JSONObject;

    invoke-direct/range {v40 .. v40}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .restart local v40    # "json":Lorg/json/JSONObject;
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_2
    move/from16 v0, v37

    move/from16 v1, v44

    if-ge v0, v1, :cond_a

    .line 160
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v23

    .line 161
    .local v23, "bizKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 162
    const-string/jumbo v2, "flowTipConfig"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 164
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_MUSIC_PLAY_SETTING"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v35

    .line 165
    .local v35, "flowTipConfig":Z
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GET_BIZ_CONFIG flowTipConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v2, "flowTipConfig"

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 159
    .end local v35    # "flowTipConfig":Z
    :cond_9
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .line 174
    .end local v23    # "bizKey":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 175
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "GET_BIZ_CONFIG success "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v40

    invoke-direct {v2, v3, v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 178
    :cond_b
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "No result"

    const-string/jumbo v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v37    # "i":I
    .end local v40    # "json":Lorg/json/JSONObject;
    .end local v42    # "keys":Ljava/lang/String;
    .end local v43    # "keysArray":Lorg/json/JSONArray;
    .end local v44    # "length":I
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_c
    const-string/jumbo v2, "showFlowDataTip"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/framework/business/components/CommonComponents;->showDelayGuide(Landroid/content/Context;)V

    .line 513
    :cond_d
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 182
    :cond_e
    const-string/jumbo v2, "getDeviceId"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 183
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "GET_DEVICE_ID"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getDeviceId()Ljava/lang/String;

    move-result-object v30

    .line 185
    .local v30, "deviceId":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GET_DEVICE_ID deviceId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v41, Lorg/json/JSONObject;

    invoke-direct/range {v41 .. v41}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .restart local v41    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "deviceId"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v41

    invoke-direct {v2, v3, v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 189
    .end local v30    # "deviceId":Ljava/lang/String;
    .end local v41    # "jsonObject":Lorg/json/JSONObject;
    :cond_f
    const-string/jumbo v2, "encryptContent"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 190
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 191
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v53, ""

    .line 192
    .local v53, "result":Ljava/lang/String;
    const-string/jumbo v2, "type"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 194
    .local v55, "type":Ljava/lang/String;
    const-string/jumbo v2, "DES"

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 195
    const-string/jumbo v2, "originalString"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 196
    .local v50, "originalString":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 197
    const-string/jumbo v2, "lingxdes"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/business/components/CommonComponents;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 198
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ENCRYPT_CONTENT result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v50    # "originalString":Ljava/lang/String;
    :cond_10
    new-instance v41, Lorg/json/JSONObject;

    invoke-direct/range {v41 .. v41}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .restart local v41    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "encryptedString"

    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v41

    invoke-direct {v2, v3, v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 205
    .end local v41    # "jsonObject":Lorg/json/JSONObject;
    .end local v48    # "object":Lorg/json/JSONObject;
    .end local v53    # "result":Ljava/lang/String;
    .end local v55    # "type":Ljava/lang/String;
    :cond_11
    const-string/jumbo v2, "addCoin"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 206
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 207
    .restart local v48    # "object":Lorg/json/JSONObject;
    if-nez v48, :cond_12

    .line 208
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 210
    :cond_12
    const-string/jumbo v2, "opCode"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 211
    .local v49, "opCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Lalq;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 212
    .end local v48    # "object":Lorg/json/JSONObject;
    .end local v49    # "opCode":Ljava/lang/String;
    :cond_13
    const-string/jumbo v2, "savePic"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 215
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "callbackId"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 216
    .local v25, "callbackId":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get callbackId  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 219
    const-string/jumbo v2, "savePic"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_14
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_15

    .line 223
    const v2, 0x493e3

    const-string/jumbo v3, "fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/iflytek/framework/business/components/CommonComponents;->onImageDownloadResult(ILjava/lang/String;)V

    .line 224
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 227
    :cond_15
    const-string/jumbo v2, "picUrl"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 229
    const v2, 0x493e1

    const-string/jumbo v3, "fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/iflytek/framework/business/components/CommonComponents;->onImageDownloadResult(ILjava/lang/String;)V

    .line 230
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 233
    :cond_16
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const-string/jumbo v3, "Business_CommonComponents"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/framework/business/components/CommonComponents;->mOnDownloadStateListener:Lno$c;

    invoke-virtual {v2, v3, v4}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 235
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const/16 v3, 0x10

    const-string/jumbo v4, "share_pic"

    const/4 v5, 0x0

    const-string/jumbo v6, "\u4fdd\u5b58\u56fe\u7247"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 237
    .end local v7    # "url":Ljava/lang/String;
    .end local v25    # "callbackId":Ljava/lang/String;
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_17
    const-string/jumbo v2, "getUserInfo"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 239
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "keys"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 240
    .restart local v42    # "keys":Ljava/lang/String;
    const v33, 0x186ae

    .line 243
    .local v33, "errorCode":I
    new-instance v40, Lorg/json/JSONObject;

    invoke-direct/range {v40 .. v40}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .restart local v40    # "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get user info keys "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 246
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "get user info error ,keys is empty "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const v33, 0x186ac

    .line 292
    :cond_18
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 293
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "GET_BIZ_CONFIG success "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v33, 0x0

    .line 296
    :cond_19
    const-string/jumbo v2, "errorCode"

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    move-object/from16 v0, v40

    invoke-direct {v2, v3, v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 250
    :cond_1a
    new-instance v43, Lorg/json/JSONArray;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v43    # "keysArray":Lorg/json/JSONArray;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get device info keysArray "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v44

    .line 254
    .restart local v44    # "length":I
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v56

    .line 256
    .local v56, "userInfo":Lcom/iflytek/viafly/account/entity/User;
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_4
    move/from16 v0, v37

    move/from16 v1, v44

    if-ge v0, v1, :cond_18

    .line 257
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v57

    .line 258
    .local v57, "userInfoKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 260
    const-string/jumbo v2, "phoneNum"

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 262
    if-eqz v56, :cond_1d

    .line 263
    invoke-virtual/range {v56 .. v56}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v52

    .line 264
    .local v52, "phoneNum":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 265
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get phone num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string/jumbo v2, "phoneNum"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const/16 v33, 0x0

    .line 256
    .end local v52    # "phoneNum":Ljava/lang/String;
    :cond_1b
    :goto_5
    add-int/lit8 v37, v37, 0x1

    goto :goto_4

    .line 269
    .restart local v52    # "phoneNum":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "phone num is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const v33, 0x186ad

    goto :goto_5

    .line 273
    .end local v52    # "phoneNum":Ljava/lang/String;
    :cond_1d
    const v33, 0x186ad

    goto :goto_5

    .line 276
    :cond_1e
    const-string/jumbo v2, "loginState"

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 278
    if-eqz v56, :cond_1f

    invoke-virtual/range {v56 .. v56}, Lcom/iflytek/viafly/account/entity/User;->getUserLoginState()I

    move-result v45

    .line 279
    .local v45, "loginState":I
    :goto_6
    const-string/jumbo v2, "loginState"

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    const/16 v33, 0x0

    .line 282
    goto :goto_5

    .line 278
    .end local v45    # "loginState":I
    :cond_1f
    const/16 v45, 0x0

    goto :goto_6

    .line 285
    :cond_20
    const v33, 0x186ab

    goto :goto_5

    .line 298
    .end local v33    # "errorCode":I
    .end local v37    # "i":I
    .end local v40    # "json":Lorg/json/JSONObject;
    .end local v42    # "keys":Ljava/lang/String;
    .end local v43    # "keysArray":Lorg/json/JSONArray;
    .end local v44    # "length":I
    .end local v48    # "object":Lorg/json/JSONObject;
    .end local v56    # "userInfo":Lcom/iflytek/viafly/account/entity/User;
    .end local v57    # "userInfoKey":Ljava/lang/String;
    :cond_21
    const-string/jumbo v2, "turnToHomePage"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 301
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "TURN_TO_HOME_COMMON_PAGE "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->a()V

    goto/16 :goto_3

    .line 303
    :cond_22
    const-string/jumbo v2, "showDate"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 304
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 305
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "dateYear"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 306
    .local v12, "year":I
    const-string/jumbo v2, "dateMonth"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v46

    .line 307
    .local v46, "month":I
    const-string/jumbo v2, "dateDay"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 308
    .local v14, "day":I
    const-string/jumbo v2, "callbackId"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 309
    .restart local v25    # "callbackId":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get callbackId  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 312
    const-string/jumbo v2, "showDate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_23
    :try_start_0
    invoke-static {}, Lqe;->a()I

    move-result v54

    .line 316
    .local v54, "sdk":I
    const/4 v8, 0x0

    .line 317
    .local v8, "dataPickerDialog":Landroid/app/DatePickerDialog;
    new-instance v11, Lcom/iflytek/framework/business/components/CommonComponents$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/iflytek/framework/business/components/CommonComponents$1;-><init>(Lcom/iflytek/framework/business/components/CommonComponents;)V

    .line 340
    .local v11, "onDateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    const/16 v2, 0xe

    move/from16 v0, v54

    if-lt v0, v2, :cond_24

    .line 341
    new-instance v8, Landroid/app/DatePickerDialog;

    .end local v8    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x3

    add-int/lit8 v13, v46, -0x1

    invoke-direct/range {v8 .. v14}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 349
    .restart local v8    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    :goto_7
    invoke-virtual {v8}, Landroid/app/DatePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 350
    .end local v8    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    .end local v11    # "onDateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local v54    # "sdk":I
    :catch_0
    move-exception v32

    .line 351
    .local v32, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "open DatePickerDialog error!"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 346
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v8    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    .restart local v11    # "onDateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .restart local v54    # "sdk":I
    :cond_24
    :try_start_1
    new-instance v8, Landroid/app/DatePickerDialog;

    .end local v8    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v10

    add-int/lit8 v13, v46, -0x1

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v8    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    goto :goto_7

    .line 353
    .end local v8    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    .end local v11    # "onDateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local v12    # "year":I
    .end local v14    # "day":I
    .end local v25    # "callbackId":Ljava/lang/String;
    .end local v46    # "month":I
    .end local v48    # "object":Lorg/json/JSONObject;
    .end local v54    # "sdk":I
    :cond_25
    const-string/jumbo v2, "getChannel"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 355
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 356
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "callbackId"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 357
    .restart local v25    # "callbackId":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 358
    const-string/jumbo v2, "getChannel"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v2, "type"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v55

    .line 360
    .local v55, "type":I
    const/16 v27, 0x0

    .line 361
    .local v27, "channel":Ljava/lang/String;
    if-nez v55, :cond_27

    .line 362
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 366
    :cond_26
    :goto_8
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "channel id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 368
    const v2, 0x38271

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->onGetChannelCallback(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 363
    :cond_27
    const/4 v2, 0x1

    move/from16 v0, v55

    if-ne v0, v2, :cond_26

    .line 364
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    goto :goto_8

    .line 370
    :cond_28
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->onGetChannelCallback(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 373
    .end local v25    # "callbackId":Ljava/lang/String;
    .end local v27    # "channel":Ljava/lang/String;
    .end local v48    # "object":Lorg/json/JSONObject;
    .end local v55    # "type":I
    :cond_29
    const-string/jumbo v2, "turnToTranslatePage"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 375
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "TURN_TO_TRANSLATE_PAGE "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->turnToTranslateChannel()V

    goto/16 :goto_3

    .line 377
    :cond_2a
    const-string/jumbo v2, "copyToClipboard"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 380
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "content"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 381
    .local v18, "content":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "COPY_TO_CLIPBOARD "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/base/clipboard/ClipboardManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/base/clipboard/ClipboardManager;

    move-result-object v28

    .line 383
    .local v28, "cm":Lcom/iflytek/base/clipboard/ClipboardManager;
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/base/clipboard/ClipboardManager;->copy(Ljava/lang/CharSequence;)V

    .line 384
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    const-string/jumbo v4, "OK"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    .end local v18    # "content":Ljava/lang/String;
    .end local v28    # "cm":Lcom/iflytek/base/clipboard/ClipboardManager;
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_2b
    const-string/jumbo v2, "turnToFullScreenPage"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 387
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 388
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "content"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 389
    .restart local v18    # "content":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "TURN_TO_FULLSCREEN_PAGE "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v39, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;

    move-object/from16 v0, v39

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v39, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extraContent"

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 393
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    const-string/jumbo v4, "OK"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    .end local v18    # "content":Ljava/lang/String;
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_2c
    const-string/jumbo v2, "turnToNativePage"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 395
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 396
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "page"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 397
    .local v51, "page":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TURN_TO_NATIVE_PAGE page: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v51

    invoke-static {v2, v0}, Lazo;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 401
    :cond_2d
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    const-string/jumbo v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v48    # "object":Lorg/json/JSONObject;
    .end local v51    # "page":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v2, "bindPhoneNum"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 405
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "callbackId"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 406
    .restart local v25    # "callbackId":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get callbackId  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 409
    const-string/jumbo v2, "bindPhoneNum"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_2f
    invoke-static {}, Lmz;->n()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 412
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "bind by local"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v39, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/account/ui/BindActivity;

    move-object/from16 v0, v39

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .restart local v39    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 417
    .end local v39    # "intent":Landroid/content/Intent;
    :cond_30
    invoke-static {}, Lmz;->o()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 418
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, "bind by sdk"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {}, Laoi;->a()Laoi;

    move-result-object v2

    invoke-virtual {v2}, Laoi;->c()V

    goto/16 :goto_3

    .line 421
    .end local v25    # "callbackId":Ljava/lang/String;
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_31
    const-string/jumbo v2, "unbindPhoneNum"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 422
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 423
    .restart local v48    # "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "callbackId"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 424
    .restart local v25    # "callbackId":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get callbackId  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 427
    const-string/jumbo v2, "unbindPhoneNum"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_32
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->i()Ljava/lang/String;

    move-result-object v26

    .line 430
    .local v26, "caller":Ljava/lang/String;
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 431
    :cond_33
    const-string/jumbo v2, "-1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/framework/business/components/CommonComponents;->notifyUnBindResult(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 433
    :cond_34
    new-instance v22, Ltp;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/CommonComponents;->mUnBindRequestLisnter:Lyn;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Ltp;-><init>(Landroid/content/Context;Lyn;)V

    .line 434
    .local v22, "bindMobileBizHelper":Ltp;
    const/4 v2, 0x0

    const-string/jumbo v3, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2, v3}, Ltp;->a(Ljava/lang/String;ILjava/lang/String;)J

    goto/16 :goto_3

    .line 436
    .end local v22    # "bindMobileBizHelper":Ltp;
    .end local v25    # "callbackId":Ljava/lang/String;
    .end local v26    # "caller":Ljava/lang/String;
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_35
    const-string/jumbo v2, "translateErrorSubmit"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 437
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 438
    .restart local v48    # "object":Lorg/json/JSONObject;
    if-nez v48, :cond_36

    .line 439
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 441
    :cond_36
    const-string/jumbo v2, "errortype"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, "errorType":Ljava/lang/String;
    const-string/jumbo v2, "content"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 443
    .restart local v18    # "content":Ljava/lang/String;
    const-string/jumbo v2, "nickname"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 444
    .local v19, "nickName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 446
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 448
    :cond_37
    const-string/jumbo v2, "callbackId"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 449
    .restart local v25    # "callbackId":Ljava/lang/String;
    const-string/jumbo v2, "Business_CommonComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get callbackId  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 452
    const-string/jumbo v2, "translateErrorSubmit"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_38
    new-instance v15, Layn;

    invoke-direct {v15}, Layn;-><init>()V

    .line 455
    .local v15, "mTranslateReportErrorHelper":Layn;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_39

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 457
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 459
    :cond_39
    invoke-static {}, Laxp;->b()Ljava/util/List;

    move-result-object v24

    .line 461
    .local v24, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/translate/entity/TranslateResultItem;>;"
    if-eqz v24, :cond_3a

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 462
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 466
    .local v16, "lastResult":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    new-instance v20, Lcom/iflytek/framework/business/components/CommonComponents$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents$2;-><init>(Lcom/iflytek/framework/business/components/CommonComponents;)V

    invoke-virtual/range {v15 .. v20}, Layn;->a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lajm;)V

    goto/16 :goto_3

    .line 464
    .end local v16    # "lastResult":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    :cond_3a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 483
    .end local v15    # "mTranslateReportErrorHelper":Layn;
    .end local v17    # "errorType":Ljava/lang/String;
    .end local v18    # "content":Ljava/lang/String;
    .end local v19    # "nickName":Ljava/lang/String;
    .end local v24    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/translate/entity/TranslateResultItem;>;"
    .end local v25    # "callbackId":Ljava/lang/String;
    .end local v48    # "object":Lorg/json/JSONObject;
    :cond_3b
    const-string/jumbo v2, "goBackPage"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v29

    .line 485
    .local v29, "context":Landroid/content/Context;
    move-object/from16 v0, v29

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_d

    .line 486
    check-cast v29, Landroid/app/Activity;

    .end local v29    # "context":Landroid/content/Context;
    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 488
    :cond_3c
    const-string/jumbo v2, "getFileContent"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 489
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 490
    .local v34, "filePath":Ljava/lang/String;
    new-instance v41, Lorg/json/JSONObject;

    invoke-direct/range {v41 .. v41}, Lorg/json/JSONObject;-><init>()V

    .line 492
    .restart local v41    # "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v21, "file:///android_asset/"

    .line 493
    .local v21, "assetPre":Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 494
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 496
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lazc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 497
    .restart local v18    # "content":Ljava/lang/String;
    const-string/jumbo v2, "content"

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 501
    .end local v18    # "content":Ljava/lang/String;
    .end local v21    # "assetPre":Ljava/lang/String;
    :goto_9
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "OK"

    invoke-virtual/range {v41 .. v41}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :catch_1
    move-exception v32

    .line 499
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Business_CommonComponents"

    const-string/jumbo v3, ""

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 502
    .end local v32    # "e":Ljava/lang/Exception;
    .end local v34    # "filePath":Ljava/lang/String;
    .end local v41    # "jsonObject":Lorg/json/JSONObject;
    :cond_3e
    const-string/jumbo v2, "goBackHistory"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 503
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    invoke-virtual {v2}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 504
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    invoke-virtual {v2}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a()Z

    move-result v36

    .line 505
    .local v36, "handle":Z
    if-nez v36, :cond_d

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/CommonComponents;->getContext()Landroid/content/Context;

    move-result-object v29

    .line 507
    .restart local v29    # "context":Landroid/content/Context;
    move-object/from16 v0, v29

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_d

    .line 508
    check-cast v29, Landroid/app/Activity;

    .end local v29    # "context":Landroid/content/Context;
    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 518
    iput-object p2, p0, Lcom/iflytek/framework/business/components/CommonComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 519
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 520
    return-void
.end method
