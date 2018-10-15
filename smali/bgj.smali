.class Lbgj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbfs;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lbfq;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lbfs;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v7

    new-instance v0, Lbfx;

    invoke-static {}, Lbfs;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lbfs;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Lbfs;->a(Landroid/content/Context;ZLbft;)I

    move-result v2

    const/4 v3, 0x2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lbfx;-><init>(Landroid/content/Context;IILjava/lang/Throwable;Ljava/lang/Thread;Lbft;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v6, v8, v1}, Lbgp;->a(Lbfy;Lbhz;ZZ)V

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v0

    const-string/jumbo v1, "MTA has caught the following uncaught exception:"

    invoke-virtual {v0, v1}, Lbhc;->g(Ljava/lang/Object;)V

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbhc;->a(Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {}, Lbfs;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbfs;->g(Landroid/content/Context;)V

    invoke-static {}, Lbfs;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v0

    const-string/jumbo v1, "Call the original uncaught exception handler."

    invoke-virtual {v0, v1}, Lbhc;->h(Ljava/lang/Object;)V

    invoke-static {}, Lbfs;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lbgj;

    if-nez v0, :cond_0

    invoke-static {}, Lbfs;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
