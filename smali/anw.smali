.class public Lanw;
.super Ljava/lang/Object;
.source "HomeMiguSunHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Z

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "homeContext"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "HomeMiguSunHelper"

    iput-object v0, p0, Lanw;->a:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanw;->c:Z

    .line 16
    const/16 v0, 0x13

    iput v0, p0, Lanw;->d:I

    .line 20
    iput-object p1, p0, Lanw;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private c()Lcom/migu/sdk/api/InitInfo;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/migu/sdk/api/InitInfo;

    invoke-direct {v0}, Lcom/migu/sdk/api/InitInfo;-><init>()V

    .line 63
    .local v0, "initInfo":Lcom/migu/sdk/api/InitInfo;
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/migu/sdk/api/InitInfo;->setcType(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "020101LINGXI"

    invoke-virtual {v0, v1}, Lcom/migu/sdk/api/InitInfo;->setChannelId(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 25
    const/4 v2, 0x0

    iput-boolean v2, p0, Lanw;->c:Z

    .line 27
    invoke-static {}, Laof;->a()Laof;

    move-result-object v2

    invoke-virtual {v2}, Laof;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    const-string/jumbo v2, "HomeMiguSunHelper"

    const-string/jumbo v3, "SUN gray is open"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 32
    const-string/jumbo v2, "HomeMiguSunHelper"

    const-string/jumbo v3, "SDK is above Android 4.4"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string/jumbo v2, "HomeMiguSunHelper"

    const-string/jumbo v3, "SDK is init"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_0
    iget-object v2, p0, Lanw;->b:Landroid/content/Context;

    invoke-direct {p0}, Lanw;->c()Lcom/migu/sdk/api/InitInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/sdk/api/MiguSdk;->initializeApp(Landroid/content/Context;Lcom/migu/sdk/api/InitInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lanw;->c:Z

    .line 47
    .end local v1    # "version":I
    :goto_1
    return-void

    .line 37
    .restart local v1    # "version":I
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeMiguSunHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "sun init has error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "HomeMiguSunHelper"

    const-string/jumbo v3, "SDK is Not above Android 4.4"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 45
    .end local v1    # "version":I
    :cond_1
    const-string/jumbo v2, "HomeMiguSunHelper"

    const-string/jumbo v3, "SUN gray is close"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 51
    iget-boolean v1, p0, Lanw;->c:Z

    if-eqz v1, :cond_0

    .line 52
    const-string/jumbo v1, "HomeMiguSunHelper"

    const-string/jumbo v2, "SDK is destory"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    iget-object v1, p0, Lanw;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/sdk/api/MiguSdk;->exitApp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HomeMiguSunHelper"

    const-string/jumbo v2, "sun destory has error"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
