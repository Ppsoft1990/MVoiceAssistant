.class public Lcom/iflytek/common/cmccauth/AuthenticationService;
.super Landroid/app/Service;
.source "AuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/cmccauth/AuthenticationService$b;,
        Lcom/iflytek/common/cmccauth/AuthenticationService$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/Timer;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/iflytek/common/adaptation/entity/SimCard;

.field private k:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field private l:Ljava/lang/Object;

.field private m:Lcom/iflytek/yd/business/AppConfig;

.field private n:Lhl;

.field private o:Lnc;

.field private p:Lcom/iflytek/common/cmccauth/AuthenticationService$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->a:Landroid/os/HandlerThread;

    .line 65
    iput-boolean v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->d:Z

    .line 70
    iput-boolean v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->e:Z

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->l:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;)Lcom/iflytek/common/cmccauth/AuthenticationService$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->f:Ljava/util/Timer;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 216
    iput-object p0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    .line 217
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->n:Lhl;

    .line 218
    new-instance v0, Lnc;

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->o:Lnc;

    .line 219
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Authentication_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->a:Landroid/os/HandlerThread;

    .line 220
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 221
    new-instance v0, Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;-><init>(Lcom/iflytek/common/cmccauth/AuthenticationService;Landroid/os/Looper;Lcom/iflytek/common/cmccauth/AuthenticationService;)V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    .line 222
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 223
    return-void
.end method

.method private a(IJ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "delayTime"    # J

    .prologue
    .line 881
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 882
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 883
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 884
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    invoke-virtual {v1, v0, p2, p3}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 885
    return-void
.end method

.method private a(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    .line 566
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->f:Ljava/util/Timer;

    .line 567
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->f:Ljava/util/Timer;

    new-instance v1, Lcom/iflytek/common/cmccauth/AuthenticationService$2;

    invoke-direct {v1, p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$2;-><init>(Lcom/iflytek/common/cmccauth/AuthenticationService;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 581
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 888
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "showSmsSendConfirmDialog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string/jumbo v0, "\u77ed\u4fe1\u5185\u5bb9\u5df2\u7f16\u8f91\u597d\uff0c\u8bf7\u70b9\u51fb\u53d1\u9001"

    const-wide/16 v2, 0x320

    invoke-static {p1, v0, v2, v3}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 890
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 177
    if-nez p1, :cond_1

    .line 178
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "filterIntent | intent is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 183
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "intent action is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_2
    const-string/jumbo v4, "com.iflytek.cmcc.EXTRA_SIMCARD"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "simCard":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "com.iflytek.cmcc.EXTRA_AUTHSCENE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/iflytek/common/cmccauth/log/AuthScene;

    iput-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 195
    .local v3, "simType":Lcom/iflytek/common/adaptation/entity/SimCard;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 196
    invoke-static {v2}, Lmz;->m(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v3

    .line 199
    :cond_3
    iput-object v3, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 200
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_START_AUTH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "ACTION_START_AUTH"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Z)V

    .line 203
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a(ILcom/iflytek/common/adaptation/entity/SimCard;)Z

    goto :goto_0

    .line 190
    .end local v3    # "simType":Lcom/iflytek/common/adaptation/entity/SimCard;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "simType":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_4
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_START_UI_AUTH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 205
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "ACTION_START_UI_AUTH"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Z)V

    .line 207
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    invoke-virtual {v4, v6, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a(ILcom/iflytek/common/adaptation/entity/SimCard;)Z

    goto :goto_0

    .line 208
    :cond_5
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_GETTOKEN_ID"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    const-string/jumbo v4, "AuthenticationService"

    const-string/jumbo v5, "ACTION_GETTOKEN_ID"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Z)V

    .line 211
    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a(ILcom/iflytek/common/adaptation/entity/SimCard;)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 10
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x65

    .line 237
    const-string/jumbo v6, "AuthenticationService"

    const-string/jumbo v7, "Auth task START"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "cachedUID":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->n:Lhl;

    if-eqz v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->n:Lhl;

    invoke-virtual {v6}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->m:Lcom/iflytek/yd/business/AppConfig;

    .line 244
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->m:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_0
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-static {v6}, Lmz;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 249
    const-string/jumbo v6, "AuthenticationService"

    const-string/jumbo v7, "startAuthTask | imsi is not legal"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v6, 0x3f2

    invoke-direct {p0, p1, v8, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 321
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {p1, v6}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    .line 257
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-static {v6}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v5

    .line 258
    .local v5, "type":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    sget-object v6, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 259
    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 260
    :cond_2
    const-string/jumbo v6, "AuthenticationService"

    const-string/jumbo v7, "startAuthTask | imsi is unicom or telecom"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0, p1, v8, v9}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {}, Lhl;->n()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    .line 267
    invoke-static {v6}, Lmz;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 268
    const-string/jumbo v6, "AuthenticationService"

    const-string/jumbo v7, "startAuthTask | imsi is unicom or telecom"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0, p1, v8, v9}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 275
    :cond_4
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-static {v6}, Lmz;->i(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 276
    .local v0, "cachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-static {v6}, Lmz;->c(Ljava/lang/String;)Z

    move-result v2

    .line 277
    .local v2, "imsiChanged":Z
    if-nez v2, :cond_5

    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-eq v6, v7, :cond_5

    invoke-static {v0}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 278
    const-string/jumbo v6, "AuthenticationService"

    const-string/jumbo v7, "startAuthTask | imsi not changed and token is valid"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0, p1, v8, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto :goto_0

    .line 285
    :cond_5
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne v6, v7, :cond_6

    .line 286
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-static {v6}, Lmz;->k(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    .line 287
    .local v4, "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v4}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 288
    invoke-direct {p0, p1, v8, v4}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto/16 :goto_0

    .line 293
    .end local v4    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_6
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v6}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v6, v7}, Lni;->a(Lcom/iflytek/common/cmccauth/log/AuthScene;)V

    .line 294
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-static {v6}, Lmz;->a(Lcom/iflytek/common/cmccauth/log/AuthScene;)Z

    move-result v3

    .line 297
    .local v3, "isForground":Z
    if-eqz v2, :cond_7

    .line 298
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-static {v6}, Lmz;->f(Ljava/lang/String;)V

    .line 299
    const/4 v6, 0x0

    invoke-static {v6}, Lmz;->d(Z)V

    .line 300
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v1, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto/16 :goto_0

    .line 303
    :cond_7
    invoke-static {}, Lmz;->i()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 304
    invoke-static {}, Lmz;->j()Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    move-result-object v6

    sget-object v7, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    if-eq v6, v7, :cond_8

    .line 305
    invoke-static {}, Lmz;->j()Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    move-result-object v6

    sget-object v7, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->unknown:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    if-ne v6, v7, :cond_9

    .line 306
    :cond_8
    const-string/jumbo v6, "AuthenticationService"

    const-string/jumbo v7, "startAuthTask | not send message, check auth token"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(IJ)V

    goto/16 :goto_0

    .line 312
    :cond_9
    invoke-static {v3}, Lmz;->c(Z)Z

    move-result v6

    if-nez v6, :cond_a

    .line 313
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v1, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto/16 :goto_0

    .line 315
    :cond_a
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v6}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v6

    const/16 v7, 0x2711

    invoke-virtual {v6, v8, v7}, Lni;->a(II)V

    .line 317
    const/16 v6, 0x3ee

    invoke-direct {p0, p1, v8, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto/16 :goto_0
.end method

.method private a(Lcom/iflytek/common/adaptation/entity/SimCard;I)V
    .locals 7
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "mode"    # I

    .prologue
    .line 423
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "queryAuth | delayed get token info"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_RANDOM_CODE"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    new-instance v1, Lcom/iflytek/common/cmccauth/AuthenticationService$1;

    invoke-direct {v1, p0, p2}, Lcom/iflytek/common/cmccauth/AuthenticationService$1;-><init>(Lcom/iflytek/common/cmccauth/AuthenticationService;I)V

    iget-object v2, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    const-string/jumbo v3, "108ViaFly"

    iget-object v4, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lmy;->a(Lnf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;I)V

    .line 440
    iget v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    .line 441
    return-void
.end method

.method private declared-synchronized a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "AuthenticationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendErrorBroadcast | errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->o:Lnc;

    if-eqz v0, :cond_0

    .line 807
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "sendErrorBroadcast"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->o:Lnc;

    invoke-virtual {v0, p1, p2, p3}, Lnc;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 810
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Z)V

    .line 811
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v0

    invoke-virtual {v0}, Lni;->a()V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    monitor-exit p0

    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->o:Lnc;

    if-eqz v0, :cond_0

    .line 818
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "sendResultBroadcast"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->o:Lnc;

    invoke-virtual {v0, p1, p2, p3}, Lnc;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 821
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Z)V

    .line 822
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v0

    invoke-virtual {v0}, Lni;->a()V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    monitor-exit p0

    return-void

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lyj;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Lyj;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lyj;I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lyj;II)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Lyj;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lyj;II)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/AuthenticationService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->b(Z)V

    return-void
.end method

.method private a(Lyj;I)V
    .locals 14
    .param p1, "info"    # Lyj;
    .param p2, "errorCode"    # I

    .prologue
    .line 444
    if-nez p1, :cond_1

    .line 445
    move/from16 v1, p2

    .line 446
    .local v1, "error":I
    if-nez p2, :cond_0

    .line 447
    const/16 v1, 0x3eb

    .line 449
    :cond_0
    iget-object v9, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v9}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v9

    const/16 v10, 0x64

    const/16 v11, 0x2713

    invoke-virtual {v9, v10, v11}, Lni;->a(II)V

    .line 451
    sget-object v9, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    const/16 v10, 0x64

    invoke-direct {p0, v9, v10, v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 498
    .end local v1    # "error":I
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {p1}, Lyj;->a()Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, "tokenStatus":Ljava/lang/String;
    invoke-virtual {p1}, Lyj;->d()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v5

    .line 457
    .local v5, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    invoke-static {v7}, Lmz;->l(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    move-result-object v6

    .line 459
    .local v6, "state":Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
    if-eqz v6, :cond_4

    sget-object v9, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v6, v9}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 460
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 461
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {p1}, Lyj;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 462
    iget-object v9, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    .line 463
    invoke-static {v5, v9}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 462
    invoke-virtual {v0, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setImsi(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lyj;->c()Ljava/lang/String;

    move-result-object v8

    .line 465
    .local v8, "validDays":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 466
    const-wide/32 v10, 0x5265c00

    .line 467
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v12, v9

    mul-long v2, v10, v12

    .line 469
    .local v2, "days":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v2

    .line 468
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "invalidDate":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setValidDays(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 474
    .end local v2    # "days":J
    .end local v4    # "invalidDate":Ljava/lang/String;
    :cond_2
    const/16 v9, 0x64

    invoke-virtual {v0, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V

    .line 476
    if-eqz v0, :cond_3

    .line 477
    const-string/jumbo v9, "AuthenticationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "authentication info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_3
    iget-object v9, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v9, v0}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 482
    iget-object v9, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v9}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lni;->a(II)V

    .line 484
    const/16 v9, 0x64

    invoke-direct {p0, v5, v9, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto/16 :goto_0

    .line 486
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v8    # "validDays":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    sget-object v9, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->nopermission:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v6, v9}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 487
    iget-object v9, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v9}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v9

    const/16 v10, 0x64

    const/16 v11, 0x2719

    invoke-virtual {v9, v10, v11}, Lni;->a(II)V

    .line 489
    const/16 v9, 0x64

    const/16 v10, 0x3f1

    invoke-direct {p0, v5, v9, v10}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto/16 :goto_0

    .line 493
    :cond_5
    iget-object v9, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v9}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v9

    const/16 v10, 0x64

    const/16 v11, 0x2717

    invoke-virtual {v9, v10, v11}, Lni;->a(II)V

    .line 495
    const/16 v9, 0x64

    const/16 v10, 0x3eb

    invoke-direct {p0, v5, v9, v10}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto/16 :goto_0
.end method

.method private a(Lyj;II)V
    .locals 16
    .param p1, "info"    # Lyj;
    .param p2, "errorCode"    # I
    .param p3, "mode"    # I

    .prologue
    .line 324
    const-string/jumbo v12, "AuthenticationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "filterResult | errorCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-nez p1, :cond_1

    .line 326
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    .line 327
    const/4 v12, 0x0

    invoke-static {v12}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;)V

    .line 328
    const/4 v12, 0x0

    invoke-static {v12}, Lmz;->d(Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v12}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v12

    const/16 v13, 0x65

    const/16 v14, 0x2713

    invoke-virtual {v12, v13, v14}, Lni;->a(II)V

    .line 331
    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    const/16 v13, 0x65

    const/16 v14, 0x3eb

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lyj;->a()Ljava/lang/String;

    move-result-object v10

    .line 336
    .local v10, "tokenStatus":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lyj;->d()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v8

    .line 337
    .local v8, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    invoke-static {v10}, Lmz;->l(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    move-result-object v9

    .line 338
    .local v9, "state":Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
    invoke-static {v9}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;)V

    .line 340
    const-string/jumbo v12, "AuthenticationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "filterResult | simCard = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz v9, :cond_4

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v9, v12}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 344
    const-string/jumbo v12, "AuthenticationService"

    const-string/jumbo v13, "state = success"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    .line 346
    new-instance v2, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v2}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 347
    .local v2, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual/range {p1 .. p1}, Lyj;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setRandomCode(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setImsi(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Lyj;->c()Ljava/lang/String;

    move-result-object v11

    .line 351
    .local v11, "validDays":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 352
    const-wide/32 v12, 0x5265c00

    .line 353
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    mul-long v4, v12, v14

    .line 354
    .local v4, "days":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "invalidDate":Ljava/lang/String;
    invoke-virtual {v2, v11}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setValidDays(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2, v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 358
    .end local v3    # "invalidDate":Ljava/lang/String;
    .end local v4    # "days":J
    :cond_2
    if-eqz v2, :cond_3

    .line 359
    const-string/jumbo v12, "AuthenticationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "authentication info = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 360
    invoke-virtual {v2}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 359
    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v12, v2}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v12}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v12

    const/16 v13, 0x65

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lni;->a(II)V

    .line 368
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    const/16 v13, 0x65

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto/16 :goto_0

    .line 371
    .end local v2    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v11    # "validDays":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v9, v12}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    if-eqz v9, :cond_8

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->overtime:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 372
    invoke-virtual {v9, v12}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 373
    :cond_6
    const-string/jumbo v12, "AuthenticationService"

    const-string/jumbo v13, "state = failure or overtime"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v12, 0x0

    invoke-static {v12}, Lmz;->d(Z)V

    .line 375
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    .line 376
    const/16 v12, 0x65

    const/16 v13, 0x3f0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 378
    sget-object v12, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v12, v9}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v12}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v12

    const/16 v13, 0x65

    const/16 v14, 0x2714

    invoke-virtual {v12, v13, v14}, Lni;->a(II)V

    goto/16 :goto_0

    .line 382
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v12}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v12

    const/16 v13, 0x65

    const/16 v14, 0x2715

    invoke-virtual {v12, v13, v14}, Lni;->a(II)V

    goto/16 :goto_0

    .line 387
    :cond_8
    if-eqz v9, :cond_9

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->nopermission:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v9, v12}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 388
    const-string/jumbo v12, "AuthenticationService"

    const-string/jumbo v13, "state = nopermission"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v12, 0x0

    invoke-static {v12}, Lmz;->d(Z)V

    .line 390
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v12}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v12

    const/16 v13, 0x65

    const/16 v14, 0x2718

    invoke-virtual {v12, v13, v14}, Lni;->a(II)V

    .line 393
    const/16 v12, 0x65

    const/16 v13, 0x3f1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto/16 :goto_0

    .line 397
    :cond_9
    if-eqz v9, :cond_0

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v9, v12}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 398
    const-string/jumbo v12, "AuthenticationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "state = getagain | retryGetTokenCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 402
    invoke-static {v13}, Lmz;->a(Lcom/iflytek/common/cmccauth/log/AuthScene;)Z

    move-result v13

    .line 401
    invoke-static {v12, v13}, Lmz;->b(IZ)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 403
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    .line 404
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v12}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v12

    const/16 v13, 0x65

    const/16 v14, 0x2716

    invoke-virtual {v12, v13, v14}, Lni;->a(II)V

    .line 406
    const/16 v12, 0x65

    const/16 v13, 0x3f0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 408
    const/4 v12, 0x0

    invoke-static {v12}, Lmz;->d(Z)V

    goto/16 :goto_0

    .line 411
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->g:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 413
    invoke-static {v13}, Lmz;->a(Lcom/iflytek/common/cmccauth/log/AuthScene;)Z

    move-result v13

    .line 411
    invoke-static {v12, v13}, Lmz;->a(IZ)J

    move-result-wide v6

    .line 414
    .local v6, "retryTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(IJ)V

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    monitor-exit p0

    return-void

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->p:Lcom/iflytek/common/cmccauth/AuthenticationService$b;

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->p:Lcom/iflytek/common/cmccauth/AuthenticationService$b;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->p:Lcom/iflytek/common/cmccauth/AuthenticationService$b;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    invoke-virtual {v0}, Lmy;->a()V

    .line 231
    return-void
.end method

.method private b(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 10
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v3, 0x64

    .line 584
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 585
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "currentIMSI":Ljava/lang/String;
    invoke-static {v4}, Lmz;->i(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v7

    .line 587
    .local v7, "cache":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-eq v0, v1, :cond_0

    .line 588
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "gettokenid token already exist"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-direct {p0, p1, v3, v7}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 644
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne v0, v1, :cond_1

    .line 595
    invoke-static {v4}, Lmz;->i(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v8

    .line 596
    .local v8, "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v8}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0, p1, v3, v8}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto :goto_0

    .line 605
    .end local v8    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_RANDOM_CODE"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "randamCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_GETTOKEN_RANDOM_CODE"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-static {}, Lmz;->d()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_GETTOKEN_RANDOM_CODE"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_2
    invoke-static {v4}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v9

    .line 615
    .local v9, "type":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v9, v0}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 616
    invoke-virtual {v9, v0}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 617
    :cond_3
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "gettokenid sim type is telecom or unicom"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/16 v0, 0x3ed

    invoke-direct {p0, p1, v3, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v6

    .line 624
    .local v6, "appConfig":Lcom/iflytek/yd/business/AppConfig;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/system/ApnAccessorType;->CMNET:Lcom/iflytek/yd/system/ApnAccessorType;

    if-eq v0, v1, :cond_5

    .line 625
    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/system/ApnAccessorType;->CMWAP:Lcom/iflytek/yd/system/ApnAccessorType;

    if-eq v0, v1, :cond_5

    .line 626
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "gettokenid net type is not cmnet or cmwap"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/16 v0, 0x3f3

    invoke-direct {p0, p1, v3, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto/16 :goto_0

    .line 632
    :cond_5
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->k:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v0, v1}, Lni;->a(Lcom/iflytek/common/cmccauth/log/AuthScene;)V

    .line 633
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    new-instance v1, Lcom/iflytek/common/cmccauth/AuthenticationService$3;

    invoke-direct {v1, p0}, Lcom/iflytek/common/cmccauth/AuthenticationService$3;-><init>(Lcom/iflytek/common/cmccauth/AuthenticationService;)V

    const-string/jumbo v3, "108ViaFly"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lmy;->a(Lne;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 869
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->e:Z

    .line 871
    monitor-exit v1

    .line 872
    return-void

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/iflytek/common/cmccauth/AuthenticationService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/iflytek/common/cmccauth/AuthenticationService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 791
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "checkServiceCanStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "auth task is running | return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->b()V

    .line 800
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->stopSelf()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/common/cmccauth/AuthenticationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->c()V

    return-void
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 827
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/iflytek/common/cmccauth/AuthenticationService;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->f:Ljava/util/Timer;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 875
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 876
    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->e:Z

    monitor-exit v1

    return v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic f(Lcom/iflytek/common/cmccauth/AuthenticationService;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 8
    .param p1, "isForground"    # Z
    .param p2, "currentImsi"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 507
    const/4 v5, 0x0

    invoke-static {v5}, Lmz;->d(Z)V

    .line 509
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v4, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "10658866"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-static {}, Lmz;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    .line 512
    const-string/jumbo v5, "AuthenticationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendAuthMessage mSendMsgRandomCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_AUTH_RANDOM_CODE"

    iget-object v7, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->h:Ljava/lang/String;

    invoke-static {v5, p2, p3, v6, p1}, Lmz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "messgageContent":Ljava/lang/String;
    const-string/jumbo v5, "AuthenticationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->p:Lcom/iflytek/common/cmccauth/AuthenticationService$b;

    if-nez v5, :cond_0

    .line 519
    new-instance v5, Lcom/iflytek/common/cmccauth/AuthenticationService$b;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService$b;-><init>(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/cmccauth/AuthenticationService$1;)V

    iput-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->p:Lcom/iflytek/common/cmccauth/AuthenticationService$b;

    .line 520
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 521
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.iflytek.cmcc.SMS_SEND_SUCCESS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v5, "com.iflytek.cmcc.SMS_SEND_FAILURE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->p:Lcom/iflytek/common/cmccauth/AuthenticationService$b;

    invoke-virtual {v5, v6, v7, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 527
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    if-eqz p4, :cond_1

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p4, v5, :cond_1

    .line 528
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "imsi2":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->i:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 530
    sget-object p4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 533
    .end local v1    # "imsi2":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "AuthenticationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "simcard = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/iflytek/common/cmccauth/AuthenticationService;->b(Z)V

    .line 536
    if-eqz p1, :cond_3

    .line 537
    const-string/jumbo v5, "AuthenticationService"

    const-string/jumbo v6, "sendAuthMessage MODE_UI user active trigger"

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    invoke-static {v5}, Lna;->a(Landroid/content/Context;)Lna;

    move-result-object v5

    invoke-virtual {v5}, Lna;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 539
    const-wide/32 v6, 0x2bf20

    invoke-direct {p0, v6, v7}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(J)V

    .line 540
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    .line 541
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 540
    invoke-static {v5, v4, v6}, Lmz;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 542
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->sendEmptyMessage(I)Z

    .line 543
    const/4 v5, 0x1

    invoke-static {v5}, Lmz;->b(Z)V

    .line 555
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_AUTH_SEND_MSG_COUNT"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 557
    .local v0, "count":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_AUTH_SEND_MSG_COUNT"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v6, v0}, Lil;->a(Ljava/lang/String;I)V

    .line 559
    return-void

    .line 545
    .end local v0    # "count":I
    :cond_2
    const-wide/32 v6, 0x1d4c0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(J)V

    .line 546
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    .line 547
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 546
    invoke-static {v5, v4, v6, p4}, Lmz;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 550
    :cond_3
    const-wide/32 v6, 0x1d4c0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(J)V

    .line 551
    iget-object v5, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->c:Landroid/content/Context;

    .line 552
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 551
    invoke-static {v5, v4, v6, p4}, Lmz;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 156
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a()V

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 162
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService;->b:Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->b()V

    .line 164
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    const-string/jumbo v0, "AuthenticationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartCommand action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Landroid/content/Intent;)V

    .line 173
    const/4 v0, 0x2

    return v0
.end method
