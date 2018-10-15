.class public Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;
.super Ljava/lang/Object;
.source "BannerDataManager.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TestBannerDataManager"


# instance fields
.field private final BANNERREQUEST_INTERVAL_TIME:J

.field private final ERRORCODE_SUCCESS:Ljava/lang/String;

.field private final MAX_SHOW_NUM:I

.field private final MIGU_PLATFORMID:I

.field private final TYPE_GET:Ljava/lang/String;

.field private final TYPE_GET_NEW:Ljava/lang/String;

.field private final TYPE_POST:Ljava/lang/String;

.field private adslot:Ljava/lang/String;

.field private bannerBizHelper:Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;

.field private iflyCache:Ljava/lang/String;

.field private iflyLastRequestTime:Ljava/lang/String;

.field private mBannerADResultCallback:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->MAX_SHOW_NUM:I

    .line 37
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->ERRORCODE_SUCCESS:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->TYPE_GET:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->TYPE_POST:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->TYPE_GET_NEW:Ljava/lang/String;

    .line 41
    const/4 v0, 0x7

    iput v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->MIGU_PLATFORMID:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->bannerBizHelper:Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;

    .line 45
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->BANNERREQUEST_INTERVAL_TIME:J

    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;

    invoke-direct {v0, p1, p0}, Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->bannerBizHelper:Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;

    .line 54
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->initConstant(I)V

    .line 55
    return-void
.end method

.method private checkCurTimeWithLastTime(Ljava/lang/String;)Z
    .locals 12
    .param p1, "lastRequestTime"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 295
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    invoke-virtual {v6, p1, v10, v11}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 296
    .local v4, "lastTime":J
    const-string/jumbo v6, "TestBannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lastTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 299
    .local v0, "curTime":J
    const-string/jumbo v6, "TestBannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "curTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "timeDelta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sub-long v2, v0, v4

    .line 301
    .local v2, "deltaTime":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    const-wide/32 v6, 0x2bf20

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    .line 302
    const-string/jumbo v6, "TestBannerDataManager"

    const-string/jumbo v7, "bannerAD request time is too near"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v6, 0x1

    .line 306
    .end local v0    # "curTime":J
    .end local v2    # "deltaTime":J
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private checkSingleBannerADDataAvailable(Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;)Z
    .locals 9
    .param p1, "bannerBaseModel"    # Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "available":Z
    if-eqz p1, :cond_0

    .line 226
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 227
    .local v2, "curTime":J
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getExpirationtime()J

    move-result-wide v4

    .line 228
    .local v4, "endTime":J
    const-string/jumbo v6, "TestBannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "curTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string/jumbo v6, "TestBannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "endTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getAdtype()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getMaturl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 240
    .end local v2    # "curTime":J
    .end local v4    # "endTime":J
    :cond_0
    :goto_0
    const-string/jumbo v6, "TestBannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "available="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TestBannerDataManager"

    const-string/jumbo v7, "checkSingleBannerADDataAvailable exception "

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private filterEffectiveBannerADData(ZLjava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "saveChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v5, "tempModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 196
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 197
    .local v4, "len":I
    const/4 v2, 0x0

    .line 198
    .local v2, "hasChange":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 199
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;

    .line 200
    .local v0, "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->checkSingleBannerADDataAvailable(Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 210
    .end local v0    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    :cond_0
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 211
    invoke-static {v5}, Lcom/iflytek/viafly/ui/view/banner/model/BannerModel;->getBannerString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->saveBannerData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v2    # "hasChange":Z
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_1
    :goto_2
    const-string/jumbo v6, "TestBannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "after filter jsonArray length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v5

    .line 203
    .restart local v0    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    .restart local v2    # "hasChange":Z
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 198
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    .end local v2    # "hasChange":Z
    .end local v3    # "i":I
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TestBannerDataManager"

    const-string/jumbo v7, "filterEffectiveBannerADData exception "

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private initConstant(I)V
    .locals 1
    .param p1, "bannerType"    # I

    .prologue
    .line 59
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 60
    const-string/jumbo v0, "com.iflytek.cmcc.IFLY_TRANS_BANNER_AD_CACHE_DATA"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyCache:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "P001"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->adslot:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "com.iflytek.cmcc.IFLY_VOICE_TRANS_AD_LAST_SUCCESS_TIME"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyLastRequestTime:Ljava/lang/String;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 64
    const-string/jumbo v0, "com.iflytek.cmcc.IFLY_VOICE_BANNER_AD_CACHE_DATA"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyCache:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "P002"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->adslot:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "com.iflytek.cmcc.IFLY_VOICE_BANNER_AD_LAST_SUCCESS_TIME"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyLastRequestTime:Ljava/lang/String;

    goto :goto_0
.end method

.method private saveBannerData(Ljava/lang/String;)V
    .locals 2
    .param p1, "bannerData"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyCache:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method


# virtual methods
.method public bannerReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IIII)V
    .locals 15
    .param p1, "behaviorType"    # Lcom/iflytek/viafly/ad/business/ADBehaviorType;
    .param p2, "adId"    # Ljava/lang/String;
    .param p3, "placeId"    # Ljava/lang/String;
    .param p4, "platformID"    # I
    .param p6, "downX"    # I
    .param p7, "downY"    # I
    .param p8, "upX"    # I
    .param p9, "upY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/ad/business/ADBehaviorType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;IIII)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p5, "noticeUrlModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

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

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string/jumbo v11, "TestBannerDataManager"

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

    .line 112
    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    .line 113
    .local v6, "len":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 114
    .local v2, "context":Landroid/content/Context;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_0

    .line 115
    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;

    .line 116
    .local v7, "noticeUrlModel":Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;
    const-string/jumbo v11, "TestBannerDataManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reportServer i="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v7, :cond_3

    .line 114
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v7}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 121
    .local v10, "reportUrl":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->getType()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "reportType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 123
    invoke-virtual {v7}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->getReporttime()I

    move-result v3

    .line 124
    .local v3, "delayTime":I
    const-string/jumbo v11, "TestBannerDataManager"

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

    .line 126
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/iflytek/viafly/ad/business/ReportServerService;

    invoke-direct {v8, v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v8, "reportIntent":Landroid/content/Intent;
    const-string/jumbo v11, "reporttime"

    invoke-virtual {v8, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v11, "0"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 130
    const-string/jumbo v11, "TestBannerDataManager"

    const-string/jumbo v12, "reportServer get"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v11, "url"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v11, "type"

    const/16 v12, 0x52

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_4
    :goto_3
    :try_start_1
    invoke-virtual {v2, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 150
    :catch_0
    move-exception v4

    .line 151
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

    .line 155
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "delayTime":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v6    # "len":I
    .end local v7    # "noticeUrlModel":Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;
    .end local v8    # "reportIntent":Landroid/content/Intent;
    .end local v9    # "reportType":Ljava/lang/String;
    .end local v10    # "reportUrl":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 156
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "TestBannerDataManager"

    const-string/jumbo v12, "reportServer exception"

    invoke-static {v11, v12, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 133
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "delayTime":I
    .restart local v5    # "i":I
    .restart local v6    # "len":I
    .restart local v7    # "noticeUrlModel":Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;
    .restart local v8    # "reportIntent":Landroid/content/Intent;
    .restart local v9    # "reportType":Ljava/lang/String;
    .restart local v10    # "reportUrl":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string/jumbo v11, "1"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x7

    move/from16 v0, p4

    if-ne v11, v0, :cond_6

    .line 135
    const-string/jumbo v11, "TestBannerDataManager"

    const-string/jumbo v12, "reportServer post"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string/jumbo v11, "url"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v11, "behaviorType"

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v11, "id"

    move-object/from16 v0, p2

    invoke-virtual {v8, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v11, "platformslotid"

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v11, "type"

    const/16 v12, 0x53

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 141
    :cond_6
    const-string/jumbo v11, "2"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x7

    move/from16 v0, p4

    if-ne v11, v0, :cond_4

    .line 143
    const-string/jumbo v11, "TestBannerDataManager"

    const-string/jumbo v12, "reportServer get new"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string/jumbo v11, "{DOWN_X}"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    move-result-object v10

    .line 145
    const-string/jumbo v11, "url"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v11, "type"

    const/16 v12, 0x52

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method

.method public getBannerADCacheData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyCache:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "cacheResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    invoke-static {v1}, Lcom/iflytek/viafly/ui/view/banner/model/BannerModel;->getBannerData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "tempModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->filterEffectiveBannerADData(ZLjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 175
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 176
    move-object v0, v3

    .line 188
    .end local v1    # "cacheResult":Ljava/lang/String;
    .end local v3    # "tempModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    :goto_0
    return-object v0

    .line 179
    .restart local v1    # "cacheResult":Ljava/lang/String;
    .restart local v3    # "tempModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyLastRequestTime:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lil;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "cacheResult":Ljava/lang/String;
    .end local v3    # "tempModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "TestBannerDataManager"

    const-string/jumbo v5, "getBannerADCacheData exception "

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cacheResult":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyLastRequestTime:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lil;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 15
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, "curResultIsAvailable":Z
    const-string/jumbo v9, "TestBannerDataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "errorCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",requestId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",requestType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/16 v9, 0x51

    move/from16 v0, p5

    if-ne v9, v0, :cond_0

    .line 256
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual/range {p2 .. p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "realResult":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 258
    const-string/jumbo v9, "TestBannerDataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "request realResult="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v6, "json":Lorg/json/JSONObject;
    const-string/jumbo v9, "errorcode"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "errCode":Ljava/lang/String;
    const-string/jumbo v9, "000000"

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 262
    invoke-static {v7}, Lcom/iflytek/viafly/ui/view/banner/model/BannerModel;->getBannerData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_0

    .line 265
    const/4 v9, 0x0

    invoke-direct {p0, v9, v2}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->filterEffectiveBannerADData(ZLjava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 266
    .local v8, "tempBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lez v9, :cond_0

    .line 267
    const/4 v3, 0x1

    .line 268
    move-object v2, v8

    .line 277
    .end local v5    # "errCode":Ljava/lang/String;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "realResult":Ljava/lang/String;
    .end local v8    # "tempBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    :cond_0
    :goto_0
    const-string/jumbo v9, "TestBannerDataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "curResultIsAvailable="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v3, :cond_1

    .line 279
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyLastRequestTime:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v10, v12, v13}, Lil;->a(Ljava/lang/String;J)V

    .line 280
    invoke-static {v2}, Lcom/iflytek/viafly/ui/view/banner/model/BannerModel;->getBannerString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->saveBannerData(Ljava/lang/String;)V

    .line 284
    :goto_1
    iget-object v9, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;

    if-eqz v9, :cond_2

    .line 285
    iget-object v9, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;

    invoke-interface {v9, v2}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;->onBannerADResult(Ljava/util/List;)V

    .line 289
    :goto_2
    return-void

    .line 273
    :catch_0
    move-exception v4

    .line 274
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v9, "TestBannerDataManager"

    const-string/jumbo v10, "onResult exception "

    invoke-static {v9, v10, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 282
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    goto :goto_1

    .line 287
    :cond_2
    const-string/jumbo v9, "TestBannerDataManager"

    const-string/jumbo v10, "mBannerADResultCallback is null!"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public reportUrlsArrayToServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/util/List;IIII)V
    .locals 13
    .param p1, "behaviorType"    # Lcom/iflytek/viafly/ad/business/ADBehaviorType;
    .param p3, "downX"    # I
    .param p4, "downY"    # I
    .param p5, "upX"    # I
    .param p6, "upY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/ad/business/ADBehaviorType;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;",
            ">;IIII)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 102
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v12

    .line 94
    .local v12, "len":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 95
    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;

    .line 96
    .local v10, "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    if-eqz v10, :cond_2

    .line 98
    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getPlatformslotid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getPlatformid()I

    move-result v4

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getNoticeurls()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->bannerReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IIII)V

    .line 94
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public requestNewBannerADData()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->iflyLastRequestTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->checkCurTimeWithLastTime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "TestBannerDataManager"

    const-string/jumbo v1, "last request is near,no need request"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->bannerBizHelper:Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->adslot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;->requestBannerADData(Ljava/lang/String;)J

    goto :goto_0
.end method

.method public setADResultCallback(Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;)V
    .locals 0
    .param p1, "bannerADResultCallback"    # Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->mBannerADResultCallback:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;

    .line 76
    return-void
.end method
