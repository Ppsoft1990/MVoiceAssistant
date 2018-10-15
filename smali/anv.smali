.class public Lanv;
.super Ljava/lang/Object;
.source "BookTokenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanv$a;
    }
.end annotation


# static fields
.field private static g:Lanv;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lant;

.field private c:Ltt;

.field private d:Lanv$a;

.field private final e:I

.field private final f:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:Ljava/lang/String;

.field private final t:I

.field private final u:J

.field private v:J

.field private w:Lyn;

.field private x:Lyn;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v1, "BookTokenHelper"

    iput-object v1, p0, Lanv;->a:Ljava/lang/String;

    .line 50
    iput v2, p0, Lanv;->e:I

    .line 51
    const v1, 0xdbba0

    iput v1, p0, Lanv;->f:I

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lanv;->h:Z

    .line 62
    const-string/jumbo v1, "x%73hr7z"

    iput-object v1, p0, Lanv;->o:Ljava/lang/String;

    .line 63
    iput v2, p0, Lanv;->p:I

    .line 64
    iput v3, p0, Lanv;->q:I

    .line 65
    const/4 v1, 0x3

    iput v1, p0, Lanv;->r:I

    .line 67
    const-string/jumbo v1, "040004"

    iput-object v1, p0, Lanv;->s:Ljava/lang/String;

    .line 69
    iput v3, p0, Lanv;->t:I

    .line 70
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Lanv;->u:J

    .line 71
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lanv;->v:J

    .line 237
    new-instance v1, Lanv$2;

    invoke-direct {v1, p0}, Lanv$2;-><init>(Lanv;)V

    iput-object v1, p0, Lanv;->w:Lyn;

    .line 318
    new-instance v1, Lanv$3;

    invoke-direct {v1, p0}, Lanv$3;-><init>(Lanv;)V

    iput-object v1, p0, Lanv;->x:Lyn;

    .line 87
    iget-object v1, p0, Lanv;->d:Lanv$a;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lanv$a;

    invoke-direct {v1, p0}, Lanv$a;-><init>(Lanv;)V

    iput-object v1, p0, Lanv;->d:Lanv$a;

    .line 90
    :cond_0
    invoke-virtual {p0}, Lanv;->h()V

    .line 92
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->c()Z

    move-result v0

    .line 95
    .local v0, "isLogin":Z
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lanv;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    const-string/jumbo v1, "BookTokenHelper"

    const-string/jumbo v2, "user is login ,but longToken not valid,try get"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lanv;->b()V

    .line 99
    :cond_1
    return-void
.end method

.method static synthetic a(Lanv;Lant;)Lant;
    .locals 0
    .param p0, "x0"    # Lanv;
    .param p1, "x1"    # Lant;

    .prologue
    .line 45
    iput-object p1, p0, Lanv;->b:Lant;

    return-object p1
.end method

.method static synthetic a(Lanv;)Lanv$a;
    .locals 1
    .param p0, "x0"    # Lanv;

    .prologue
    .line 45
    iget-object v0, p0, Lanv;->d:Lanv$a;

    return-object v0
.end method

.method public static a()Lanv;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lanv;->g:Lanv;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lanv;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lanv;->g:Lanv;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lanv;

    invoke-direct {v0}, Lanv;-><init>()V

    sput-object v0, Lanv;->g:Lanv;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lanv;->g:Lanv;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "content"    # [B
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    :goto_0
    return-object v2

    .line 671
    :cond_0
    :try_start_0
    invoke-static {p1}, Lqd;->b([B)[B

    move-result-object v1

    .line 672
    .local v1, "result":[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Ltb;->b([B[B)[B

    move-result-object v1

    .line 673
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 674
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BookTokenHelper"

    const-string/jumbo v4, "encrypt"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lanv;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lanv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lanv;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lanv;Z)Z
    .locals 0
    .param p0, "x0"    # Lanv;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lanv;->h:Z

    return p1
.end method

.method static synthetic b(Lanv;)Lant;
    .locals 1
    .param p0, "x0"    # Lanv;

    .prologue
    .line 45
    iget-object v0, p0, Lanv;->b:Lant;

    return-object v0
.end method

.method private b([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "content"    # [B
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 682
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    :goto_0
    return-object v2

    .line 686
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1, v3}, Ltb;->a([B[B)[B

    move-result-object v1

    .line 687
    .local v1, "result":[B
    invoke-static {v1}, Lqd;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 688
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BookTokenHelper"

    const-string/jumbo v4, "encrypt"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lanv;)Lyn;
    .locals 1
    .param p0, "x0"    # Lanv;

    .prologue
    .line 45
    iget-object v0, p0, Lanv;->w:Lyn;

    return-object v0
.end method

.method static synthetic d(Lanv;)J
    .locals 2
    .param p0, "x0"    # Lanv;

    .prologue
    .line 45
    iget-wide v0, p0, Lanv;->v:J

    return-wide v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 3
    .param p1, "sToken"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lanv;->b:Lant;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lant;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lanv;->w:Lyn;

    invoke-direct {v0, v1, v2}, Lant;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lanv;->b:Lant;

    .line 192
    :cond_0
    iget-object v0, p0, Lanv;->b:Lant;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lant;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 193
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 6
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    .line 202
    .local v0, "mAuthnHelper":Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
    const-string/jumbo v1, "20401801"

    const-string/jumbo v2, "985E24BC7CE25174"

    const-string/jumbo v4, "default"

    new-instance v5, Lanv$1;

    invoke-direct {v5, p0}, Lanv$1;-><init>(Lanv;)V

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method private l(Ljava/lang/String;)V
    .locals 4
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lanv;->c:Ltt;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ltt;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lanv;->x:Lyn;

    invoke-direct {v0, v1, v2}, Ltt;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lanv;->c:Ltt;

    .line 233
    :cond_0
    iget-object v0, p0, Lanv;->c:Ltt;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, p1, v1}, Ltt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 234
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lanv;->d:Lanv$a;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lanv;->d:Lanv$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanv$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lanv;->j()V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanv;->h:Z

    .line 387
    return-void
.end method

.method private o()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-virtual {p0}, Lanv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lanv;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v2

    .line 512
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 513
    .local v0, "currentTime":J
    iget-wide v4, p0, Lanv;->k:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    .line 514
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .param p1, "readExpireTime"    # J

    .prologue
    .line 449
    iput-wide p1, p0, Lanv;->k:J

    .line 450
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "stoken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 165
    iget-boolean v0, p0, Lanv;->h:Z

    if-eqz v0, :cond_1

    .line 166
    const-string/jumbo v0, "BookTokenHelper"

    const-string/jumbo v1, "is requesting...return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lanv;->d:Lanv$a;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lanv;->d:Lanv$a;

    invoke-virtual {v0, v1}, Lanv$a;->removeMessages(I)V

    .line 176
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    const-string/jumbo v0, "BookTokenHelper"

    const-string/jumbo v1, "no internet,no need request"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iput-boolean v1, p0, Lanv;->h:Z

    .line 184
    invoke-direct {p0, p1}, Lanv;->j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3a98

    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 102
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "try get read long token"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v4, p0, Lanv;->h:Z

    if-eqz v4, :cond_1

    .line 105
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "is requesting...return"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v4, p0, Lanv;->d:Lanv$a;

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lanv;->d:Lanv$a;

    invoke-virtual {v4, v8}, Lanv$a;->removeMessages(I)V

    .line 115
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-nez v4, :cond_2

    .line 116
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "no internet,no need request\u3002dorequest with later"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lanv;->d:Lanv$a;

    const-wide/32 v6, 0xdbba0

    invoke-virtual {v4, v8, v6, v7}, Lanv$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 123
    invoke-static {}, Lmz;->m()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->i()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 127
    iput-boolean v8, p0, Lanv;->h:Z

    .line 128
    iget-object v4, p0, Lanv;->d:Lanv$a;

    if-eqz v4, :cond_3

    .line 129
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "add time out handler"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v4, p0, Lanv;->d:Lanv$a;

    invoke-virtual {v4, v6, v10, v11}, Lanv$a;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    :cond_3
    invoke-direct {p0, v2}, Lanv;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "mobile is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v2    # "mobile":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lmz;->n()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 138
    invoke-virtual {p0}, Lanv;->m()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "refreshToken":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    iput-boolean v8, p0, Lanv;->h:Z

    .line 141
    invoke-direct {p0, v3}, Lanv;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v3    # "refreshToken":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lmz;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 146
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 147
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginId()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "loginId":Ljava/lang/String;
    iput-boolean v8, p0, Lanv;->h:Z

    .line 149
    iget-object v4, p0, Lanv;->d:Lanv$a;

    if-eqz v4, :cond_7

    .line 150
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "add time out handler"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lanv;->d:Lanv$a;

    invoke-virtual {v4, v6, v10, v11}, Lanv$a;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    :cond_7
    invoke-direct {p0, v1}, Lanv;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .end local v1    # "loginId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "mobile is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_9
    const-string/jumbo v4, "BookTokenHelper"

    const-string/jumbo v5, "user not login,or not have mobile"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "readLongToken"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lanv;->i:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lanv;->i:Ljava/lang/String;

    .line 456
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "readIdentityId"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lanv;->l:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lanv;->j:Ljava/lang/String;

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "readMsisdn"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lanv;->m:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lanv;->l:Ljava/lang/String;

    .line 476
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "readAccountName"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lanv;->n:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lanv;->m:Ljava/lang/String;

    .line 488
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "readUserId"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Lanv;->j:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lanv;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 521
    const-string/jumbo v8, "wap.cmread.com"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "wap.cmread.com/tingclient"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 523
    invoke-direct {p0}, Lanv;->o()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v2, v7

    .line 551
    :goto_0
    return-object v2

    .line 527
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 528
    .local v5, "random":Ljava/util/Random;
    const/16 v8, 0x2710

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 529
    .local v4, "next":I
    const-string/jumbo v8, "%04d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "randomCode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lanv;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lanv;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lany;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "enKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v7

    .line 533
    goto :goto_0

    .line 535
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 536
    .local v2, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "cltk"

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string/jumbo v8, "x-random"

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string/jumbo v8, "x-user-id"

    invoke-virtual {p0}, Lanv;->d()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string/jumbo v8, "BookTokenHelper"

    const-string/jumbo v9, "add head info"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string/jumbo v8, "BookTokenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cltk:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string/jumbo v8, "BookTokenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "x-random:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string/jumbo v8, "BookTokenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "x-user-id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lanv;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 546
    .end local v1    # "enKey":Ljava/lang/String;
    .end local v2    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "next":I
    .end local v5    # "random":Ljava/util/Random;
    .end local v6    # "randomCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "BookTokenHelper"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v7

    .line 548
    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v7

    .line 551
    goto/16 :goto_0
.end method

.method public h()V
    .locals 6

    .prologue
    .line 556
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_READ_INFO"

    invoke-virtual {v3, v4}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "allInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 563
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 564
    const-string/jumbo v3, "readLongToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lanv;->i:Ljava/lang/String;

    .line 565
    const-string/jumbo v3, "readUserId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lanv;->j:Ljava/lang/String;

    .line 566
    const-string/jumbo v3, "readExpireTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lanv;->k:J

    .line 567
    const-string/jumbo v3, "identityid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lanv;->l:Ljava/lang/String;

    .line 568
    const-string/jumbo v3, "msisdn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lanv;->m:Ljava/lang/String;

    .line 569
    const-string/jumbo v3, "accountname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lanv;->n:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "BookTokenHelper"

    const-string/jumbo v4, "Json analyse error"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2
    .param p1, "stoken"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_BOOK_STOKEN"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public i()V
    .locals 8

    .prologue
    .line 578
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 580
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lanv;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    const-string/jumbo v3, "readLongToken"

    iget-object v4, p0, Lanv;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    :cond_0
    iget-object v3, p0, Lanv;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 584
    const-string/jumbo v3, "readUserId"

    iget-object v4, p0, Lanv;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    :cond_1
    iget-wide v4, p0, Lanv;->k:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 587
    const-string/jumbo v3, "readExpireTime"

    iget-wide v4, p0, Lanv;->k:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 589
    :cond_2
    iget-object v3, p0, Lanv;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 590
    const-string/jumbo v3, "identityid"

    iget-object v4, p0, Lanv;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    :cond_3
    iget-object v3, p0, Lanv;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 593
    const-string/jumbo v3, "msisdn"

    iget-object v4, p0, Lanv;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    :cond_4
    iget-object v3, p0, Lanv;->n:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 596
    const-string/jumbo v3, "accountname"

    iget-object v4, p0, Lanv;->n:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "BookTokenHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set info is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 604
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_READ_INFO"

    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lanv;->h()V

    .line 609
    :cond_6
    return-void

    .line 598
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "BookTokenHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 5
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    :goto_0
    return-void

    .line 642
    :cond_0
    :try_start_0
    const-string/jumbo v2, "BookTokenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pre:save rsToken is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lanv;->o:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lanv;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "incrpt":Ljava/lang/String;
    const-string/jumbo v2, "BookTokenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "now:save rsToken is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_WECHAT_REFRESH_TOKEN"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    .end local v1    # "incrpt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "BookTokenHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 612
    const-string/jumbo v1, "BookTokenHelper"

    const-string/jumbo v2, "Read info is clear"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string/jumbo v0, ""

    .line 614
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_READ_INFO"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lanv;->l()V

    .line 616
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lanv;->h(Ljava/lang/String;)V

    .line 617
    const-string/jumbo v1, ""

    iput-object v1, p0, Lanv;->i:Ljava/lang/String;

    .line 618
    const-string/jumbo v1, ""

    iput-object v1, p0, Lanv;->j:Ljava/lang/String;

    .line 619
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lanv;->k:J

    .line 620
    const-string/jumbo v1, ""

    iput-object v1, p0, Lanv;->l:Ljava/lang/String;

    .line 621
    const-string/jumbo v1, ""

    iput-object v1, p0, Lanv;->m:Ljava/lang/String;

    .line 622
    const-string/jumbo v1, ""

    iput-object v1, p0, Lanv;->n:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 630
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_BOOK_STOKEN"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 634
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_WECHAT_REFRESH_TOKEN"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 653
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_WECHAT_REFRESH_TOKEN"

    invoke-virtual {v3, v4}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 662
    .end local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 657
    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lanv;->o:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lanv;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 658
    goto :goto_0

    .line 659
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "BookTokenHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 662
    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 3
    .param p1, "event"    # Lti;

    .prologue
    .line 413
    const-string/jumbo v1, "BookTokenHelper"

    const-string/jumbo v2, "get login change event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-nez p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    invoke-direct {p0}, Lanv;->n()V

    goto :goto_0

    .line 423
    :cond_2
    const-string/jumbo v1, "UserRealLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    const-string/jumbo v1, "BookTokenHelper"

    const-string/jumbo v2, "get USER_REAL_LOGIN EVENT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lmz;->m()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lmz;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lanv;->d:Lanv$a;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lanv;->d:Lanv$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lanv$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onEvent(Ltr;)V
    .locals 3
    .param p1, "event"    # Ltr;

    .prologue
    .line 433
    const-string/jumbo v1, "BookTokenHelper"

    const-string/jumbo v2, "get wxLoginEvent message"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-nez p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p1}, Ltr;->a()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "sToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {p0, v0}, Lanv;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
