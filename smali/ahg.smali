.class public Lahg;
.super Laht;
.source "HomeMusicHelper.java"


# instance fields
.field private a:Laqb;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 4
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 26
    new-instance v1, Laqb;

    invoke-virtual {p0}, Lahg;->p()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "1134"

    const/4 v0, 0x0

    check-cast v0, Laqb$a;

    invoke-direct {v1, v2, v3, v0}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V

    iput-object v1, p0, Lahg;->a:Laqb;

    .line 27
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public b(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 32
    const-string/jumbo v0, "HomeMusicHelper"

    const-string/jumbo v1, "onResumeDelayedInWorkThread"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lahg;->a:Laqb;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lahg;->a:Laqb;

    invoke-virtual {v0}, Laqb;->a()J

    .line 36
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "HomeMusicHelper"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 43
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public onEvent(Lti;)V
    .locals 3
    .param p1, "event"    # Lti;

    .prologue
    .line 48
    const-string/jumbo v1, "HomeMusicHelper"

    const-string/jumbo v2, "get login change event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, "UserRealLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v1, "HomeMusicHelper"

    const-string/jumbo v2, "get USER_REAL_LOGIN Event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lahg;->a:Laqb;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lahg;->a:Laqb;

    invoke-virtual {v1}, Laqb;->a()J

    goto :goto_0
.end method
