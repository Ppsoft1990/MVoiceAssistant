.class public final Lcom/iflytek/common/cmccauth/CmccAuthentication;
.super Ljava/lang/Object;
.source "CmccAuthentication.java"

# interfaces
.implements Lcom/iflytek/common/adaptation/AdaptPluginObserver;
.implements Lcom/iflytek/yd/base/ProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/cmccauth/CmccAuthentication$a;,
        Lcom/iflytek/common/cmccauth/CmccAuthentication$c;,
        Lcom/iflytek/common/cmccauth/CmccAuthentication$b;,
        Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;
    }
.end annotation


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

.field private c:Lcom/iflytek/common/cmccauth/CmccAuthentication$a;

.field private d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lnd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

.field private f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lnd;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lnd;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lnd;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Ljava/lang/Object;

.field private k:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

.field private l:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lng;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->e:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->i:J

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->j:Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->k:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .line 114
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d()V

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 119
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 122
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 124
    invoke-static {p0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 125
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccLAST_CHECK_CONNECT"

    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->i:J

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/common/cmccauth/CmccAuthentication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$1;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication;)Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->e()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    .line 132
    :cond_0
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$b;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    return-object v0
.end method

.method private a(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p3, "message"    # I
    .param p4, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p5, "listener"    # Lnd;

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-ne v0, v1, :cond_2

    .line 520
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "checkAndStartAuth | auth state is running"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-eqz p5, :cond_1

    .line 522
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_0
    const/16 v0, 0x3ef

    invoke-interface {p5, p2, p1, v0}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    if-eqz p5, :cond_3

    .line 529
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 530
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_3
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-direct {p0, v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 535
    invoke-static {}, Laob;->a()Laob;

    move-result-object v0

    invoke-virtual {v0}, Laob;->b()V

    goto :goto_0
.end method

.method private a(ILcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p3, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;

    .prologue
    .line 834
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 835
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 836
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_SIMCARD"

    invoke-virtual {p2}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    :cond_0
    if-eqz p3, :cond_1

    .line 839
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_AUTHSCENE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 842
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 858
    :goto_0
    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 859
    return-void

    .line 844
    :pswitch_0
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_START_AUTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 847
    :pswitch_1
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_STOP_AUTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 850
    :pswitch_2
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_START_UI_AUTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 853
    :pswitch_3
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_GETTOKEN_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 761
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    .line 762
    .local v0, "errorListener":Lnd;
    if-eqz v0, :cond_0

    .line 763
    invoke-interface {v0, p1, p2, p3}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 765
    :cond_0
    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-direct {p0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 766
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 767
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 768
    return-void
.end method

.method private a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 381
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 382
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng;

    const-string/jumbo v1, ""

    invoke-virtual {p3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lng;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 385
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 386
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 387
    return-void
.end method

.method private a(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V
    .locals 2
    .param p1, "state"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->k:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/iflytek/common/cmccauth/CmccAuthentication$c;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$c;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication$c;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "err_code"    # Ljava/lang/String;
    .param p2, "err_des"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng;

    .line 364
    .local v0, "errorListener":Lng;
    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0, p1, p2}, Lng;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 369
    return-void
.end method

.method private a(I)Z
    .locals 1
    .param p1, "authType"    # I

    .prologue
    .line 756
    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(I)Z

    move-result v0

    return v0
.end method

.method private b(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p3, "message"    # I
    .param p4, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p5, "listener"    # Lnd;

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-ne v0, v1, :cond_2

    .line 548
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "checkAndStartAuth | auth state is running"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz p5, :cond_1

    .line 551
    sget-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne p4, v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    const/16 v0, 0x3ef

    invoke-interface {p5, p2, p1, v0}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 570
    :cond_1
    :goto_0
    return-void

    .line 559
    :cond_2
    if-eqz p5, :cond_3

    .line 561
    sget-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne p4, v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 563
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_3
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-direct {p0, v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 568
    invoke-direct {p0, p3, p2, p4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(ILcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;)V

    goto :goto_0
.end method

.method private b(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 814
    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    .line 815
    .local v0, "errorListener":Lnd;
    if-eqz v0, :cond_0

    .line 816
    invoke-interface {v0, p1, p2, p3}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 818
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 819
    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnd;

    .line 820
    .local v1, "listener":Lnd;
    if-eqz v1, :cond_1

    .line 821
    invoke-interface {v1, p1, p2, p3}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 825
    .end local v1    # "listener":Lnd;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 826
    return-void
.end method

.method private b(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 389
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 390
    :cond_0
    const-string/jumbo v1, "CmccAuthentication"

    const-string/jumbo v2, "notifyVerifyAuthResult auth info is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    return-void

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng;

    .line 395
    .local v0, "listener":Lng;
    if-eqz v0, :cond_3

    .line 396
    const-string/jumbo v2, ""

    invoke-virtual {p3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1}, Lng;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0
.end method

.method private b(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V
    .locals 2
    .param p1, "state"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .prologue
    .line 862
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->e:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .line 864
    monitor-exit v1

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "err_code"    # Ljava/lang/String;
    .param p2, "err_des"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng;

    .line 373
    .local v0, "listener":Lng;
    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0, p1, p2}, Lng;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v0    # "listener":Lng;
    :cond_1
    return-void
.end method

.method private c(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 887
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    .line 889
    .local v0, "listener":Lnd;
    if-eqz v0, :cond_0

    .line 890
    invoke-interface {v0, p1, p2, p3}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 894
    .end local v0    # "listener":Lnd;
    :cond_1
    return-void
.end method

.method private c(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 771
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 772
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 773
    const-string/jumbo v2, "CmccAuthentication"

    const-string/jumbo v3, "onResultNotify mAuthResultListeners "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnd;

    invoke-interface {v2, p1, p2, p3}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 776
    :cond_0
    sget-object v2, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-direct {p0, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 777
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->e(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 778
    iget-object v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 781
    new-instance v0, Laam;

    const-string/jumbo v2, "000000"

    const-string/jumbo v3, "success"

    invoke-direct {v0, v2, v3}, Laam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .local v0, "event":Laam;
    invoke-virtual {v0, p3}, Laam;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 783
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, "tokenId":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-static {p3}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    invoke-virtual {p3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v1

    .line 790
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method static synthetic c(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p1, "x1"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 136
    new-instance v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;-><init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$1;)V

    iput-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c:Lcom/iflytek/common/cmccauth/CmccAuthentication$a;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_AUTH_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c:Lcom/iflytek/common/cmccauth/CmccAuthentication$a;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 143
    return-void
.end method

.method private d(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 796
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 797
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnd;

    invoke-interface {v1, p1, p2, p3}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 800
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 801
    :cond_1
    const-string/jumbo v1, "CmccAuthentication"

    const-string/jumbo v2, "onOuterResultNotify auth info is null or listeners size is 0"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :goto_0
    return-void

    .line 805
    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    .line 806
    .local v0, "listener":Lnd;
    if-eqz v0, :cond_3

    .line 807
    invoke-interface {v0, p1, p2, p3}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto :goto_1

    .line 810
    .end local v0    # "listener":Lnd;
    :cond_4
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_0
.end method

.method private e()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->k:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    monitor-exit v1

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 874
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 875
    :cond_0
    const-string/jumbo v1, "CmccAuthentication"

    const-string/jumbo v2, "notifyCacheAuthResult auth info is null or listeners size is 0"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_1
    return-void

    .line 879
    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    .line 880
    .local v0, "listener":Lnd;
    if-eqz v0, :cond_3

    .line 881
    invoke-interface {v0, p1, p2, p3}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto :goto_0
.end method

.method private f()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;
    .locals 2

    .prologue
    .line 868
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->e:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    monitor-exit v1

    return-object v0

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 446
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 447
    .local v0, "newAuthInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v1

    .line 451
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lnd;
    .param p3, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p4, "entry"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "user.voiceLogin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entry"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-class v1, Lcom/iflytek/viafly/account/ui/UserActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v1, Lnh;

    invoke-direct {v1, p2}, Lnh;-><init>(Lnd;)V

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;Lng;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lnd;
    .param p3, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p4, "entry"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "user.voiceLogin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/iflytek/viafly/account/ui/UserActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v1, Lnh;

    invoke-direct {v1, p2}, Lnh;-><init>(Lnd;)V

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;Lng;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lng;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "listener"    # Lng;
    .param p3, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p4, "entry"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100097"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->e()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-ne v1, v2, :cond_2

    .line 244
    const-string/jumbo v1, "CmccAuthentication"

    const-string/jumbo v2, "startVerifyAuthUITask | auth state is running"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz p2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 259
    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-direct {p0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 261
    invoke-static {}, Laoi;->a()Laoi;

    move-result-object v1

    invoke-virtual {v1}, Laoi;->b()V

    .line 262
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90147"

    .line 267
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 360
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 251
    :cond_2
    if-eqz p2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 253
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p3, "listener"    # Lnd;

    .prologue
    const/4 v3, 0x3

    const/16 v1, 0x64

    .line 912
    const-string/jumbo v0, "CmccAuthentication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTokenId() ---- AuthScene is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    sget-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne p2, v0, :cond_2

    .line 915
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmz;->k(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v7

    .line 916
    .local v7, "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v7}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    if-eqz p3, :cond_0

    .line 918
    invoke-interface {p3, p1, v1, v7}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 942
    .end local v7    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_0
    :goto_0
    return-void

    .restart local v7    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 923
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto :goto_0

    .line 925
    .end local v7    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_2
    sget-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_RENEW_TOKEN:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne v0, p2, :cond_3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 927
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto :goto_0

    .line 932
    :cond_3
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v6

    .line 933
    .local v6, "newTokenInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v6, :cond_4

    invoke-static {v6}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 934
    if-eqz p3, :cond_0

    .line 935
    invoke-interface {p3, p1, v1, v6}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 938
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;)V
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "listener"    # Lnd;
    .param p3, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x65

    .line 151
    const-string/jumbo v2, "CmccAuthentication"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startAuthTask() is called, simCard ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " authScene = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",listener == null is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",simCard = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne p3, v0, :cond_2

    .line 155
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmz;->k(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v7

    .line 156
    .local v7, "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v7}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    if-eqz p2, :cond_0

    .line 158
    invoke-interface {p2, p1, v1, v7}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 174
    .end local v7    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 151
    goto :goto_0

    .line 163
    :cond_2
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmz;->i(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v6

    .line 164
    .local v6, "cachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v6}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    if-eqz p2, :cond_0

    .line 166
    invoke-interface {p2, p1, v1, v6}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto :goto_1

    .end local v6    # "cachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_3
    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 411
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v2, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "currentIMSI":Ljava/lang/String;
    invoke-static {v0}, Lmz;->c(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v3, 0x0

    .line 456
    sget-object v4, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {p1, v4}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "currentIMSI":Ljava/lang/String;
    invoke-static {v0}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v2

    .line 458
    .local v2, "type":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    sget-object v4, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v2, v4}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 459
    invoke-virtual {v2, v4}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 460
    :cond_0
    invoke-static {v0}, Lmz;->f(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v4, "CmccAuthentication"

    const-string/jumbo v5, "getAuthenticationInfo CHINA_TELECOM OR CHINA_UNICOM clear"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1
    invoke-static {v0}, Lmz;->k(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    .line 476
    .local v1, "info_outer":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v1, :cond_2

    .line 477
    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v3

    .line 480
    .end local v1    # "info_outer":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_2
    :goto_0
    return-object v3

    .line 463
    :cond_3
    invoke-static {v0}, Lmz;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    const-string/jumbo v4, "CmccAuthentication"

    const-string/jumbo v5, "getAuthenticationInfo isIMSIchanged clear all"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string/jumbo v4, "M821"

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "M823"

    .line 467
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    :cond_4
    invoke-static {v0}, Lmz;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lnd;
    .param p3, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p4, "entry"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Lnh;

    invoke-direct {v0, p2}, Lnh;-><init>(Lnd;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;Lng;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public b(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V
    .locals 7
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;
    .param p3, "listener"    # Lnd;

    .prologue
    const/16 v1, 0x64

    .line 945
    const-string/jumbo v0, "CmccAuthentication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTokenId_outer() ---- AuthScene is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-ne p2, v0, :cond_0

    .line 948
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmz;->k(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v6

    .line 949
    .local v6, "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v6}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    if-eqz p3, :cond_0

    .line 951
    invoke-interface {p3, p1, v1, v6}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 960
    .end local v6    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_0
    :goto_0
    return-void

    .line 956
    .restart local v6    # "outerCachedInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_1
    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-ne v0, v1, :cond_0

    .line 496
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "isAuthStart | auth is running"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v0, 0x1

    .line 499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 507
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 508
    .local v0, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    return-object v0
.end method

.method public c()V
    .locals 10

    .prologue
    .line 965
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "handleConnectChanged queryAuthInfo token already exist"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v7

    .line 972
    .local v7, "oldVersionCode":I
    if-nez v7, :cond_1

    .line 973
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "handleConnectChanged first install not handle"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 977
    :cond_1
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v6

    .line 978
    .local v6, "appConfig":Lcom/iflytek/yd/business/AppConfig;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/system/ApnAccessorType;->CMNET:Lcom/iflytek/yd/system/ApnAccessorType;

    if-eq v0, v1, :cond_2

    .line 979
    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/system/ApnAccessorType;->CMWAP:Lcom/iflytek/yd/system/ApnAccessorType;

    if-ne v0, v1, :cond_4

    .line 980
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 982
    .local v8, "currentTime":J
    iget-wide v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->i:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 983
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "handleConnectChanged currentTime - lastcheckTime <= 30min"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_3
    iput-wide v8, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->i:J

    .line 988
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccLAST_CHECK_CONNECT"

    iget-wide v2, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 989
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "connect changed query auth info"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/16 v1, 0x64

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    const/4 v3, 0x3

    sget-object v4, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_NETCHANGED:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(ILcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto :goto_0

    .line 993
    .end local v8    # "currentTime":J
    :cond_4
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "handleConnectChanged current network not cmcc"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 898
    invoke-virtual {p0, p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 899
    const/4 v0, 0x0

    invoke-static {v0}, Lmz;->d(Z)V

    .line 900
    const/4 v0, 0x0

    invoke-static {v0}, Lmz;->a(Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;)V

    .line 902
    :cond_0
    return-void
.end method

.method public onChange(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;Lcom/iflytek/common/adaptation/call/AbsCallAdapter;Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;)V
    .locals 2
    .param p1, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    .param p2, "callAdapter"    # Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    .param p3, "mmsAdapter"    # Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .prologue
    .line 907
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method public onProcessRestart()Z
    .locals 2

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->f()Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-ne v0, v1, :cond_0

    .line 486
    const-string/jumbo v0, "CmccAuthentication"

    const-string/jumbo v1, "onProcessRestart | auth is running"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
