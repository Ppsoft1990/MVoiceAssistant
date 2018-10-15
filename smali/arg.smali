.class Larg;
.super Larf;
.source "PluginAutoInstallStrategyImpl.java"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Larf;-><init>()V

    .line 20
    iput-object p1, p0, Larg;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 49
    const-string/jumbo v3, "connectivity"

    .line 50
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 52
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 53
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

.method private static b(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 58
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 59
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
.method public a()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Larg;->b:Landroid/content/Context;

    invoke-static {v0}, Larg;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Larg;->b:Landroid/content/Context;

    invoke-static {v0}, Larg;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Larg;->b:Landroid/content/Context;

    invoke-static {v0}, Larg;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Larg;->b:Landroid/content/Context;

    invoke-static {v0}, Larg;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Larg;->a:Larh;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Larg;->a:Larh;

    invoke-interface {v0}, Larh;->a()V

    .line 34
    :cond_0
    const-string/jumbo v0, "PluginAutoInstallStrategyImpl"

    const-string/jumbo v1, "handleEnviromentChanged() strategy effected"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Larg;->b:Landroid/content/Context;

    invoke-static {v0}, Larg;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Larg;->a:Larh;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Larg;->a:Larh;

    invoke-interface {v0}, Larh;->b()V

    .line 39
    :cond_2
    const-string/jumbo v0, "PluginAutoInstallStrategyImpl"

    const-string/jumbo v1, "handleEnviromentChanged() strategy uneffected"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_3
    const-string/jumbo v0, "PluginAutoInstallStrategyImpl"

    const-string/jumbo v1, "handleEnviromentChanged() do nothing"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
