.class Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;
.super Ljava/lang/Object;
.source "DetectHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

.field private mContext:Landroid/content/Context;

.field private mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

.field mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

.field private mIsDoubleCard:Z

.field mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .line 52
    new-instance v0, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;

    new-instance v2, Lcom/iflytek/common/adaptation/AdaptationDbHelper;

    invoke-direct {v2, p1}, Lcom/iflytek/common/adaptation/AdaptationDbHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 53
    .local v0, "mmsAndCallDaoImp":Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;
    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;->matchByModel()Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .local v1, "sdk":I
    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;->matchByCpu()Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->readCacheAdapter()V

    .line 64
    return-void
.end method

.method private reflectSimInfo()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    .locals 8

    .prologue
    .line 421
    const/4 v2, 0x0

    .line 423
    .local v2, "simInfoAdapter":Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.iflytek.common.adaptation.siminfo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 425
    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getSimInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    .line 423
    invoke-static {v3, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-object v2

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public detectCursorModeName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 373
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getColumeName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 374
    sget-object v4, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCursorModeColumnName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getColumeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getColumeName()Ljava/lang/String;

    move-result-object v1

    .line 388
    :goto_0
    return-object v1

    .line 377
    :cond_0
    const/4 v1, 0x0

    .line 378
    .local v1, "cursorModeColumnName":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getCommonOutBoxFlags()Ljava/util/ArrayList;

    move-result-object v3

    .line 379
    .local v3, "outBoxDualFlags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/iflytek/common/adaptation/detect/DetectorConstant;->INBOX_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->getDataBaseColumn(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 382
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cursorModeColumnName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 381
    .restart local v1    # "cursorModeColumnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    :cond_2
    sget-object v4, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCursorModeColumnName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v4, v1}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->setColumeName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public detectDataMmsAdaptor(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    .locals 12
    .param p1, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .prologue
    .line 306
    const/4 v5, 0x0

    .line 307
    .local v5, "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    iget-boolean v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    if-eqz v7, :cond_0

    .line 308
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    sget-object v8, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_LOCAL:Lcom/iflytek/common/adaptation/detect/DetectType;

    if-ne v7, v8, :cond_0

    .line 310
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.mms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 311
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getMms()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v11, v9, v10

    .line 310
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 321
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getDataMsgAdapter()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 323
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.mms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    .line 324
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getDataMsgAdapter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v11, v9, v10

    .line 323
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-object v5, v0

    .line 327
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "use cache dataMsgAdapter"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    .line 335
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getDataMsgAdapters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 336
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getDataMsgAdapters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    .local v1, "adapter":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 339
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com.iflytek.common.adaptation.mms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 341
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v10, v8, v9

    .line 342
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 344
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    .line 345
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 347
    .local v6, "reflectMmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->detectSendDataMessage()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-eqz v8, :cond_2

    .line 348
    move-object v5, v6

    .line 360
    .end local v1    # "adapter":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "reflectMmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :cond_3
    if-nez v5, :cond_4

    .line 361
    new-instance v5, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    .end local v5    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, p1}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 363
    .restart local v5    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :cond_4
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSendDataMsgAdapter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 364
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 363
    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-object v5

    .line 314
    :catch_0
    move-exception v4

    .line 315
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 328
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 329
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 352
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "adapter":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 353
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "detectDataMmsAdaptor"

    invoke-static {v8, v9, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public detectOutBoxDualFlags()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getOutBoxFlags()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getOutBoxFlags()Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    :cond_0
    :goto_0
    return-object v1

    .line 145
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "flags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getCommonOutBoxFlags()Ljava/util/ArrayList;

    move-result-object v3

    .line 150
    .local v3, "outBoxDualFlags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/iflytek/common/adaptation/detect/DetectorConstant;->OUTBOX_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->getDataBaseColumn(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 152
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_3
    const-string/jumbo v4, "sim_imsi"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    const-string/jumbo v4, "sim_imsi"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_4
    iget-object v4, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v4, v1}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->setOutBoxFlags(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public detectSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    .locals 12

    .prologue
    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, "simInfoAdapter":Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    if-eqz v7, :cond_0

    .line 74
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.siminfo."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 76
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getSimInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    .line 74
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-object v6, v0

    .line 79
    sget-object v7, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_LOCAL:Lcom/iflytek/common/adaptation/detect/DetectType;

    iput-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    .line 80
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 88
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getSimInfoAdapter()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.siminfo."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    .line 91
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getSimInfoAdapter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    .line 89
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-object v6, v0

    .line 94
    sget-object v7, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_AUTO:Lcom/iflytek/common/adaptation/detect/DetectType;

    iput-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    .line 95
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    .line 96
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "use cache siminfo"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :cond_1
    :goto_1
    if-nez v6, :cond_3

    .line 104
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getSimInfoAdapters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 105
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getSimInfoAdapters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "adapter":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 108
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com.iflytek.common.adaptation.siminfo."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 110
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 111
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 112
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    .line 113
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .line 114
    .local v5, "reflectSimInfoAdapter":Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    invoke-virtual {v5}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->detect()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    sget-object v8, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_AUTO:Lcom/iflytek/common/adaptation/detect/DetectType;

    iput-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    .line 116
    move-object v6, v5

    .line 117
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    .line 118
    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->setSimInfoAdapter(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    .end local v1    # "adapter":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "reflectSimInfoAdapter":Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    :cond_3
    if-nez v6, :cond_4

    .line 130
    new-instance v6, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;

    .end local v6    # "simInfoAdapter":Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 131
    .restart local v6    # "simInfoAdapter":Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_DEFAULT:Lcom/iflytek/common/adaptation/detect/DetectType;

    iput-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    .line 133
    :cond_4
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simInfoAdapter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v6

    .line 81
    :catch_0
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 98
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 99
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 121
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "adapter":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 122
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "detectSimInfoAdapter"

    invoke-static {v8, v9, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public detectTextMmsAdaptor(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    .locals 12
    .param p1, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .prologue
    .line 239
    const/4 v5, 0x0

    .line 240
    .local v5, "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    iget-boolean v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    if-eqz v7, :cond_3

    .line 241
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    sget-object v8, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_LOCAL:Lcom/iflytek/common/adaptation/detect/DetectType;

    if-ne v7, v8, :cond_0

    .line 243
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.mms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 244
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getMms()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v11, v9, v10

    .line 243
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 254
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getTextMsgAdapter()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.mms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    .line 256
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getTextMsgAdapter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v11, v9, v10

    .line 255
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-object v5, v0

    .line 261
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "use cache textMsgAdapter"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    .line 269
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getTextMsgAdapters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, "adapter":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 272
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com.iflytek.common.adaptation.mms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 274
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v10, v8, v9

    .line 275
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 277
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    .line 278
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 280
    .local v6, "reflectMmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->detectSendTextMessage()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 281
    move-object v5, v6

    .line 282
    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->setTextMsgAdapter(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    .end local v1    # "adapter":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "reflectMmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :cond_3
    if-nez v5, :cond_4

    .line 294
    new-instance v5, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    .end local v5    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, p1}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 296
    .restart local v5    # "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :cond_4
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSendTextMsgAdapter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v5

    .line 247
    :catch_0
    move-exception v4

    .line 248
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 263
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 264
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 286
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "adapter":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 287
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "detectTextMmsAdaptor"

    invoke-static {v8, v9, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public detecteCallAdapter(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    .locals 12
    .param p1, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, "callAdapter":Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    iget-boolean v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    if-eqz v7, :cond_3

    .line 171
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    sget-object v8, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_LOCAL:Lcom/iflytek/common/adaptation/detect/DetectType;

    if-ne v7, v8, :cond_0

    .line 173
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.call."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mMmsAndCallInfo:Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 174
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getCall()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v11, v9, v10

    .line 173
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 184
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getCallAdapter()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.common.adaptation.call."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    .line 186
    invoke-virtual {v8}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->getCallAdapter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v11, v9, v10

    .line 185
    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-object v2, v0

    .line 189
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "use cache callAdapter"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 198
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getCallAdapters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 199
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mInfoContainer:Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-virtual {v7}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->getCallAdapters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, "adapter":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 202
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com.iflytek.common.adaptation.call."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 204
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    aput-object v10, v8, v9

    .line 205
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 207
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    .line 208
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    .line 210
    .local v6, "reflectCallAdapter":Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->detect()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 211
    move-object v2, v6

    .line 212
    iget-object v8, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->setCallAdapter(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    .end local v1    # "adapter":Ljava/lang/String;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "reflectCallAdapter":Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    :cond_3
    if-nez v2, :cond_4

    .line 226
    new-instance v2, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;

    .end local v2    # "callAdapter":Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7, p1}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 228
    .restart local v2    # "callAdapter":Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    :cond_4
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mCallAdapter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v2

    .line 177
    :catch_0
    move-exception v5

    .line 178
    .local v5, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 191
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 192
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 216
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "adapter":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 217
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "detecteCallAdapter"

    invoke-static {v8, v9, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    return-object v0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    return v0
.end method

.method public readCacheAdapter()V
    .locals 4

    .prologue
    .line 412
    sget-object v1, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IflySetting.getInstance() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/adaptation/detect/DetectorConstant;->CACHE_ADAPTERS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    .local v0, "object":Ljava/lang/Object;
    check-cast v0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    .end local v0    # "object":Ljava/lang/Object;
    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    .line 415
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    if-nez v1, :cond_0

    .line 416
    new-instance v1, Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-direct {v1}, Lcom/iflytek/common/adaptation/detect/CacheAdapters;-><init>()V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    .line 418
    :cond_0
    return-void
.end method

.method public saveCacheAdapter()V
    .locals 3

    .prologue
    .line 408
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/detect/DetectorConstant;->CACHE_ADAPTERS:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mCacheAdapters:Lcom/iflytek/common/adaptation/detect/CacheAdapters;

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method public setDetectType(Lcom/iflytek/common/adaptation/detect/DetectType;)V
    .locals 0
    .param p1, "detectType"    # Lcom/iflytek/common/adaptation/detect/DetectType;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mDetectType:Lcom/iflytek/common/adaptation/detect/DetectType;

    .line 401
    return-void
.end method

.method public setDoubleCard(Z)V
    .locals 0
    .param p1, "doubleCard"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->mIsDoubleCard:Z

    .line 405
    return-void
.end method
