.class final Lbih;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbft;

.field final synthetic c:Lbfw;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbft;Lbfw;)V
    .locals 0

    iput-object p1, p0, Lbih;->a:Landroid/content/Context;

    iput-object p2, p0, Lbih;->b:Lbft;

    iput-object p3, p0, Lbih;->c:Lbfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lbfv;

    iget-object v1, p0, Lbih;->a:Landroid/content/Context;

    iget-object v2, p0, Lbih;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lbih;->b:Lbft;

    invoke-static {v2, v3, v4}, Lbfs;->a(Landroid/content/Context;ZLbft;)I

    move-result v2

    iget-object v3, p0, Lbih;->c:Lbfw;

    iget-object v3, v3, Lbfw;->a:Ljava/lang/String;

    iget-object v4, p0, Lbih;->b:Lbft;

    invoke-direct {v0, v1, v2, v3, v4}, Lbfv;-><init>(Landroid/content/Context;ILjava/lang/String;Lbft;)V

    invoke-virtual {v0}, Lbfv;->a()Lbfw;

    move-result-object v1

    iget-object v2, p0, Lbih;->c:Lbfw;

    iget-object v2, v2, Lbfw;->c:Lorg/json/JSONObject;

    iput-object v2, v1, Lbfw;->c:Lorg/json/JSONObject;

    new-instance v1, Lbgl;

    invoke-direct {v1, v0}, Lbgl;-><init>(Lbfy;)V

    invoke-virtual {v1}, Lbgl;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lbih;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lbfs;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
