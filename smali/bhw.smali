.class Lbhw;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lbhv;


# direct methods
.method constructor <init>(Lbhv;)V
    .locals 0

    iput-object p1, p0, Lbhw;->a:Lbhv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lbfq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbhn;->b()Lbhc;

    move-result-object v0

    const-string/jumbo v1, "TimerTask run"

    invoke-virtual {v0, v1}, Lbhc;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lbhw;->a:Lbhv;

    invoke-static {v0}, Lbhv;->a(Lbhv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbfs;->h(Landroid/content/Context;)V

    invoke-virtual {p0}, Lbhw;->cancel()Z

    iget-object v0, p0, Lbhw;->a:Lbhv;

    invoke-virtual {v0}, Lbhv;->a()V

    return-void
.end method
