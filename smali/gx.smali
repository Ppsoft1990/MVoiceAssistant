.class public final Lgx;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgx$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lgz;

.field private c:Lcom/android/internal/telephony/ITelephony;

.field private d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lgw;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Intent;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgx;->f:Z

    return-void
.end method

.method public static a()Lgx;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lgx$a;->a:Lgx;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 371
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 372
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgw;

    .line 373
    .local v0, "listener":Lgw;
    invoke-interface {v0, p1, p2}, Lgw;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 376
    .end local v0    # "listener":Lgw;
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 404
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgw;

    .line 405
    .local v0, "listener":Lgw;
    invoke-interface {v0, p1}, Lgw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    .end local v0    # "listener":Lgw;
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 379
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 380
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgw;

    .line 381
    .local v0, "listener":Lgw;
    invoke-interface {v0, p1, p2}, Lgw;->b(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 384
    .end local v0    # "listener":Lgw;
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 387
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 388
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgw;

    .line 389
    .local v0, "listener":Lgw;
    invoke-interface {v0, p1, p2}, Lgw;->c(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 392
    .end local v0    # "listener":Lgw;
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 395
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    iget-object v1, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgw;

    .line 397
    .local v0, "listener":Lgw;
    invoke-interface {v0, p1, p2}, Lgw;->d(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 400
    .end local v0    # "listener":Lgw;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lgy;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    iget-object v0, p0, Lgx;->b:Lgz;

    if-nez v0, :cond_1

    .line 321
    :cond_0
    const-string/jumbo v0, "CallManager"

    const-string/jumbo v1, "filterCallReceiveIntent | intent or parser is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgx;->b:Lgz;

    invoke-virtual {v0, p1}, Lgz;->a(Landroid/content/Intent;)Lgy;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 64
    iget-boolean v4, p0, Lgx;->f:Z

    if-eqz v4, :cond_0

    .line 65
    const-string/jumbo v4, "CallManager"

    const-string/jumbo v5, "init is true"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lgx;->a:Landroid/content/Context;

    .line 69
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 70
    new-instance v4, Lgz;

    iget-object v5, p0, Lgx;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lgz;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lgx;->b:Lgz;

    .line 72
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 73
    .local v1, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/telephony/TelephonyManager;>;"
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    .line 74
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 76
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-string/jumbo v5, "getITelephony"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 78
    .local v3, "telephonyMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ITelephony;

    iput-object v4, p0, Lgx;->c:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v3    # "telephonyMethod":Ljava/lang/reflect/Method;
    :goto_1
    iput-boolean v6, p0, Lgx;->f:Z

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CallManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Landroid/content/Intent;Lcom/iflytek/base/call/PhoneState;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneState"    # Lcom/iflytek/base/call/PhoneState;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 333
    const-string/jumbo v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallEventCallback phonestate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/base/call/PhoneState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " simcard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    invoke-virtual {p4}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallEventCallback phonestate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iflytek/base/call/PhoneState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " simcard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 337
    invoke-virtual {p4}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v0, v1, v2}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-eqz p1, :cond_0

    .line 339
    iput-object p1, p0, Lgx;->e:Landroid/content/Intent;

    .line 341
    :cond_0
    sget-object v0, Lgx$1;->a:[I

    invoke-virtual {p2}, Lcom/iflytek/base/call/PhoneState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    :goto_0
    return-void

    .line 343
    :pswitch_0
    invoke-direct {p0, p3, p4}, Lgx;->b(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-direct {p0, p3, p4}, Lgx;->c(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 349
    :pswitch_2
    invoke-direct {p0, p3, p4}, Lgx;->d(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 352
    :pswitch_3
    invoke-direct {p0, p3, p4}, Lgx;->e(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 355
    :pswitch_4
    invoke-direct {p0, p3}, Lgx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lgw;)V
    .locals 2
    .param p1, "listener"    # Lgw;

    .prologue
    .line 198
    if-nez p1, :cond_1

    .line 199
    const-string/jumbo v0, "CallManager"

    const-string/jumbo v1, "registCallReceiveListener | listener is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lgx;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 93
    .local v3, "targetSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_SIM_CHOICE"

    invoke-virtual {v4, v5}, Lil;->d(Ljava/lang/String;)I

    move-result v2

    .line 94
    .local v2, "simMode":I
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v4, v5}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v0

    .line 95
    .local v0, "firstSimState":Lcom/iflytek/yd/system/SimState;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v4, v5}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v1

    .line 97
    .local v1, "secondSimState":Lcom/iflytek/yd/system/SimState;
    sget-object v4, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v4, v0, :cond_1

    sget-object v4, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v4, v1, :cond_1

    .line 98
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 99
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v3}, Lgx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 106
    return-void

    .line 101
    :cond_1
    sget-object v4, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v4, v1, :cond_0

    .line 102
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const-string/jumbo v4, "CallManager"

    const-string/jumbo v5, "call | number is null or empty"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v5, "CallManager"

    const-string/jumbo v6, "call | number is null or empty"

    invoke-static {v4, v5, v6}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v4

    invoke-virtual {v4}, Lgs;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v4

    invoke-virtual {v4}, Lgs;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v4

    invoke-virtual {v4}, Lgs;->i()V

    .line 122
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v3, "numberBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    const-string/jumbo v4, "86"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "call | number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",simCard="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", isSupportCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lagm;->g()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lagm;->g()Z

    move-result v4

    if-nez v4, :cond_3

    .line 132
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getCallAdapter()Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->getDialIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 133
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CallManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "call exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getCallAdapter()Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v4

    invoke-virtual {v4, p2, p1}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 138
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 140
    :cond_4
    iget-object v4, p0, Lgx;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 181
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    :goto_0
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lgx;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 184
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CallManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getCallAdapter()Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->isPhoneAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 12

    .prologue
    .line 220
    const-string/jumbo v9, "CallManager"

    const-string/jumbo v10, "answerCall.."

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x9

    if-ge v9, v10, :cond_0

    .line 224
    iget-object v9, p0, Lgx;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 270
    :goto_0
    return-void

    .line 228
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ge v9, v10, :cond_1

    .line 229
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, "localIntent1":Landroid/content/Intent;
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string/jumbo v9, "state"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string/jumbo v9, "microphone"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const-string/jumbo v9, "name"

    const-string/jumbo v10, "Headset"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v9, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 236
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v4, "localIntent2":Landroid/content/Intent;
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x4f

    invoke-direct {v7, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 239
    .local v7, "localKeyEvent1":Landroid/view/KeyEvent;
    const-string/jumbo v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    iget-object v9, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 242
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v5, "localIntent3":Landroid/content/Intent;
    new-instance v8, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x4f

    invoke-direct {v8, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 245
    .local v8, "localKeyEvent2":Landroid/view/KeyEvent;
    const-string/jumbo v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    iget-object v9, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 248
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v6, "localIntent4":Landroid/content/Intent;
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const-string/jumbo v9, "state"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string/jumbo v9, "microphone"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string/jumbo v9, "name"

    const-string/jumbo v10, "Headset"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v9, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 267
    .end local v3    # "localIntent1":Landroid/content/Intent;
    .end local v4    # "localIntent2":Landroid/content/Intent;
    .end local v5    # "localIntent3":Landroid/content/Intent;
    .end local v6    # "localIntent4":Landroid/content/Intent;
    .end local v7    # "localKeyEvent1":Landroid/view/KeyEvent;
    .end local v8    # "localKeyEvent2":Landroid/view/KeyEvent;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e1":Ljava/lang/Exception;
    const-string/jumbo v9, "CallManager"

    const-string/jumbo v10, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 256
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x4f

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 258
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    const-string/jumbo v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    iget-object v9, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 262
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v9, 0x1

    const/16 v10, 0x4f

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 264
    .restart local v2    # "keyEvent":Landroid/view/KeyEvent;
    const-string/jumbo v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    iget-object v9, p0, Lgx;->a:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lgx;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lgx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getCallAdapter()Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lgx;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->endCall(Landroid/content/Intent;)V

    .line 277
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 293
    iget-object v2, p0, Lgx;->c:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 295
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 298
    :cond_1
    iget-object v2, p0, Lgx;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string/jumbo v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallIdle error----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CallManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method
