.class public Lth;
.super Ljava/lang/Object;
.source "UserInfoManager.java"


# static fields
.field private static b:Lth;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lcom/iflytek/viafly/account/model/UserInfoCacheManager;

.field private d:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

.field private e:Lcom/iflytek/viafly/account/model/UserInfoParser;

.field private f:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

.field private g:Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;

.field private h:Lcom/iflytek/viafly/account/entity/User;

.field private i:Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;

.field private j:Lyn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lth;->b:Lth;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "UserInfoManager"

    iput-object v0, p0, Lth;->a:Ljava/lang/String;

    .line 381
    new-instance v0, Lth$1;

    invoke-direct {v0, p0}, Lth$1;-><init>(Lth;)V

    iput-object v0, p0, Lth;->j:Lyn;

    .line 66
    new-instance v0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lth;->c:Lcom/iflytek/viafly/account/model/UserInfoCacheManager;

    .line 67
    new-instance v0, Lcom/iflytek/viafly/account/model/UserInfoParser;

    invoke-direct {v0}, Lcom/iflytek/viafly/account/model/UserInfoParser;-><init>()V

    iput-object v0, p0, Lth;->e:Lcom/iflytek/viafly/account/model/UserInfoParser;

    .line 68
    return-void
.end method

.method public static a()Lth;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lth;->b:Lth;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lth;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lth;->b:Lth;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lth;

    invoke-direct {v0}, Lth;-><init>()V

    sput-object v0, Lth;->b:Lth;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Lth;->b:Lth;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 13
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 396
    const-string/jumbo v10, "UserInfoManager"

    const-string/jumbo v11, "handleUserInfoResult "

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lth;->c()Z

    move-result v2

    .line 398
    .local v2, "isLogin":Z
    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 399
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "response":Ljava/lang/String;
    const-string/jumbo v10, "UserInfoManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onResult response "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 402
    const-string/jumbo v10, "UserInfoManager"

    const-string/jumbo v11, "handleUserInfoResult response is not null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "error_code"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "result_code":Ljava/lang/String;
    const-string/jumbo v10, "status"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v10, "000000"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "success"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 409
    const-string/jumbo v10, "UserInfoManager"

    const-string/jumbo v11, "handleUserInfoResult errorCode is right"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string/jumbo v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, "userResult":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 412
    const-string/jumbo v10, "UserInfoManager"

    const-string/jumbo v11, "handleUserInfoResult result is not null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v10, p0, Lth;->e:Lcom/iflytek/viafly/account/model/UserInfoParser;

    invoke-virtual {v10, v9}, Lcom/iflytek/viafly/account/model/UserInfoParser;->parserUserInfo(Ljava/lang/String;)Lcom/iflytek/viafly/account/entity/User;

    move-result-object v8

    .line 415
    .local v8, "user":Lcom/iflytek/viafly/account/entity/User;
    const-string/jumbo v10, "UserInfoManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleUserInfoResult parserUserInfo user is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v8, :cond_3

    .line 418
    new-instance v7, Lcom/iflytek/viafly/account/entity/UserToken;

    invoke-direct {v7}, Lcom/iflytek/viafly/account/entity/UserToken;-><init>()V

    .line 420
    .local v7, "token":Lcom/iflytek/viafly/account/entity/UserToken;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v10

    sget-object v11, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v10, v11}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    .line 421
    .local v1, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v1, :cond_0

    .line 423
    const-string/jumbo v10, "UserInfoManager"

    const-string/jumbo v11, "handleUserInfoResult token info is not null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/account/entity/UserToken;->setToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getInvalidTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/account/entity/UserToken;->setTokenExpireTime(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenType()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/account/entity/UserToken;->setTokenSource(I)V

    .line 428
    :cond_0
    invoke-virtual {v8, v7}, Lcom/iflytek/viafly/account/entity/User;->setToken(Lcom/iflytek/viafly/account/entity/UserToken;)V

    .line 430
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/account/entity/User;->setUserLoginState(I)V

    .line 432
    iget-object v10, p0, Lth;->g:Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;

    if-eqz v10, :cond_1

    .line 433
    const-string/jumbo v10, "UserInfoManager"

    const-string/jumbo v11, "handleUserInfoResult onSuccess "

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v10, p0, Lth;->g:Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;

    invoke-interface {v10, v8}, Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;->onSuccess(Lcom/iflytek/viafly/account/entity/User;)V

    .line 438
    :cond_1
    invoke-static {}, Lmz;->m()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lth;->a()Lth;

    move-result-object v11

    invoke-virtual {v11}, Lth;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 440
    invoke-static {}, Lth;->a()Lth;

    move-result-object v10

    invoke-virtual {v10}, Lth;->m()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/account/entity/User;->setVoicePrintPasswordSetted(Z)V

    .line 444
    :cond_2
    invoke-virtual {p0, v8}, Lth;->a(Lcom/iflytek/viafly/account/entity/User;)V

    .line 446
    invoke-direct {p0, v2}, Lth;->a(Z)V

    .line 463
    .end local v1    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "resultJson":Lorg/json/JSONObject;
    .end local v5    # "result_code":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    .end local v7    # "token":Lcom/iflytek/viafly/account/entity/UserToken;
    .end local v8    # "user":Lcom/iflytek/viafly/account/entity/User;
    .end local v9    # "userResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 449
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v4    # "resultJson":Lorg/json/JSONObject;
    .restart local v5    # "result_code":Ljava/lang/String;
    .restart local v6    # "status":Ljava/lang/String;
    .restart local v8    # "user":Lcom/iflytek/viafly/account/entity/User;
    .restart local v9    # "userResult":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "100001"

    invoke-direct {p0, v2, v10}, Lth;->a(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    .end local v4    # "resultJson":Lorg/json/JSONObject;
    .end local v5    # "result_code":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    .end local v8    # "user":Lcom/iflytek/viafly/account/entity/User;
    .end local v9    # "userResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "UserInfoManager"

    const-string/jumbo v11, "onResult Exception"

    invoke-static {v10, v11, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "response":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lth;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 453
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v4    # "resultJson":Lorg/json/JSONObject;
    .restart local v5    # "result_code":Ljava/lang/String;
    .restart local v6    # "status":Ljava/lang/String;
    .restart local v9    # "userResult":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v10, "100002"

    invoke-direct {p0, v2, v10}, Lth;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 524
    const-string/jumbo v0, "UserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateResultError errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lth;->i:Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lth;->i:Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;->onError(Ljava/lang/String;)V

    .line 528
    :cond_0
    return-void
.end method

.method static synthetic a(Lth;ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 0
    .param p0, "x0"    # Lth;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lth;->a(ILcom/iflytek/yd/business/OperationInfo;)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isLogin"    # Z

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    const-string/jumbo v0, "UserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pre login state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lti;

    const-string/jumbo v2, "UserRealLogin"

    invoke-direct {v1, v2}, Lti;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 482
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lti;

    const-string/jumbo v2, "UserLoginEvent"

    invoke-direct {v1, v2}, Lti;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 483
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isLogin"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 466
    const-string/jumbo v0, "UserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestResultError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lth;->g:Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lth;->g:Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;

    invoke-interface {v0, p2}, Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;->onError(Ljava/lang/String;)V

    .line 470
    :cond_0
    if-nez p1, :cond_1

    .line 472
    const-string/jumbo v0, "UserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pre login state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lti;

    const-string/jumbo v2, "UserLoginFail"

    invoke-direct {v1, v2}, Lti;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 475
    :cond_1
    return-void
.end method

.method private b(ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 490
    const-string/jumbo v5, "UserInfoManager"

    const-string/jumbo v6, "handleUserInfoUpdateResult "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 492
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "response":Ljava/lang/String;
    const-string/jumbo v5, "UserInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 495
    const-string/jumbo v5, "UserInfoManager"

    const-string/jumbo v6, "handleUserInfoUpdateResult response is not null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 499
    .local v2, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 504
    const-string/jumbo v5, "UserInfoManager"

    const-string/jumbo v6, "handleUserInfoUpdateResult udpate success"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v5, p0, Lth;->i:Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;

    if-eqz v5, :cond_0

    .line 506
    iget-object v5, p0, Lth;->i:Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;

    invoke-interface {v5}, Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;->onSuccess()V

    .line 521
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 509
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultJson":Lorg/json/JSONObject;
    .restart local v3    # "result_code":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lth;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "UserInfoManager"

    const-string/jumbo v6, "onResult Exception"

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lth;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lth;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    .end local v1    # "response":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lth;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lth;ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 0
    .param p0, "x0"    # Lth;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lth;->b(ILcom/iflytek/yd/business/OperationInfo;)V

    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 486
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lti;

    const-string/jumbo v2, "UserLogoutEvent"

    invoke-direct {v1, v2}, Lti;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 487
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/account/entity/User;)V
    .locals 4
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    .line 139
    const-string/jumbo v1, "UserInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveUserInfo user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, -0x1

    iget-object v2, p0, Lth;->c:Lcom/iflytek/viafly/account/model/UserInfoCacheManager;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->saveUserInfo(Lcom/iflytek/viafly/account/entity/User;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->clone()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v1

    iput-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    .line 145
    const-string/jumbo v1, "UserInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveUserInfo mCurrentUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CloneNotSupportedException error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v1, "UserInfoManager"

    const-string/jumbo v2, "saveUserInfo fail "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/account/entity/User;Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;)V
    .locals 4
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;
    .param p2, "updateResultListener"    # Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;

    .prologue
    .line 175
    const-string/jumbo v0, "UserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportUserInfo user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-object p2, p0, Lth;->i:Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;

    .line 182
    iget-object v0, p0, Lth;->f:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "http://ydclient.voicecloud.cn/vaclient/do?c=1121"

    iget-object v3, p0, Lth;->j:Lyn;

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lth;->f:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    .line 188
    :cond_1
    iget-object v0, p0, Lth;->f:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->updateUserInfoRequest(Lcom/iflytek/viafly/account/entity/User;)J

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "requestResultListener"    # Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string/jumbo v0, "UserInfoManager"

    const-string/jumbo v1, "requestUserInfo  "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Lth;->g:Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;

    .line 162
    iget-object v0, p0, Lth;->d:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "http://ydclient.voicecloud.cn/vaclient/do?c=1122"

    iget-object v3, p0, Lth;->j:Lyn;

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lth;->d:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    .line 168
    :cond_0
    iget-object v0, p0, Lth;->d:Lcom/iflytek/viafly/account/model/UserInfoBizHelper;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->sendRequest(Ljava/lang/String;)J

    .line 169
    return-void
.end method

.method public b()Lcom/iflytek/viafly/account/entity/User;
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/User;->clone()Lcom/iflytek/viafly/account/entity/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CloneNotSupportedException error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lth;->c:Lcom/iflytek/viafly/account/model/UserInfoCacheManager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->getDefaultUserInfo()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v1

    iput-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    .line 101
    :try_start_1
    iget-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lth;->h:Lcom/iflytek/viafly/account/entity/User;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/User;->clone()Lcom/iflytek/viafly/account/entity/User;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CloneNotSupportedException error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 196
    const-string/jumbo v3, "UserInfoManager"

    const-string/jumbo v4, "isUserLogin "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "isLogin":Z
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v1

    .line 199
    .local v1, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/User;->getUserLoginState()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 210
    const-string/jumbo v2, "UserInfoManager"

    const-string/jumbo v3, "isUserLogin out"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "isManualLogout":Z
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v1

    .line 213
    .local v1, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/User;->getUserLoginState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "isComplete":Z
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v1

    .line 241
    .local v1, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/UserProfile;->isUserProfileComplete()Z

    move-result v0

    .line 244
    :cond_0
    return v0
.end method

.method public f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 251
    const-string/jumbo v1, "UserInfoManager"

    const-string/jumbo v2, "logout by auto"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Laoe;->a()Laoe;

    move-result-object v1

    const-string/jumbo v2, "user_quit"

    invoke-static {}, Laoe;->a()Laoe;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Laoe;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laoe;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 255
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 256
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setUserLoginState(I)V

    .line 258
    invoke-virtual {p0, v0}, Lth;->a(Lcom/iflytek/viafly/account/entity/User;)V

    .line 261
    :cond_0
    invoke-static {}, Lmz;->e()V

    .line 262
    invoke-static {}, Laod;->a()Laod;

    move-result-object v1

    invoke-virtual {v1}, Laod;->i()V

    .line 263
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v1

    invoke-virtual {v1}, Lanv;->j()V

    .line 264
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->l()V

    .line 266
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_COMPLETE_INFO_WINDOW"

    invoke-virtual {v1, v2, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 268
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_NEED_REFRESH_USERINFO"

    invoke-virtual {v1, v2, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 270
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_BOOKTOKEN_WINDOW_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lil;->a(Ljava/lang/String;J)V

    .line 271
    invoke-direct {p0}, Lth;->n()V

    .line 272
    return-void
.end method

.method public g()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 278
    const-string/jumbo v1, "UserInfoManager"

    const-string/jumbo v2, "logout by hand"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Laoe;->a()Laoe;

    move-result-object v1

    const-string/jumbo v2, "user_quit"

    invoke-static {}, Laoe;->a()Laoe;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Laoe;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laoe;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 282
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 283
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    .line 284
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setUserLoginState(I)V

    .line 285
    invoke-virtual {p0, v0}, Lth;->a(Lcom/iflytek/viafly/account/entity/User;)V

    .line 287
    :cond_0
    invoke-static {}, Laod;->a()Laod;

    move-result-object v1

    invoke-virtual {v1}, Laod;->i()V

    .line 288
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v1

    invoke-virtual {v1}, Lanv;->j()V

    .line 289
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->l()V

    .line 291
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_COMPLETE_INFO_WINDOW"

    invoke-virtual {v1, v2, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 293
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_NEED_REFRESH_USERINFO"

    invoke-virtual {v1, v2, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 295
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_BOOKTOKEN_WINDOW_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lil;->a(Ljava/lang/String;J)V

    .line 296
    invoke-direct {p0}, Lth;->n()V

    .line 297
    return-void
.end method

.method public h()Lcom/iflytek/viafly/account/entity/UserToken;
    .locals 4

    .prologue
    .line 304
    const-string/jumbo v1, "UserInfoManager"

    const-string/jumbo v2, "getUserToken "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lth;->c:Lcom/iflytek/viafly/account/model/UserInfoCacheManager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->getDefaultUserInfo()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 312
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    const-string/jumbo v1, "UserInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserToken user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getToken()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    const-string/jumbo v1, "UserInfoManager"

    const-string/jumbo v2, "getUserNumber "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 323
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    const-string/jumbo v1, "UserInfoManager"

    const-string/jumbo v2, "getUserId "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 333
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    const-string/jumbo v2, "UserInfoManager"

    const-string/jumbo v3, "getUserLocalPortraitPath "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 343
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v1

    .line 345
    .local v1, "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->getPortraitLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 349
    .end local v1    # "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .prologue
    .line 357
    const-string/jumbo v2, "UserInfoManager"

    const-string/jumbo v3, "getUserLocalPortraitPath "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 359
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v1

    .line 361
    .local v1, "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->getPortraitUrl()Ljava/lang/String;

    move-result-object v2

    .line 365
    .end local v1    # "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 372
    const-string/jumbo v1, "UserInfoManager"

    const-string/jumbo v2, "isVoicePrintSetted "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 374
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->isVoicePrintPasswordSetted()Z

    move-result v1

    .line 377
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
