.class public final Lrr;
.super Lsf$a;
.source "TelSdkBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrr$b;,
        Lrr$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/common/cmccauth/CmccAuthentication;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lnd;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lrs$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lrs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-direct {p0}, Lsf$a;-><init>()V

    .line 58
    iput-object p1, p0, Lrr;->a:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    iput-object v0, p0, Lrr;->b:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrr;->c:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrr;->d:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lrs;

    iget-object v1, p0, Lrr;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lrs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lrr;->e:Lrs;

    .line 63
    return-void
.end method

.method private a(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 390
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "com.iflytek.lms.key.simtype"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v0, 0x1

    .line 192
    if-nez p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lrr;I)I
    .locals 1
    .param p0, "x0"    # Lrr;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lrr;Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p0, "x0"    # Lrr;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lrr;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    return v0
.end method

.method private a(I)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p1, "simType"    # I

    .prologue
    .line 181
    packed-switch p1, :pswitch_data_0

    .line 187
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0

    .line 185
    :pswitch_1
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lrr;)Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .locals 1
    .param p0, "x0"    # Lrr;

    .prologue
    .line 43
    iget-object v0, p0, Lrr;->b:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    return-object v0
.end method

.method private a(Lsg;)Lnd;
    .locals 6
    .param p1, "extListener"    # Lsg;

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    const/4 v1, 0x0

    .line 344
    :goto_0
    return-object v1

    .line 336
    :cond_0
    const/4 v1, 0x0

    .line 337
    .local v1, "ret":Lnd;
    iget-object v4, p0, Lrr;->c:Ljava/util/HashMap;

    monitor-enter v4

    .line 338
    :try_start_0
    iget-object v3, p0, Lrr;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsg;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnd;

    move-object v1, v0

    .line 339
    if-nez v1, :cond_1

    .line 340
    new-instance v2, Lrr$a;

    invoke-direct {v2, p0, p1}, Lrr$a;-><init>(Lrr;Lsg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v1    # "ret":Lnd;
    .local v2, "ret":Lnd;
    :try_start_1
    iget-object v3, p0, Lrr;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsg;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 343
    .end local v2    # "ret":Lnd;
    .restart local v1    # "ret":Lnd;
    :cond_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "ret":Lnd;
    .restart local v2    # "ret":Lnd;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ret":Lnd;
    .restart local v1    # "ret":Lnd;
    goto :goto_1
.end method

.method private a(Lsh;)Lrs$a;
    .locals 6
    .param p1, "extListener"    # Lsh;

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    .line 352
    :cond_0
    const/4 v1, 0x0

    .line 353
    .local v1, "ret":Lrs$a;
    iget-object v4, p0, Lrr;->d:Ljava/util/HashMap;

    monitor-enter v4

    .line 354
    :try_start_0
    iget-object v3, p0, Lrr;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Lsh;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lrs$a;

    move-object v1, v0

    .line 355
    if-nez v1, :cond_1

    .line 356
    new-instance v2, Lrr$b;

    invoke-direct {v2, p0, p1}, Lrr$b;-><init>(Lrr;Lsh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .end local v1    # "ret":Lrs$a;
    .local v2, "ret":Lrs$a;
    :try_start_1
    iget-object v3, p0, Lrr;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Lsh;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 359
    .end local v2    # "ret":Lrs$a;
    .restart local v1    # "ret":Lrs$a;
    :cond_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "ret":Lrs$a;
    .restart local v2    # "ret":Lrs$a;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ret":Lrs$a;
    .restart local v1    # "ret":Lrs$a;
    goto :goto_1
.end method

.method private b(I)I
    .locals 3
    .param p1, "selfError"    # I

    .prologue
    const v0, 0x8005

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 385
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 371
    :pswitch_1
    const-string/jumbo v0, "TelsdkBinder"

    const-string/jumbo v1, "parseErrorCode error is imsi not cmcc"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const v0, 0x8004

    goto :goto_0

    .line 376
    :pswitch_2
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, "parseErrorCode error is sms send"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    :pswitch_3
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, "parseErrorCode error get token failure"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :pswitch_4
    const-string/jumbo v0, "TelsdkBinder"

    const-string/jumbo v1, "parseErrorCode error no permission"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const v0, 0x30d3e

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lrr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lrr;

    .prologue
    .line 43
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lsg;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const v9, 0x8002

    const/4 v8, 0x1

    .line 67
    if-nez p1, :cond_1

    .line 68
    const-string/jumbo v6, "TelsdkBinder"

    const-string/jumbo v7, "init intent is null"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz p2, :cond_1

    .line 70
    invoke-interface {p2, v9, v8}, Lsg;->a(II)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v6, "com.iflytek.lms.lxtelsdkmanager"

    invoke-static {v6, p1}, Lrp;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/iflytek/framework/lms/LmsCallInfo;

    move-result-object v1

    .line 78
    .local v1, "callInfo":Lcom/iflytek/framework/lms/LmsCallInfo;
    invoke-static {v1}, Lro;->a(Lcom/iflytek/framework/lms/LmsCallInfo;)V

    .line 81
    invoke-virtual {v1}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lrr;->a(Landroid/content/Intent;)I

    move-result v5

    .line 84
    .local v5, "simType":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    :cond_2
    if-eqz p2, :cond_3

    .line 86
    invoke-interface {p2, v9, v8}, Lsg;->a(II)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0, v5}, Lrr;->a(I)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v4

    .line 93
    .local v4, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    iget-object v6, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v4, v6}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    if-eqz p2, :cond_4

    .line 95
    const v6, 0x8005

    invoke-interface {p2, v6, v5}, Lsg;->a(II)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v6, p0, Lrr;->b:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    if-eqz v6, :cond_0

    .line 103
    iget-object v6, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v6}, Lhl;->j(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    iget-object v6, p0, Lrr;->b:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-direct {p0, p2}, Lrr;->a(Lsg;)Lnd;

    move-result-object v7

    sget-object v8, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v6, v4, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;)V

    goto :goto_0

    .line 108
    :cond_5
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v6

    invoke-virtual {v6}, Lhy;->c()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v2

    .line 109
    .local v2, "dataSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    const-string/jumbo v6, "TelsdkBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current use data net simcard is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " init simcard is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 110
    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 113
    iget-object v6, p0, Lrr;->b:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-direct {p0, p2}, Lrr;->a(Lsg;)Lnd;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto/16 :goto_0

    .line 115
    :cond_6
    iget-object v6, p0, Lrr;->b:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    .line 116
    invoke-direct {p0, p2}, Lrr;->a(Lsg;)Lnd;

    move-result-object v7

    sget-object v8, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 115
    invoke-virtual {v6, v4, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Intent;Lsh;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsh;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3e9

    const/4 v10, 0x1

    const v9, 0x8002

    .line 125
    if-nez p1, :cond_1

    .line 126
    const-string/jumbo v7, "TelsdkBinder"

    const-string/jumbo v8, "init intent is null"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz p2, :cond_1

    .line 128
    invoke-interface {p2, v10, v9}, Lsh;->a(II)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string/jumbo v7, "com.iflytek.lms.lxtelsdkmanager"

    invoke-static {v7, p1}, Lrp;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/iflytek/framework/lms/LmsCallInfo;

    move-result-object v1

    .line 136
    .local v1, "callInfo":Lcom/iflytek/framework/lms/LmsCallInfo;
    invoke-static {v1}, Lro;->a(Lcom/iflytek/framework/lms/LmsCallInfo;)V

    .line 139
    invoke-virtual {v1}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lrr;->a(Landroid/content/Intent;)I

    move-result v5

    .line 142
    .local v5, "simType":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    :cond_2
    if-eqz p2, :cond_3

    .line 144
    invoke-interface {p2, v10, v9}, Lsh;->a(II)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0, v5}, Lrr;->a(I)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v4

    .line 152
    .local v4, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    iget-object v7, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "token":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 154
    const-string/jumbo v7, "TelsdkBinder"

    const-string/jumbo v8, "startQuery() token not exist"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz p2, :cond_4

    .line 156
    const v7, 0x8005

    invoke-interface {p2, v5, v7}, Lsh;->a(II)V

    goto :goto_0

    .line 161
    :cond_4
    const-string/jumbo v7, "com.iflytek.lms.key.querytype"

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, "queryType":I
    const/16 v7, 0x3ea

    if-ne v3, v7, :cond_5

    .line 165
    iget-object v7, p0, Lrr;->e:Lrs;

    if-eqz v7, :cond_0

    .line 166
    iget-object v7, p0, Lrr;->e:Lrs;

    invoke-direct {p0, p2}, Lrr;->a(Lsh;)Lrs$a;

    move-result-object v8

    invoke-virtual {v7, v4, v1, v8}, Lrs;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/framework/lms/LmsCallInfo;Lrs$a;)I

    goto :goto_0

    .line 169
    :cond_5
    if-eq v3, v11, :cond_0

    .line 173
    if-eqz p2, :cond_0

    .line 174
    invoke-interface {p2, v5, v9}, Lsh;->a(II)V

    goto :goto_0
.end method
