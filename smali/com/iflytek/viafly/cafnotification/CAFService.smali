.class public Lcom/iflytek/viafly/cafnotification/CAFService;
.super Landroid/app/Service;
.source "CAFService.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/cafnotification/CAFService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/cafnotification/CAFService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/cafnotification/CAFService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/cafnotification/CAFService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "CAFService"

    const-string/jumbo v1, "caf service created."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/iflytek/viafly/cafnotification/CAFService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "CAFService"

    const-string/jumbo v1, "caf service destroyed."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 49
    const-string/jumbo v4, "CAFService"

    const-string/jumbo v5, "new intent coming."

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v0

    .line 53
    .local v0, "cafManager":Lzn;
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 55
    .local v3, "timer":Ljava/util/Timer;
    const/4 v2, 0x1

    .line 56
    .local v2, "isManual":Z
    if-eqz p1, :cond_0

    .line 57
    const-string/jumbo v4, "is_manual"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 61
    :cond_0
    new-instance v1, Lzm;

    iget-object v4, p0, Lcom/iflytek/viafly/cafnotification/CAFService;->b:Landroid/content/Context;

    new-instance v5, Lcom/iflytek/viafly/cafnotification/CAFService$1;

    invoke-direct {v5, p0, v3, p3, v0}, Lcom/iflytek/viafly/cafnotification/CAFService$1;-><init>(Lcom/iflytek/viafly/cafnotification/CAFService;Ljava/util/Timer;ILzn;)V

    invoke-direct {v1, v4, v5, v2}, Lzm;-><init>(Landroid/content/Context;Lwd;Z)V

    .line 150
    .local v1, "helper":Lzm;
    new-instance v4, Lcom/iflytek/viafly/cafnotification/CAFService$2;

    invoke-direct {v4, p0, v1, p3, v0}, Lcom/iflytek/viafly/cafnotification/CAFService$2;-><init>(Lcom/iflytek/viafly/cafnotification/CAFService;Lzm;ILzn;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 162
    invoke-virtual {v1}, Lzm;->a()J

    .line 163
    const/4 v4, 0x2

    return v4
.end method
