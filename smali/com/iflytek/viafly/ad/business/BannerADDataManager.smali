.class public Lcom/iflytek/viafly/ad/business/BannerADDataManager;
.super Ljava/lang/Object;
.source "BannerADDataManager.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;,
        Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;
    }
.end annotation


# static fields
.field public static final MSG_REQUEST_BY_SDK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BannerADDataManager"


# instance fields
.field private final ERRORCODE_NO_PLAN:Ljava/lang/String;

.field private final ERRORCODE_SUCCESS:Ljava/lang/String;

.field private final HOME_BANNER_MAX_SHOW_NUM:I

.field private final MIGU_PLATFORMID:I

.field private final TYPE_GET:Ljava/lang/String;

.field private final TYPE_GET_NEW:Ljava/lang/String;

.field private final TYPE_POST:Ljava/lang/String;

.field private bannerNativeData:Lcom/migu/voiceads/MIGUNativeAdDataRef;

.field private exposureView:Landroid/view/View;

.field private mBannerADDataBizHelper:Ltx;

.field private mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;

.field private platformslotid:Ljava/lang/String;

.field private preJsonObject:Lorg/json/JSONObject;

.field private totalJsonArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "exposureView"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->HOME_BANNER_MAX_SHOW_NUM:I

    .line 47
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->ERRORCODE_SUCCESS:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "012002"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->ERRORCODE_NO_PLAN:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->TYPE_GET:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->TYPE_POST:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->TYPE_GET_NEW:Ljava/lang/String;

    .line 52
    const/4 v0, 0x7

    iput v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->MIGU_PLATFORMID:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADDataBizHelper:Ltx;

    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->exposureView:Landroid/view/View;

    .line 66
    new-instance v0, Ltx;

    const-string/jumbo v1, "http://yd.voicecloud.cn/lx-interface-ossp/getadsinfo?c=getadinfo"

    invoke-direct {v0, p1, v1, p0}, Ltx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADDataBizHelper:Ltx;

    .line 67
    new-instance v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;-><init>(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mHandler:Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->requestMiguBySDK()V

    return-void
.end method

.method private checkSingleBannerADDataAvailable(Lorg/json/JSONObject;)Z
    .locals 4
    .param p1, "sourceObj"    # Lorg/json/JSONObject;

    .prologue
    .line 248
    const-string/jumbo v1, "BannerADDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sourceObj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "available":Z
    if-eqz p1, :cond_0

    .line 252
    const-string/jumbo v1, "platformid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 254
    const-string/jumbo v1, "platformslotid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 265
    :cond_0
    :goto_0
    const-string/jumbo v1, "BannerADDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "available="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v0

    .line 258
    :cond_1
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "adtype"

    .line 259
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "maturl"

    .line 260
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private filterEffectiveBannerADData(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 8
    .param p1, "sourceArray"    # Lorg/json/JSONArray;

    .prologue
    .line 222
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 224
    .local v1, "filterArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 226
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 227
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 228
    .local v3, "itemData":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->checkSingleBannerADDataAvailable(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 232
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 240
    .end local v2    # "i":I
    .end local v3    # "itemData":Lorg/json/JSONObject;
    .end local v4    # "len":I
    :cond_1
    :goto_1
    const-string/jumbo v5, "BannerADDataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "after filter jsonArray length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v1

    .line 226
    .restart local v2    # "i":I
    .restart local v3    # "itemData":Lorg/json/JSONObject;
    .restart local v4    # "len":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "i":I
    .end local v3    # "itemData":Lorg/json/JSONObject;
    .end local v4    # "len":I
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BannerADDataManager"

    const-string/jumbo v6, "filterEffectiveBannerADData exception "

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private filterFirstLevel(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "sourceArray"    # Lorg/json/JSONArray;

    .prologue
    .line 199
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 200
    .local v0, "filterArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 201
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 202
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 203
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 204
    .local v2, "itemData":Lorg/json/JSONObject;
    const-string/jumbo v4, "platformid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 206
    const-string/jumbo v4, "maturl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 214
    .end local v1    # "i":I
    .end local v2    # "itemData":Lorg/json/JSONObject;
    .end local v3    # "len":I
    :cond_2
    return-object v0
.end method

.method private requestMiguBySDK()V
    .locals 10

    .prologue
    .line 342
    new-instance v5, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;-><init>(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V

    .line 367
    .local v5, "mListener":Lcom/migu/voiceads/MIGUNativeAdListener;
    invoke-static {}, Loa;->a()Loa;

    move-result-object v7

    invoke-virtual {v7}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 370
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    new-instance v6, Lcom/migu/voiceads/MIGUNativeAd;

    iget-object v7, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->platformslotid:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5}, Lcom/migu/voiceads/MIGUNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUNativeAdListener;)V

    .line 371
    .local v6, "nativeAd":Lcom/migu/voiceads/MIGUNativeAd;
    const/4 v1, 0x1

    .line 373
    .local v1, "count":I
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/migu/voiceads/MIGUNativeAd;->backLandingUrl(Z)V

    .line 375
    const-string/jumbo v3, ""

    .line 376
    .local v3, "latitude":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 377
    .local v4, "longitude":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 389
    :goto_0
    const-string/jumbo v7, "BannerADDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "geo params:longitude:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",latitude"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v7, "geo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/migu/voiceads/MIGUNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v6, v1}, Lcom/migu/voiceads/MIGUNativeAd;->loadAd(I)V

    .line 392
    return-void

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "0.0"

    .line 383
    const-string/jumbo v4, "0.0"

    .line 384
    goto :goto_0

    .line 386
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "0.0"

    .line 387
    const-string/jumbo v4, "0.0"

    goto :goto_0
.end method


# virtual methods
.method public bannerReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONArray;IIIILandroid/view/View;)V
    .locals 17
    .param p1, "behaviorType"    # Lcom/iflytek/viafly/ad/business/ADBehaviorType;
    .param p2, "adId"    # Ljava/lang/String;
    .param p3, "placeId"    # Ljava/lang/String;
    .param p4, "platformID"    # I
    .param p5, "urlArray"    # Lorg/json/JSONArray;
    .param p6, "downX"    # I
    .param p7, "downY"    # I
    .param p8, "upX"    # I
    .param p9, "upY"    # I
    .param p10, "view"    # Landroid/view/View;

    .prologue
    .line 123
    const/16 v2, 0x9

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerNativeData:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    if-eqz v2, :cond_2

    .line 125
    :try_start_0
    sget-object v2, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adclick:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerNativeData:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->exposureView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 128
    const-string/jumbo v2, "BannerADDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",downY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",upX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",upY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerNativeData:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->exposureView:Landroid/view/View;

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->onClicked(IIIILandroid/view/View;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adshowed:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerNativeData:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->exposureView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerNativeData:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->exposureView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->onExposured(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v10

    .line 137
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string/jumbo v2, "BannerADDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",downY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",upX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",upY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string/jumbo v2, "BannerADDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportServer urlArray= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 150
    .local v12, "len":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 151
    .local v8, "context":Landroid/content/Context;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_0

    .line 152
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 153
    .local v16, "tempUrlJSONObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "BannerADDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportServer i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez v16, :cond_4

    .line 151
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 157
    :cond_4
    const-string/jumbo v2, "url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 158
    .local v15, "reportUrl":Ljava/lang/String;
    const-string/jumbo v2, "type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 159
    .local v14, "reportType":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 160
    const-string/jumbo v2, "reporttime"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 161
    .local v9, "delayTime":I
    const-string/jumbo v2, "BannerADDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportServer platformID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",reporttime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v13, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/ad/business/ReportServerService;

    invoke-direct {v13, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v13, "reportIntent":Landroid/content/Intent;
    const-string/jumbo v2, "reporttime"

    invoke-virtual {v13, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string/jumbo v2, "0"

    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 167
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, "reportServer get"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v2, "url"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v2, "type"

    const/16 v3, 0x52

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    :cond_5
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 187
    :catch_1
    move-exception v10

    .line 188
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lwv;->d(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 192
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "delayTime":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "i":I
    .end local v12    # "len":I
    .end local v13    # "reportIntent":Landroid/content/Intent;
    .end local v14    # "reportType":Ljava/lang/String;
    .end local v15    # "reportUrl":Ljava/lang/String;
    .end local v16    # "tempUrlJSONObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v10

    .line 193
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, "reportServer exception"

    invoke-static {v2, v3, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 170
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "delayTime":I
    .restart local v11    # "i":I
    .restart local v12    # "len":I
    .restart local v13    # "reportIntent":Landroid/content/Intent;
    .restart local v14    # "reportType":Ljava/lang/String;
    .restart local v15    # "reportUrl":Ljava/lang/String;
    .restart local v16    # "tempUrlJSONObject":Lorg/json/JSONObject;
    :cond_6
    :try_start_4
    const-string/jumbo v2, "1"

    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    move/from16 v0, p4

    if-ne v2, v0, :cond_7

    .line 172
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, "reportServer post"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string/jumbo v2, "url"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v2, "behaviorType"

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v2, "id"

    move-object/from16 v0, p2

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v2, "platformslotid"

    move-object/from16 v0, p3

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v2, "type"

    const/16 v3, 0x53

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 178
    :cond_7
    const-string/jumbo v2, "2"

    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    move/from16 v0, p4

    if-ne v2, v0, :cond_5

    .line 180
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, "reportServer get new"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string/jumbo v2, "{DOWN_X}"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{DOWN_Y}"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{UP_X}"

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{UP_Y}"

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 182
    const-string/jumbo v2, "url"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v2, "type"

    const/16 v3, 0x52

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3
.end method

.method public cancelRequestNewBannerAData(J)V
    .locals 1
    .param p1, "requestId"    # J

    .prologue
    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADDataBizHelper:Ltx;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADDataBizHelper:Ltx;

    invoke-virtual {v0, p1, p2}, Ltx;->cancelRequest(J)V

    .line 96
    :cond_0
    return-void
.end method

.method public getAdFromMigu()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "platformslotid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->platformslotid:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->platformslotid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v0, "BannerADDataManager"

    const-string/jumbo v1, "Banner firstLevel request no id"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    const-string/jumbo v0, "BannerADDataManager"

    const-string/jumbo v1, "Banner firstLevel request no internet!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mHandler:Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public hasFirstPlantAd(Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    .locals 9
    .param p1, "result"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    .line 423
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 424
    if-eqz p1, :cond_5

    .line 426
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerNativeData:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .line 429
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "maturl"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "clickurl"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getLandingUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "type"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 438
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "action"

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMark()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 442
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "admark"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMarkFlag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 447
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "admarkflag"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMarkFlag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    :cond_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 452
    .local v5, "tempJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 454
    .local v1, "havaAdd":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 455
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 456
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "platformid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 457
    .local v4, "platFormId":I
    const/16 v6, 0x9

    if-eq v4, v6, :cond_3

    .line 458
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 454
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :cond_3
    if-nez v1, :cond_2

    .line 462
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 463
    const/4 v1, 0x1

    goto :goto_1

    .line 467
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "platFormId":I
    :cond_4
    const-string/jumbo v6, "BannerADDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "merge ADdata result is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1    # "havaAdd":Z
    .end local v2    # "i":I
    .end local v5    # "tempJsonArray":Lorg/json/JSONArray;
    :goto_2
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "BannerADDataManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V

    goto :goto_2
.end method

.method public noFirstPlantAd(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "temArray"    # Lorg/json/JSONArray;

    .prologue
    .line 396
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;->onBannerADResult(Lorg/json/JSONArray;)V

    .line 419
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    const/4 v1, 0x0

    .line 404
    .local v1, "curResultIsAvailable":Z
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 406
    .local v0, "adInfoArray":Lorg/json/JSONArray;
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->filterFirstLevel(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 408
    const/4 v1, 0x1

    .line 409
    move-object p1, v0

    .line 413
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    if-eqz v2, :cond_4

    .line 414
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    invoke-interface {v2, p1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;->onBannerADResult(Lorg/json/JSONArray;)V

    .line 418
    :goto_2
    const-string/jumbo v2, "BannerADDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "curResultIsAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_3
    new-instance p1, Lorg/json/JSONArray;

    .end local p1    # "temArray":Lorg/json/JSONArray;
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .restart local p1    # "temArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 416
    :cond_4
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, "mBannerADResultCallback is null!"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 275
    const-string/jumbo v6, "BannerADDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "errorCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",requestId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",requestType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    const/16 v6, 0x51

    if-ne v6, p5, :cond_1

    .line 279
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "realResult":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 281
    const-string/jumbo v6, "BannerADDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "request realResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 283
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "errorcode"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "errCode":Ljava/lang/String;
    const-string/jumbo v6, "000000"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 285
    const-string/jumbo v6, "ads"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    .line 287
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-direct {p0, v6}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->filterEffectiveBannerADData(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    .line 288
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 290
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 291
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    .line 292
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "platformid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 293
    .local v4, "platFormId":I
    const/16 v6, 0x9

    if-ne v6, v4, :cond_2

    .line 295
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->getAdFromMigu()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "platFormId":I
    .end local v5    # "realResult":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 296
    .restart local v1    # "errCode":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "platFormId":I
    .restart local v5    # "realResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "BannerADDataManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "platFormId":I
    .end local v5    # "realResult":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "BannerADDataManager"

    const-string/jumbo v7, "onResult exception "

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    if-eqz v6, :cond_0

    .line 319
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    invoke-interface {v6}, Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;->onBannerDateError()V

    goto :goto_1

    .line 290
    .restart local v1    # "errCode":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "platFormId":I
    .restart local v5    # "realResult":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v4    # "platFormId":I
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V

    goto :goto_1

    .line 307
    .end local v2    # "i":I
    :cond_4
    const-string/jumbo v6, "012002"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    if-eqz v6, :cond_0

    .line 309
    iget-object v6, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v6, v7}, Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;->onBannerADResult(Lorg/json/JSONArray;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public reportUrlsArrayToServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Lorg/json/JSONArray;IIIILandroid/view/View;)V
    .locals 15
    .param p1, "behaviorType"    # Lcom/iflytek/viafly/ad/business/ADBehaviorType;
    .param p2, "nowShowingArray"    # Lorg/json/JSONArray;
    .param p3, "downX"    # I
    .param p4, "downY"    # I
    .param p5, "upX"    # I
    .param p6, "upY"    # I
    .param p7, "view"    # Landroid/view/View;

    .prologue
    .line 103
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 115
    :cond_0
    return-void

    .line 106
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 107
    .local v14, "len":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_0

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 109
    .local v12, "adInfo":Lorg/json/JSONObject;
    if-eqz v12, :cond_2

    .line 111
    const-string/jumbo v1, "id"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "platformslotid"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "platformid"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v1, "noticeurls"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONArray;IIIILandroid/view/View;)V

    .line 107
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public requestNewBannerADData()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADDataBizHelper:Ltx;

    invoke-virtual {v0}, Ltx;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public setADResultCallback(Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;)V
    .locals 0
    .param p1, "bannerADResultCallback"    # Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;

    .line 77
    return-void
.end method
