.class final Lbge;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbge;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbgk;

    iget-object v2, p0, Lbge;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lbgk;-><init>(Landroid/content/Context;Ljava/util/Map;Lbft;)V

    const-string/jumbo v2, "NetworkMonitorTask"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lbge;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lbfs;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
