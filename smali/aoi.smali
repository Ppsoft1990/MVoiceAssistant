.class public Laoi;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"


# static fields
.field private static h:Laoi;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private c:Lanz;

.field private d:Lanz;

.field private e:Laoa;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/Context;

.field private i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Z

.field private n:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

.field private o:Lyn;

.field private p:Lyn;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "MiguUiLoginHelper"

    iput-object v0, p0, Laoi;->a:Ljava/lang/String;

    .line 63
    iput v1, p0, Laoi;->j:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Laoi;->k:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Laoi;->l:I

    .line 66
    iput-boolean v1, p0, Laoi;->m:Z

    .line 100
    new-instance v0, Laoi$1;

    invoke-direct {v0, p0}, Laoi$1;-><init>(Laoi;)V

    iput-object v0, p0, Laoi;->o:Lyn;

    .line 484
    new-instance v0, Laoi$9;

    invoke-direct {v0, p0}, Laoi$9;-><init>(Laoi;)V

    iput-object v0, p0, Laoi;->p:Lyn;

    .line 83
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laoi;->f:Landroid/content/Context;

    .line 84
    new-instance v0, Laoa;

    iget-object v1, p0, Laoi;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Laoa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laoi;->e:Laoa;

    .line 85
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Laoi;->e()V

    .line 87
    return-void
.end method

.method static synthetic a(Laoi;I)I
    .locals 0
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Laoi;->i:I

    return p1
.end method

.method static synthetic a(Laoi;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Laoi;->g:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Laoi;Lanz;)Lanz;
    .locals 0
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # Lanz;

    .prologue
    .line 52
    iput-object p1, p0, Laoi;->d:Lanz;

    return-object p1
.end method

.method public static a()Laoi;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Laoi;->h:Laoi;

    if-nez v0, :cond_1

    .line 73
    const-class v1, Laoi;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Laoi;->h:Laoi;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Laoi;

    invoke-direct {v0}, Laoi;-><init>()V

    sput-object v0, Laoi;->h:Laoi;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Laoi;->h:Laoi;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Laoi;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
    .locals 1
    .param p0, "x0"    # Laoi;

    .prologue
    .line 52
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    return-object v0
.end method

.method static synthetic a(Laoi;Lorg/json/JSONObject;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 1
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laoi;->a(Lorg/json/JSONObject;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 11
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 158
    const-string/jumbo v10, "token"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "token":Ljava/lang/String;
    const-string/jumbo v10, "tokenexpire"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "tokenexpire":Ljava/lang/String;
    const-string/jumbo v10, "operator"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "operator":Ljava/lang/String;
    const-string/jumbo v10, "logintype"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 162
    .local v4, "loginType":I
    const-string/jumbo v10, "loginid"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "loginId":Ljava/lang/String;
    const/4 v10, 0x3

    if-ne v10, v4, :cond_1

    .line 165
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 171
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 172
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v0, v7}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v8}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 174
    if-nez v4, :cond_3

    .line 175
    const/16 v10, 0x67

    invoke-virtual {v0, v10}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V

    .line 179
    :goto_1
    invoke-virtual {v0, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setLoginType(I)V

    .line 180
    invoke-virtual {v0, v5}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setOperateType(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v10, "caller"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "caller":Ljava/lang/String;
    const-string/jumbo v10, "currenttime"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "currenttime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 184
    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobile(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v2}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobileKey(Ljava/lang/String;)V

    .line 188
    :cond_2
    const-string/jumbo v10, "passid"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "passid":Ljava/lang/String;
    const-string/jumbo v10, "usessionid"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "usessionid":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setPassid(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setUsessionid(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setLoginId(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v1    # "caller":Ljava/lang/String;
    .end local v2    # "currenttime":Ljava/lang/String;
    .end local v6    # "passid":Ljava/lang/String;
    .end local v9    # "usessionid":Ljava/lang/String;
    :cond_3
    const/16 v10, 0x69

    invoke-virtual {v0, v10}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V

    goto :goto_1
.end method

.method static synthetic a(Laoi;Z)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laoi;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lorg/json/JSONObject;
    .locals 4
    .param p1, "statue"    # Z

    .prologue
    .line 325
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 327
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "MiguUiLoginHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MiguUiLoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendErrorBroadcast | errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Laoi;->e:Laoa;

    if-eqz v0, :cond_0

    .line 347
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "sendErrorBroadcast"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Laoi;->e:Laoa;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1}, Laoa;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_0
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Laoi;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laoi;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "tokenString"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string/jumbo v0, "MiguUiLoginHelper"

    invoke-static {v0, p1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Laoi;->c:Lanz;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lanz;

    iget-object v1, p0, Laoi;->f:Landroid/content/Context;

    iget-object v2, p0, Laoi;->o:Lyn;

    invoke-direct {v0, v1, v2}, Lanz;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Laoi;->c:Lanz;

    .line 341
    :cond_0
    iget-object v0, p0, Laoi;->c:Lanz;

    const-string/jumbo v1, "0"

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lanz;->a(Ljava/lang/String;Ljava/lang/String;I)J

    .line 342
    return-void
.end method

.method static synthetic b(Laoi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laoi;

    .prologue
    .line 52
    iget-object v0, p0, Laoi;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Laoi;I)V
    .locals 0
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laoi;->a(I)V

    return-void
.end method

.method static synthetic b(Laoi;Z)Z
    .locals 0
    .param p0, "x0"    # Laoi;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Laoi;->m:Z

    return p1
.end method

.method static synthetic c(Laoi;)Lanz;
    .locals 1
    .param p0, "x0"    # Laoi;

    .prologue
    .line 52
    iget-object v0, p0, Laoi;->d:Lanz;

    return-object v0
.end method

.method static synthetic d(Laoi;)Lyn;
    .locals 1
    .param p0, "x0"    # Laoi;

    .prologue
    .line 52
    iget-object v0, p0, Laoi;->p:Lyn;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Laoi;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    .line 202
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setLoginAccoutType(I)V

    .line 204
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const v1, 0x7f02035d

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setLogo(I)V

    .line 206
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const-string/jumbo v1, "http://clientwap.voicecloud.cn/lingxi/a/treaty.htm"

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setUserProtocol(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setLoginCancelEnable(Z)V

    .line 213
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v1, Laoi$2;

    invoke-direct {v1, p0}, Laoi$2;-><init>(Laoi;)V

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setTokenProcess(Lcom/cmcc/migusso/sdk/common/TokenProcess;)V

    .line 245
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v1, Laoi$3;

    invoke-direct {v1, p0}, Laoi$3;-><init>(Laoi;)V

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setLoginPageCancelBack(Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    .line 254
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const/4 v1, 0x2

    const-string/jumbo v2, "20401801"

    const/4 v3, 0x0

    new-instance v4, Laoi$4;

    invoke-direct {v4, p0}, Laoi$4;-><init>(Laoi;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setThirdAuthn(ILjava/lang/String;ZLcom/cmcc/migusso/sdk/common/ThirdEventListener;)V

    .line 284
    sget-boolean v0, Laoj;->a:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Laoi;->f()V

    .line 287
    :cond_0
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 294
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const-string/jumbo v1, "20401801"

    const-string/jumbo v2, "985E24BC7CE25174"

    const-string/jumbo v4, "242ce457f28cc"

    const-string/jumbo v5, "4ce8b1d5d642aaede86ffcd59c4c0496"

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setThirdLoginConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v6, "weibo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "AppKey"

    const-string/jumbo v1, "3742750447"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v0, "AppSecret"

    const-string/jumbo v1, "4a99f4ce28f3d17cf4af3a4fde8edacc"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v0, "RedirectUrl"

    const-string/jumbo v1, "http://lingxi.voicecloud.cn"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v0, "Enable"

    const-string/jumbo v1, "true"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    invoke-interface {v0, v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setAppInfoWeibo(Ljava/util/HashMap;)V

    .line 303
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const/4 v1, 0x4

    const-string/jumbo v2, "20401801"

    new-instance v4, Laoi$5;

    invoke-direct {v4, p0}, Laoi$5;-><init>(Laoi;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->setThirdAuthn(ILjava/lang/String;ZLcom/cmcc/migusso/sdk/common/ThirdEventListener;)V

    .line 321
    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laoi;->e:Laoa;

    if-eqz v0, :cond_0

    .line 354
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "sendResultBroadcast"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Laoi;->e:Laoa;

    invoke-virtual {v0, p1, p2}, Laoa;->a(ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 8

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    invoke-interface {v0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->finishAllMiguActivitys()V

    .line 93
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const-string/jumbo v1, "20401801"

    const-string/jumbo v2, "985E24BC7CE25174"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()V
    .locals 11

    .prologue
    .line 424
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "startBindActivity"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v10

    .line 426
    .local v10, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v10}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginId()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "loginId":Ljava/lang/String;
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const-string/jumbo v1, "20401801"

    const-string/jumbo v2, "985E24BC7CE25174"

    const-string/jumbo v4, "WEIBO"

    const-string/jumbo v5, "MIGU"

    const-string/jumbo v6, "OPTIONAL"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    new-instance v9, Laoi$7;

    invoke-direct {v9, p0}, Laoi$7;-><init>(Laoi;)V

    invoke-interface/range {v0 .. v9}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->startBindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/JSONCallBack;)V

    .line 447
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    .line 451
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "get token by loginId"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_NEED_REFRESH_USERINFO"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 455
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v6

    .line 456
    .local v6, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {v6}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginId()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "loginId":Ljava/lang/String;
    iget-object v0, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const-string/jumbo v1, "20401801"

    const-string/jumbo v2, "985E24BC7CE25174"

    const-string/jumbo v4, "default"

    new-instance v5, Laoi$8;

    invoke-direct {v5, p0}, Laoi$8;-><init>(Laoi;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    .line 481
    .end local v3    # "loginId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEvent(Laol;)V
    .locals 4
    .param p1, "event"    # Laol;

    .prologue
    const/4 v3, 0x0

    .line 361
    if-nez p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p1}, Laol;->a()Z

    move-result v0

    .line 365
    .local v0, "isShow":Z
    if-eqz v0, :cond_2

    .line 366
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    iget-object v2, p0, Laoi;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laoi;->n:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    .line 367
    iget-object v1, p0, Laoi;->n:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 368
    iget-object v1, p0, Laoi;->n:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->setCancelable(Z)V

    .line 369
    iget-object v1, p0, Laoi;->n:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->show()V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v1, p0, Laoi;->n:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Laoi;->n:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 5
    .param p1, "event"    # Lti;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 379
    if-nez p1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "eventType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    :try_start_0
    const-string/jumbo v2, "UserLoginEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    iget v2, p0, Laoi;->i:I

    if-ne v3, v2, :cond_2

    .line 390
    iget-object v2, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Laoi;->a(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->notifyLoginResult(Lorg/json/JSONObject;)V

    .line 391
    const/4 v2, 0x0

    iput v2, p0, Laoi;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MiguUiLoginHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v2, p0, Laoi;->i:I

    if-ne v4, v2, :cond_0

    .line 393
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Laol;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Laol;-><init>(Z)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 394
    iget-object v2, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    invoke-interface {v2}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->finishAllMiguActivitys()V

    .line 395
    const/4 v2, 0x0

    iput-boolean v2, p0, Laoi;->m:Z

    .line 396
    const/4 v2, 0x0

    iput v2, p0, Laoi;->i:I

    goto :goto_0

    .line 398
    :cond_3
    const-string/jumbo v2, "UserLoginFail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    iget v2, p0, Laoi;->i:I

    if-ne v3, v2, :cond_4

    .line 401
    iget-object v2, p0, Laoi;->b:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Laoi;->a(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->notifyLoginResult(Lorg/json/JSONObject;)V

    .line 402
    const/4 v2, 0x0

    iput v2, p0, Laoi;->i:I

    goto :goto_0

    .line 403
    :cond_4
    iget v2, p0, Laoi;->i:I

    if-ne v4, v2, :cond_0

    .line 404
    iget-boolean v2, p0, Laoi;->m:Z

    if-eqz v2, :cond_5

    .line 405
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Laol;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Laol;-><init>(Z)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 406
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Laoi$6;

    invoke-direct {v3, p0}, Laoi$6;-><init>(Laoi;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    const/4 v2, 0x0

    iput-boolean v2, p0, Laoi;->m:Z

    .line 414
    :cond_5
    const/4 v2, 0x0

    iput v2, p0, Laoi;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
