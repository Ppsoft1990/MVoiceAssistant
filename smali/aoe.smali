.class public Laoe;
.super Ljava/lang/Object;
.source "MiguLogHelper.java"


# static fields
.field private static b:Laoe;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "MiguLogHelper"

    iput-object v0, p0, Laoe;->a:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "1"

    iput-object v0, p0, Laoe;->c:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "3"

    iput-object v0, p0, Laoe;->d:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "5"

    iput-object v0, p0, Laoe;->e:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "4"

    iput-object v0, p0, Laoe;->f:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "0"

    iput-object v0, p0, Laoe;->g:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Laoe;->c()V

    .line 70
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static a()Laoe;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Laoe;->b:Laoe;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Laoe;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Laoe;->b:Laoe;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Laoe;

    invoke-direct {v0}, Laoe;-><init>()V

    sput-object v0, Laoe;->b:Laoe;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Laoe;->b:Laoe;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "loginidCaller"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    :cond_0
    const-string/jumbo v3, ""

    .line 176
    :goto_0
    return-object v3

    .line 169
    :cond_1
    :try_start_0
    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, "t1":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 172
    .local v1, "result":Ljava/lang/Long;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 173
    .end local v1    # "result":Ljava/lang/Long;
    .end local v2    # "t1":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MiguLogHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p1, "resultCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lmz;->h()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    .line 113
    .local v1, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-nez v1, :cond_0

    .line 114
    const-string/jumbo v9, "MiguLogHelper"

    const-string/jumbo v10, "get loginData,but authenticationInfo is null"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v3, 0x0

    .line 160
    :goto_0
    return-object v3

    .line 117
    :cond_0
    const-string/jumbo v8, ""

    .line 118
    .local v8, "userAccount":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 119
    .local v0, "accountType":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 120
    .local v6, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getMobile()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "mobile":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getMobileKey()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "mobileKey":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 123
    .local v7, "realMobile":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 124
    invoke-virtual {p0, v4, v5}, Laoe;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    :cond_1
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginType()I

    move-result v2

    .line 127
    .local v2, "loginType":I
    if-nez v2, :cond_2

    .line 128
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 129
    move-object v6, v7

    .line 130
    move-object v8, v7

    .line 131
    const-string/jumbo v0, "1"

    .line 151
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "account"

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v9, "account_type"

    invoke-virtual {v3, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v9, "phone_number"

    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v9, "result_code"

    invoke-virtual {v3, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v9, "MiguLogHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLoginData|userAccount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; accountType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; phoneNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; resultCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v9, 0x1

    if-ne v9, v2, :cond_5

    .line 134
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    invoke-static {}, Lth;->a()Lth;

    move-result-object v9

    invoke-virtual {v9}, Lth;->i()Ljava/lang/String;

    move-result-object v7

    .line 137
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 138
    const-string/jumbo v7, ""

    .line 140
    :cond_4
    move-object v6, v7

    .line 141
    const-string/jumbo v8, ""

    .line 142
    const-string/jumbo v0, "3"

    goto :goto_1

    .line 143
    :cond_5
    const/4 v9, 0x3

    if-ne v9, v2, :cond_6

    .line 144
    move-object v6, v7

    .line 145
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginId()Ljava/lang/String;

    move-result-object v8

    .line 146
    const-string/jumbo v0, "5"

    goto/16 :goto_1

    .line 148
    :cond_6
    const-string/jumbo v8, ""

    .line 149
    const-string/jumbo v0, "0"

    goto/16 :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "deeplinkUID"    # Ljava/lang/String;
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/lang/String;

    .prologue
    .line 222
    :try_start_0
    const-string/jumbo v1, "MiguLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start APP,scheme = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v1, "MiguLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start APP,deeplinkUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v1, "MiguLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start APP,downloadUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string/jumbo v1, "MiguLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start APP,params = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {p1, p2, p3, p4, p5}, Lcom/migu/uem/statistics/deeplink/DeepLinkAgent;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiguLogHelper"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 200
    const-string/jumbo v1, "MiguLogHelper"

    const-string/jumbo v2, "info is null,not onEvent"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const-string/jumbo v1, "MiguLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/migu/uem/statistics/event/EventAction;->onEvent(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiguLogHelper"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 75
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    :try_start_0
    const-string/jumbo v3, "MiguLogHelper"

    const-string/jumbo v4, "is login state,3S later do"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Laoe$1;

    invoke-direct {v1, p0}, Laoe$1;-><init>(Laoe;)V

    .line 84
    .local v1, "task":Ljava/util/TimerTask;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 85
    .local v2, "timer":Ljava/util/Timer;
    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "task":Ljava/util/TimerTask;
    .end local v2    # "timer":Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MiguLogHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "channelId":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v2

    const-string/jumbo v3, "11a5c9060dc745f996aaf6d091b46303"

    invoke-static {v2, v3, v0}, Lcom/migu/uem/comm/AgentEngine;->start(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v2, "MiguLogHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UnionLog is start, channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; appkey is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "11a5c9060dc745f996aaf6d091b46303"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "channelId":Ljava/lang/String;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MiguLogHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 3
    .param p1, "event"    # Lti;

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const-string/jumbo v1, "UserRealLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const-string/jumbo v1, "MiguLogHelper"

    const-string/jumbo v2, "get real login change event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string/jumbo v1, "user_login"

    const-string/jumbo v2, "0"

    invoke-virtual {p0, v2}, Laoe;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Laoe;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string/jumbo v1, "UserLoginFail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "MiguLogHelper"

    const-string/jumbo v2, "get login fail event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v1, "user_login"

    const-string/jumbo v2, "1"

    invoke-virtual {p0, v2}, Laoe;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Laoe;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
