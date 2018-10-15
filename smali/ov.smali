.class final Lov;
.super Ljava/lang/Object;
.source "PermissionLog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lov;->b:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lov;->c:I

    .line 43
    iput-object p1, p0, Lov;->a:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lov;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.huawei.systemmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lov;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lov;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lov;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.security"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lov;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lenovo.safecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lov;->a:Landroid/content/Context;

    invoke-static {v0}, Low;->a(Landroid/content/Context;)Low;

    move-result-object v0

    const-string/jumbo v1, "PermissionSettings.KEY_UPLOAD"

    invoke-virtual {v0, v1}, Low;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lov;->c:I

    .line 51
    return-void
.end method

.method static synthetic a(Lov;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lov;

    .prologue
    .line 22
    iget-object v0, p0, Lov;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lov;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lov;

    .prologue
    .line 22
    iget-object v0, p0, Lov;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lov;->c:I

    iget-object v1, p0, Lov;->a:Landroid/content/Context;

    invoke-static {v1}, Lhl;->h(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 55
    const-string/jumbo v0, "PermissionLog"

    const-string/jumbo v1, "collectPermissionInfo already upload"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lov$1;

    invoke-direct {v1, p0}, Lov$1;-><init>(Lov;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
