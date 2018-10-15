.class public Lcom/iflytek/viafly/ad/business/SplashADDataManager;
.super Ljava/lang/Object;
.source "SplashADDataManager.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;,
        Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;
    }
.end annotation


# static fields
.field public static final MSG_REQUEST_BY_SDK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SplashADDataManager"


# instance fields
.field private final ERRORCODE_SUCCESS:Ljava/lang/String;

.field private final MIGU_PLATFORMID:I

.field private final TYPE_GET:Ljava/lang/String;

.field private final TYPE_GET_NEW:Ljava/lang/String;

.field private final TYPE_POST:Ljava/lang/String;

.field public cancelRequest:Z

.field private index:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;

.field private mSplashADDataBizHelper:Lua;

.field private mSplashADResultCallback:Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;

.field private platformslotid:Ljava/lang/String;

.field private preJsonObject:Lorg/json/JSONObject;

.field private totalJsonArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->ERRORCODE_SUCCESS:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->TYPE_GET:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->TYPE_POST:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->TYPE_GET_NEW:Ljava/lang/String;

    .line 48
    const/4 v0, 0x7

    iput v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->MIGU_PLATFORMID:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADDataBizHelper:Lua;

    .line 52
    iput-boolean v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->cancelRequest:Z

    .line 58
    iput v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->index:I

    .line 61
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lua;

    const-string/jumbo v1, "http://yd.voicecloud.cn/lx-interface-ossp/getadsinfo?c=getadinfo"

    invoke-direct {v0, p1, v1, p0}, Lua;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADDataBizHelper:Lua;

    .line 63
    new-instance v0, Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;-><init>(Lcom/iflytek/viafly/ad/business/SplashADDataManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mHandler:Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ad/business/SplashADDataManager;Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ad/business/SplashADDataManager;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ad/business/SplashADDataManager;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ad/business/SplashADDataManager;
    .param p1, "x1"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->hasFirstPlantAd(Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ad/business/SplashADDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->requestMiguBySDK()V

    return-void
.end method

.method private checkSingleSplashADDataAvailable(Lorg/json/JSONObject;)Z
    .locals 4
    .param p1, "sourceObj"    # Lorg/json/JSONObject;

    .prologue
    .line 182
    const-string/jumbo v1, "SplashADDataManager"

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

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "available":Z
    if-eqz p1, :cond_0

    .line 186
    const-string/jumbo v1, "platformid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 188
    const-string/jumbo v1, "platformslotid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 199
    :cond_0
    :goto_0
    const-string/jumbo v1, "SplashADDataManager"

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

    .line 200
    return v0

    .line 192
    :cond_1
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "adtype"

    .line 193
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "maturl"

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private filterEffectiveSplashADData(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 7
    .param p1, "sourceArray"    # Lorg/json/JSONArray;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "haveAddFristLevel":Z
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 159
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 161
    .local v4, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 162
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 163
    .local v2, "itemData":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->checkSingleSplashADDataAvailable(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    const-string/jumbo v5, "platformid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    .line 166
    if-nez v0, :cond_0

    .line 167
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 161
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 176
    .end local v1    # "i":I
    .end local v2    # "itemData":Lorg/json/JSONObject;
    .end local v4    # "len":I
    :cond_3
    return-object v3
.end method

.method private getAdFromMigu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "platformslotid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->platformslotid:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->platformslotid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string/jumbo v0, "SplashADDataManager"

    const-string/jumbo v1, "Splash firstLevel request no id"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, v2, v2}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    .line 286
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    const-string/jumbo v0, "SplashADDataManager"

    const-string/jumbo v1, "Splash firstLevel request no internet!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0, v2, v2}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mHandler:Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private hasFirstPlantAd(Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    .locals 5
    .param p1, "result"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    const/4 v4, 0x0

    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 342
    if-eqz p1, :cond_2

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "maturl"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "clickurl"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getLandingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "action"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "admark"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMarkFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "admarkflag"

    invoke-virtual {p1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getAdMarkFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    :cond_1
    const-string/jumbo v1, "SplashADDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "merge ADdata result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v1, p1}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "SplashADDataManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-direct {p0, v4, v4}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    goto :goto_0
.end method

.method private noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    .locals 3
    .param p1, "returnObj"    # Lorg/json/JSONObject;
    .param p2, "miguNativeData"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->index:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    iget v2, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 262
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADResultCallback:Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADResultCallback:Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;->onSplashADResult(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    .line 267
    :goto_1
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "SplashADDataManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v1, "SplashADDataManager"

    const-string/jumbo v2, "mSplashADResultCallback is null!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestMiguBySDK()V
    .locals 10

    .prologue
    .line 290
    new-instance v5, Lcom/iflytek/viafly/ad/business/SplashADDataManager$1;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/ad/business/SplashADDataManager$1;-><init>(Lcom/iflytek/viafly/ad/business/SplashADDataManager;)V

    .line 314
    .local v5, "mListener":Lcom/migu/voiceads/MIGUNativeAdListener;
    invoke-static {}, Loa;->a()Loa;

    move-result-object v7

    invoke-virtual {v7}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 315
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    new-instance v6, Lcom/migu/voiceads/MIGUNativeAd;

    iget-object v7, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->platformslotid:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5}, Lcom/migu/voiceads/MIGUNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUNativeAdListener;)V

    .line 316
    .local v6, "nativeAd":Lcom/migu/voiceads/MIGUNativeAd;
    const/4 v1, 0x1

    .line 318
    .local v1, "count":I
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/migu/voiceads/MIGUNativeAd;->backLandingUrl(Z)V

    .line 320
    const-string/jumbo v3, ""

    .line 321
    .local v3, "latitude":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 322
    .local v4, "longitude":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 324
    :try_start_0
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 334
    :goto_0
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

    .line 335
    const-string/jumbo v7, "SplashADDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "request AD by SDK updata GEO:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v6, v1}, Lcom/migu/voiceads/MIGUNativeAd;->loadAd(I)V

    .line 337
    return-void

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "0.0"

    .line 328
    const-string/jumbo v4, "0.0"

    .line 329
    goto :goto_0

    .line 331
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "0.0"

    .line 332
    const-string/jumbo v4, "0.0"

    goto :goto_0
.end method


# virtual methods
.method public cancelRequestNewSplashAData(J)V
    .locals 1
    .param p1, "requestId"    # J

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADDataBizHelper:Lua;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADDataBizHelper:Lua;

    invoke-virtual {v0, p1, p2}, Lua;->cancelRequest(J)V

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->cancelRequest:Z

    .line 92
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 13
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    const/4 v11, 0x0

    .line 209
    const-string/jumbo v8, "SplashADDataManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "errorCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",requestId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",requestType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, "returnObj":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/16 v8, 0x50

    move/from16 v0, p5

    if-ne v8, v0, :cond_0

    .line 213
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "realResult":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 215
    const-string/jumbo v8, "SplashADDataManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "realResult="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 217
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "errorcode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "errCode":Ljava/lang/String;
    const-string/jumbo v8, "000000"

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 219
    const-string/jumbo v8, "ads"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    .line 221
    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->filterEffectiveSplashADData(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    .line 222
    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 223
    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->totalJsonArray:Lorg/json/JSONArray;

    iget v9, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->index:I

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    .line 224
    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    if-eqz v8, :cond_0

    .line 225
    iget-object v8, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;

    const-string/jumbo v9, "platformid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 226
    .local v5, "platFormId":I
    const/16 v8, 0x9

    if-ne v5, v8, :cond_1

    .line 228
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->getAdFromMigu()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    .end local v3    # "errCode":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "platFormId":I
    .end local v6    # "realResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 229
    .restart local v3    # "errCode":Ljava/lang/String;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "platFormId":I
    .restart local v6    # "realResult":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "SplashADDataManager"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 241
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "errCode":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "platFormId":I
    .end local v6    # "realResult":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 242
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "SplashADDataManager"

    const-string/jumbo v9, "onResult exception "

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    invoke-direct {p0, v7, v11}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->noticeSplash(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    goto :goto_0

    .line 235
    .restart local v3    # "errCode":Ljava/lang/String;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "platFormId":I
    .restart local v6    # "realResult":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->preJsonObject:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public requestNewSplashADData()J
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADDataBizHelper:Lua;

    invoke-virtual {v0}, Lua;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSplashADResultCallback(Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;)V
    .locals 0
    .param p1, "splashResultCallback"    # Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mSplashADResultCallback:Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;

    .line 72
    return-void
.end method

.method public splashReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONArray;IIII)V
    .locals 15
    .param p1, "behaviorType"    # Lcom/iflytek/viafly/ad/business/ADBehaviorType;
    .param p2, "adId"    # Ljava/lang/String;
    .param p3, "placeId"    # Ljava/lang/String;
    .param p4, "platformID"    # I
    .param p5, "urlArray"    # Lorg/json/JSONArray;
    .param p6, "downX"    # I
    .param p7, "downY"    # I
    .param p8, "upX"    # I
    .param p9, "upY"    # I

    .prologue
    .line 99
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v11

    invoke-virtual {v11}, Lhl;->c()Z

    move-result v11

    if-nez v11, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v11, "SplashADDataManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "downX="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",downY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",upX="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",upY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 106
    .local v6, "len":I
    iget-object v11, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 107
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v11, "SplashADDataManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reportServer urlsArray size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_0

    .line 109
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 110
    .local v10, "tempUrlJSONObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "SplashADDataManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reportServer index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-nez v10, :cond_3

    .line 108
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    :cond_3
    const-string/jumbo v11, "url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "reportUrl":Ljava/lang/String;
    const-string/jumbo v11, "type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "reportType":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 117
    const-string/jumbo v11, "reporttime"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    .local v3, "delayTime":I
    const-string/jumbo v11, "SplashADDataManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reportServer platformID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",reporttime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/iflytek/viafly/ad/business/ReportServerService;

    invoke-direct {v7, v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v7, "reportIntent":Landroid/content/Intent;
    const-string/jumbo v11, "reporttime"

    invoke-virtual {v7, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string/jumbo v11, "0"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 124
    const-string/jumbo v11, "SplashADDataManager"

    const-string/jumbo v12, "reportServer get"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v11, "url"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v11, "type"

    const/16 v12, 0x52

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :cond_4
    :goto_3
    :try_start_1
    invoke-virtual {v2, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lwv;->d(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 149
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "delayTime":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v6    # "len":I
    .end local v7    # "reportIntent":Landroid/content/Intent;
    .end local v8    # "reportType":Ljava/lang/String;
    .end local v9    # "reportUrl":Ljava/lang/String;
    .end local v10    # "tempUrlJSONObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    .line 150
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "SplashADDataManager"

    const-string/jumbo v12, "reportServer exception "

    invoke-static {v11, v12, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 127
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "delayTime":I
    .restart local v5    # "i":I
    .restart local v6    # "len":I
    .restart local v7    # "reportIntent":Landroid/content/Intent;
    .restart local v8    # "reportType":Ljava/lang/String;
    .restart local v9    # "reportUrl":Ljava/lang/String;
    .restart local v10    # "tempUrlJSONObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_3
    const-string/jumbo v11, "1"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x7

    move/from16 v0, p4

    if-ne v11, v0, :cond_6

    .line 129
    const-string/jumbo v11, "SplashADDataManager"

    const-string/jumbo v12, "reportServer post"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v11, "url"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v11, "behaviorType"

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v11, "id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v11, "platformslotid"

    move-object/from16 v0, p3

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v11, "type"

    const/16 v12, 0x53

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 135
    :cond_6
    const-string/jumbo v11, "2"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x7

    move/from16 v0, p4

    if-ne v11, v0, :cond_4

    .line 137
    const-string/jumbo v11, "SplashADDataManager"

    const-string/jumbo v12, "reportServer get new"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v11, "{DOWN_X}"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "{DOWN_Y}"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "{UP_X}"

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "{UP_Y}"

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 139
    const-string/jumbo v11, "url"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v11, "type"

    const/16 v12, 0x52

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method
