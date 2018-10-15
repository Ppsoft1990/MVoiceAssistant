.class final Lbid;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbid;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lbfs;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbfu;->a(Landroid/content/Context;)Lbfu;

    move-result-object v0

    invoke-virtual {v0}, Lbfu;->h()V

    iget-object v0, p0, Lbid;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbhn;->a(Landroid/content/Context;Z)I

    iget-object v0, p0, Lbid;->a:Landroid/content/Context;

    invoke-static {v0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    iget-object v0, p0, Lbid;->a:Landroid/content/Context;

    invoke-static {v0}, Lbia;->b(Landroid/content/Context;)Lbia;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Lbfs;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lbgj;

    invoke-direct {v0}, Lbgj;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lbfq;->a()Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbid;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lbfs;->a(Landroid/content/Context;I)V

    :cond_0
    invoke-static {}, Lbfq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v0

    const-string/jumbo v1, "Init MTA StatService success."

    invoke-virtual {v0, v1}, Lbhc;->h(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
