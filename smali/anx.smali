.class public Lanx;
.super Laht;
.source "HomeMiguTokenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanx$a;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;

.field private static f:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Laog;

.field private d:J

.field private g:Z

.field private h:Lanx$a;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Lyn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "mLock"

    sput-object v0, Lanx;->e:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lanx;->f:Z

    return-void
.end method

.method public constructor <init>(Lahu;)V
    .locals 2
    .param p1, "homeContext"    # Lahu;

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 36
    const-string/jumbo v0, "HomeMiguTokenHelper"

    iput-object v0, p0, Lanx;->a:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lanx;->g:Z

    .line 43
    iput v1, p0, Lanx;->i:I

    .line 44
    const v0, 0x1b7740

    iput v0, p0, Lanx;->j:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lanx;->k:I

    .line 127
    new-instance v0, Lanx$1;

    invoke-direct {v0, p0}, Lanx$1;-><init>(Lanx;)V

    iput-object v0, p0, Lanx;->l:Lyn;

    .line 49
    iget-object v0, p0, Lanx;->h:Lanx$a;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lanx$a;

    invoke-direct {v0, p0}, Lanx$a;-><init>(Lanx;)V

    iput-object v0, p0, Lanx;->h:Lanx$a;

    .line 53
    :cond_0
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    invoke-virtual {v0}, Laod;->e()V

    .line 55
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static d(Z)V
    .locals 2
    .param p0, "isRunning"    # Z

    .prologue
    .line 193
    sget-object v1, Lanx;->e:Ljava/lang/String;

    monitor-enter v1

    .line 194
    :try_start_0
    sput-boolean p0, Lanx;->f:Z

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static k()Z
    .locals 2

    .prologue
    .line 186
    sget-object v1, Lanx;->e:Ljava/lang/String;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-boolean v0, Lanx;->f:Z

    monitor-exit v1

    return v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 218
    invoke-static {}, Lanx;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lanx;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanx;->c:Laog;

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    invoke-static {v0}, Lanx;->d(Z)V

    .line 221
    iget-object v0, p0, Lanx;->c:Laog;

    iget-wide v2, p0, Lanx;->d:J

    invoke-virtual {v0, v2, v3}, Laog;->cancelRequest(J)V

    .line 225
    :cond_0
    iget-object v0, p0, Lanx;->h:Lanx$a;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lanx;->h:Lanx$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanx$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    :cond_1
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    invoke-virtual {v0}, Laod;->i()V

    .line 230
    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "time"    # J

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-object v0, p0, Lanx;->h:Lanx$a;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    if-ne v1, p1, :cond_1

    .line 261
    iget-object v0, p0, Lanx;->h:Lanx$a;

    invoke-virtual {v0, v1}, Lanx$a;->removeMessages(I)V

    .line 263
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 264
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 265
    const-wide/32 v0, 0x1b7740

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 266
    const-wide/32 p2, 0x1b7740

    .line 268
    :cond_2
    const-string/jumbo v0, "HomeMiguTokenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try get Migu info with later "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lanx;->h:Lanx$a;

    invoke-virtual {v0, p1, p2, p3}, Lanx$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lanx;->h:Lanx$a;

    invoke-virtual {v0, p1}, Lanx$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-static {}, Laoh;->a()Laoh;

    move-result-object v0

    invoke-virtual {v0}, Laoh;->b()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lanx;->g:Z

    if-eqz v0, :cond_0

    .line 175
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lanx;->a(IJ)V

    .line 176
    iput-boolean v2, p0, Lanx;->g:Z

    .line 181
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0

    .line 179
    :cond_1
    iput-boolean v2, p0, Lanx;->g:Z

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lanx;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lanx;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanx;->c:Laog;

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-static {v0}, Lanx;->d(Z)V

    .line 204
    iget-object v0, p0, Lanx;->c:Laog;

    iget-wide v2, p0, Lanx;->d:J

    invoke-virtual {v0, v2, v3}, Laog;->cancelRequest(J)V

    .line 208
    :cond_0
    iget-object v0, p0, Lanx;->h:Lanx$a;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lanx;->h:Lanx$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanx$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 212
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 60
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "try get thrid token"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lanx;->k()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "requestInfo is running,no need request"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Laoh;->a()Laoh;

    move-result-object v6

    invoke-virtual {v6}, Laoh;->b()I

    move-result v6

    if-nez v6, :cond_1

    .line 69
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "gray is close"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 75
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v1

    .line 76
    .local v1, "isTokenValid":Z
    invoke-static {}, Lmz;->m()Z

    move-result v2

    .line 77
    .local v2, "isUserMobileLogin":Z
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 79
    :cond_2
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "USER NOT LOGIN,no need request"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenType()I

    move-result v3

    .line 85
    .local v3, "loginType":I
    const/16 v6, 0x68

    if-eq v3, v6, :cond_4

    const/16 v6, 0x67

    if-eq v3, v6, :cond_4

    .line 87
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "USER Migu NOT LOGIN,no need request"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v6

    invoke-virtual {v6}, Lhl;->c()Z

    move-result v6

    if-nez v6, :cond_5

    .line 93
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "no internet,no need request"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-wide/32 v6, 0x1b7740

    invoke-virtual {p0, v10, v6, v7}, Lanx;->a(IJ)V

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {p0}, Lanx;->p()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lazk;->e(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 100
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "APP not in table,no need request"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-boolean v10, p0, Lanx;->g:Z

    goto :goto_0

    .line 106
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Laod;->a()Laod;

    move-result-object v8

    invoke-virtual {v8}, Laod;->d()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 108
    .local v4, "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    .line 109
    const-string/jumbo v6, "HomeMiguTokenHelper"

    const-string/jumbo v7, "time not end,no need request"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, v10, v4, v5}, Lanx;->a(IJ)V

    goto/16 :goto_0

    .line 113
    :cond_7
    invoke-virtual {p0}, Lanx;->j()V

    goto/16 :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lanx;->c:Laog;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Laog;

    invoke-virtual {p0}, Lanx;->p()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lanx;->l:Lyn;

    invoke-direct {v0, v1, v2}, Laog;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lanx;->c:Laog;

    .line 122
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lanx;->d(Z)V

    .line 124
    iget-object v0, p0, Lanx;->c:Laog;

    invoke-virtual {v0}, Laog;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lanx;->d:J

    .line 125
    return-void
.end method

.method public onEvent(Lti;)V
    .locals 4
    .param p1, "event"    # Lti;

    .prologue
    .line 277
    const-string/jumbo v1, "HomeMiguTokenHelper"

    const-string/jumbo v2, "thrid Token get login change event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-nez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const-string/jumbo v1, "UserRealLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const-string/jumbo v1, "HomeMiguTokenHelper"

    const-string/jumbo v2, "get USER_REAL_LOGIN Event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lanx;->a(IJ)V

    goto :goto_0

    .line 288
    :cond_2
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0}, Lanx;->m()V

    goto :goto_0
.end method
