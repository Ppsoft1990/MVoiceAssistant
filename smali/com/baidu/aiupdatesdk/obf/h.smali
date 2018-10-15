.class public Lcom/baidu/aiupdatesdk/obf/h;
.super Ljava/lang/Object;
.source "AsUpdateFlow.java"


# instance fields
.field private a:Lcom/baidu/aiupdatesdk/CheckUpdateCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/h;)Lcom/baidu/aiupdatesdk/CheckUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/h;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/h;->a:Lcom/baidu/aiupdatesdk/CheckUpdateCallback;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "argApkPath"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1, p2}, Lcom/baidu/aiupdatesdk/obf/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/h;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/h;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p1}, Lcom/baidu/aiupdatesdk/obf/ae;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/b;->a(I)Lcom/baidu/aiupdatesdk/obf/b;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V

    .line 81
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/e;->a()Lcom/baidu/aiupdatesdk/obf/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/aiupdatesdk/obf/e;->a(Landroid/content/Context;)V

    .line 82
    move-object v0, p1

    .line 83
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/e;->a()Lcom/baidu/aiupdatesdk/obf/e;

    move-result-object v1

    new-instance v2, Lcom/baidu/aiupdatesdk/obf/h$2;

    invoke-direct {v2, p0, v0}, Lcom/baidu/aiupdatesdk/obf/h$2;-><init>(Lcom/baidu/aiupdatesdk/obf/h;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/aiupdatesdk/obf/e;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/e$b;)V

    .line 129
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string/jumbo v1, "bdp_update_not_net_error"

    invoke-static {p1, v1}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/baidu/aiupdatesdk/obf/v;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lcom/baidu/aiupdatesdk/obf/v;->a(Landroid/content/Context;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/h;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/CheckUpdateCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/baidu/aiupdatesdk/CheckUpdateCallback;

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/h;->a:Lcom/baidu/aiupdatesdk/CheckUpdateCallback;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "appCtx":Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ae;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/b;->a(I)Lcom/baidu/aiupdatesdk/obf/b;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V

    .line 44
    new-instance v1, Lcom/baidu/aiupdatesdk/obf/h$1;

    invoke-direct {v1, p0, v0}, Lcom/baidu/aiupdatesdk/obf/h$1;-><init>(Lcom/baidu/aiupdatesdk/obf/h;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/a;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/n;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h;->a:Lcom/baidu/aiupdatesdk/CheckUpdateCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/baidu/aiupdatesdk/CheckUpdateCallback;->onCheckUpdateCallback(Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    goto :goto_0
.end method
