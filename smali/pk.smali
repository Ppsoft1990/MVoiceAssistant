.class public Lpk;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:I

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x3e8

    iput v0, p0, Lpk;->b:I

    .line 37
    new-instance v0, Lpk$1;

    invoke-direct {v0, p0}, Lpk$1;-><init>(Lpk;)V

    iput-object v0, p0, Lpk;->c:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lpk;->a:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic a(Lpk;Lpi;)V
    .locals 0
    .param p0, "x0"    # Lpk;
    .param p1, "x1"    # Lpi;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lpk;->b(Lpi;)V

    return-void
.end method

.method private b(Lpi;)V
    .locals 2
    .param p1, "interceptor"    # Lpi;

    .prologue
    .line 61
    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v1, "handleAddRequest"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-interface {p1}, Lpi;->b()V

    .line 67
    invoke-interface {p1}, Lpi;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lpi;)V
    .locals 3
    .param p1, "interceptor"    # Lpi;

    .prologue
    .line 26
    const-string/jumbo v1, "PermissionManager"

    const-string/jumbo v2, "addRequest"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-nez p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lpk;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 32
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lpk;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
