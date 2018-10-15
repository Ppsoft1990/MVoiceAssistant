.class public final Lcom/iflytek/framework/business/components/PayComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "PayComponents.java"


# static fields
.field private static final SDK_PAY_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Business_PayComponents"


# instance fields
.field private final CANCEL:Ljava/lang/String;

.field private final FAILD:Ljava/lang/String;

.field private final NETERROE:Ljava/lang/String;

.field private final PROCESSING:Ljava/lang/String;

.field private final SUCCESS:Ljava/lang/String;

.field private aliSuccessUrl:Ljava/lang/String;

.field private iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    .line 31
    const-string/jumbo v0, "9000"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->SUCCESS:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "8000"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->PROCESSING:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "4000"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->FAILD:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "6001"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->CANCEL:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "6002"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->NETERROE:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/iflytek/framework/business/components/PayComponents$2;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/PayComponents$2;-><init>(Lcom/iflytek/framework/business/components/PayComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/PayComponents;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/PayComponents;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/framework/business/components/PayComponents;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/PayComponents;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PayComponents;->aliSuccessUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public WeixinPay(Ljava/lang/String;)V
    .locals 8
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 166
    if-eqz p1, :cond_1

    .line 167
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    const-string/jumbo v4, "retcode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    new-instance v3, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 170
    .local v3, "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    const-string/jumbo v4, "appid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 171
    const-string/jumbo v4, "partnerid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 172
    const-string/jumbo v4, "prepayid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 173
    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 174
    const-string/jumbo v4, "noncestr"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 175
    const-string/jumbo v4, "timestamp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 176
    const-string/jumbo v4, "sign"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Lcom/iflytek/framework/business/components/PayComponents;->iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v1

    .line 179
    .local v1, "isSuccess":Z
    const-string/jumbo v4, "Business_PayComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6b63\u5e38\u8c03\u8d77\u652f\u4ed8, isSuccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1    # "isSuccess":Z
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    :goto_0
    return-void

    .line 181
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v4, "Business_PayComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8fd4\u56de\u9519\u8bef"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "retmsg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u652f\u4ed8\u5931\u8d25"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 190
    const-string/jumbo v4, "Business_PayComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "Business_PayComponents"

    const-string/jumbo v5, "\u670d\u52a1\u5668\u8bf7\u6c42\u9519\u8bef"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u670d\u52a1\u5668\u8bf7\u6c42\u9519\u8bef"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 51
    const-string/jumbo v7, "Business_PayComponents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onExec action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " params = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string/jumbo v7, "openPay"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    invoke-virtual {p2, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "mParam":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    new-instance v7, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v8, "Error"

    const-string/jumbo v9, "\u53c2\u6570\u89e3\u6790\u5931\u8d25"

    invoke-direct {v7, v8, v9}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v2    # "mParam":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 59
    .restart local v2    # "mParam":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "payType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "payType":Ljava/lang/String;
    const-string/jumbo v7, "aliPay"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    const-string/jumbo v7, "orderId"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "orderId":Ljava/lang/String;
    const-string/jumbo v7, "successUrl"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/framework/business/components/PayComponents;->aliSuccessUrl:Ljava/lang/String;

    .line 66
    new-instance v4, Lcom/iflytek/framework/business/components/PayComponents$1;

    invoke-direct {v4, p0, v3}, Lcom/iflytek/framework/business/components/PayComponents$1;-><init>(Lcom/iflytek/framework/business/components/PayComponents;Ljava/lang/String;)V

    .line 86
    .local v4, "payRunnable":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    .local v5, "payThread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 109
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "mParam":Ljava/lang/String;
    .end local v3    # "orderId":Ljava/lang/String;
    .end local v4    # "payRunnable":Ljava/lang/Runnable;
    .end local v5    # "payThread":Ljava/lang/Thread;
    .end local v6    # "payType":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 91
    .restart local v1    # "jsObj":Lorg/json/JSONObject;
    .restart local v2    # "mParam":Ljava/lang/String;
    .restart local v6    # "payType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "wxPay"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    const-string/jumbo v7, "orderId"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .restart local v3    # "orderId":Ljava/lang/String;
    invoke-static {v3}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "wx78d23038a30fa08b"

    invoke-static {v7, v8}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/framework/business/components/PayComponents;->iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 97
    iget-object v7, p0, Lcom/iflytek/framework/business/components/PayComponents;->iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string/jumbo v8, "wx78d23038a30fa08b"

    invoke-interface {v7, v8}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 99
    invoke-virtual {p0, v3}, Lcom/iflytek/framework/business/components/PayComponents;->WeixinPay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v3    # "orderId":Ljava/lang/String;
    .end local v6    # "payType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Business_PayComponents"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    new-instance v7, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v8, "Error"

    const-string/jumbo v9, "\u53c2\u6570\u89e3\u6790\u5931\u8d25"

    invoke-direct {v7, v8, v9}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsObj":Lorg/json/JSONObject;
    .restart local v3    # "orderId":Ljava/lang/String;
    .restart local v6    # "payType":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "\u83b7\u53d6\u8ba2\u5355\u9519\u8bef"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 47
    return-void
.end method
