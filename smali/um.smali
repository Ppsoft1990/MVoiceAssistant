.class public abstract Lum;
.super Ljava/lang/Object;
.source "AlarmRequestManager.java"


# instance fields
.field protected a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "AlarmRequestManager"

    iput-object v0, p0, Lum;->b:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lum;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private g()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 85
    iget-object v3, p0, Lum;->a:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    .line 86
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 88
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 89
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lum;->a:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 94
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 95
    .local v1, "screen":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(J)V
    .locals 3
    .param p1, "nextRequest"    # J

    .prologue
    .line 56
    const-string/jumbo v0, "AlarmRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveNextRequestTime() | next request time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-static {p1, p2}, Lvb;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lum;->a()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1, p1, p2}, Lil;->a(Ljava/lang/String;J)V

    .line 60
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .param p1, "downTime"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "AlarmRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveNextRequestTime() | auto downlaod time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lum;->b()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected c()J
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {p0}, Lum;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {p0}, Lum;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Luw;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lum;->d()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "downloadTimes":Ljava/lang/String;
    invoke-static {v0}, Luw;->a(Ljava/lang/String;)Luw;

    move-result-object v1

    .line 76
    .local v1, "time":Luw;
    return-object v1
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lum;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lum;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
