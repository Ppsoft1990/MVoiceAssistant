.class public Lamg;
.super Laht;
.source "HomeCollectHelper.java"


# instance fields
.field private a:Lamx;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lamq;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 1
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 70
    new-instance v0, Lamg$1;

    invoke-direct {v0, p0}, Lamg$1;-><init>(Lamg;)V

    iput-object v0, p0, Lamg;->d:Lamq;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamg;->c:Ljava/util/List;

    .line 39
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lamg;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lamg;

    .prologue
    .line 29
    iget-object v0, p0, Lamg;->c:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v0

    invoke-virtual {v0}, Lanv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_0
    const-string/jumbo v0, "HomeCollectHelper"

    const-string/jumbo v1, "requestAllCollect return, user unlogin or longtoken is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lamg;->a:Lamx;

    if-nez v0, :cond_3

    .line 109
    new-instance v0, Lamx;

    invoke-virtual {p0}, Lamg;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lamg;->d:Lamq;

    invoke-direct {v0, v1, v2}, Lamx;-><init>(Landroid/content/Context;Lamq;)V

    iput-object v0, p0, Lamg;->a:Lamx;

    .line 112
    :cond_3
    const-string/jumbo v0, "HomeCollectHelper"

    const-string/jumbo v1, " update user bookmark list"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lamg;->a:Lamx;

    invoke-virtual {v0}, Lamx;->a()J

    goto :goto_0
.end method


# virtual methods
.method public b(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 44
    const-string/jumbo v0, "HomeCollectHelper"

    const-string/jumbo v1, "onResumeDelayedInWorkThread"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lamg;->h()V

    .line 46
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "HomeCollectHelper"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lamg;->a:Lamx;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lamg;->a:Lamx;

    invoke-virtual {v0}, Lamx;->b()V

    .line 57
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public onEvent(Lanu;)V
    .locals 2
    .param p1, "event"    # Lanu;

    .prologue
    .line 63
    const-string/jumbo v0, "HomeCollectHelper"

    const-string/jumbo v1, "onEvent get long token"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lamg;->h()V

    goto :goto_0
.end method
