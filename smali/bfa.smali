.class public abstract Lbfa;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfa;->a:Landroid/os/Handler;

    iput-object p2, p0, Lbfa;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lbfa;->c:Z

    iput-boolean v0, p0, Lbfa;->d:Z

    return-void
.end method

.method static synthetic a(Lbfa;)V
    .locals 0

    invoke-direct {p0}, Lbfa;->f()V

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfa;->d:Z

    invoke-virtual {p0}, Lbfa;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbfa;->b:Ljava/lang/String;

    invoke-static {v0}, Lbeu;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lbfa;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbfa;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lber;->b(Ljava/io/File;)V

    invoke-virtual {p0}, Lbfa;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lbeu;->a(Lorg/json/JSONObject;Ljava/io/File;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfa;->c:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lbfa;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lbfa;->b()V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lbfa;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lbfa;->c:Z

    iget-boolean v0, p0, Lbfa;->d:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lbfa;->d:Z

    iget-object v0, p0, Lbfa;->a:Landroid/os/Handler;

    new-instance v1, Lbfa$1;

    invoke-direct {v1, p0}, Lbfa$1;-><init>(Lbfa;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public abstract e()Lorg/json/JSONObject;
.end method
