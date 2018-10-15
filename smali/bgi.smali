.class final Lbgi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbft;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbft;)V
    .locals 0

    iput-object p1, p0, Lbgi;->a:Landroid/content/Context;

    iput-object p2, p0, Lbgi;->b:Lbft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbgi;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lbgi;->b:Lbft;

    invoke-static {v0, v1, v2}, Lbfs;->a(Landroid/content/Context;ZLbft;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
