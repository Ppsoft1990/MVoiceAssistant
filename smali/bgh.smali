.class final Lbgh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbft;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbft;)V
    .locals 0

    iput-object p1, p0, Lbgh;->a:Landroid/content/Context;

    iput-object p2, p0, Lbgh;->b:Lbft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbgh;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v0

    const-string/jumbo v1, "The Context of StatService.onResume() can not be null!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbgh;->a:Landroid/content/Context;

    iget-object v1, p0, Lbgh;->a:Landroid/content/Context;

    invoke-static {v1}, Lbhn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbgh;->b:Lbft;

    invoke-static {v0, v1, v2}, Lbfs;->a(Landroid/content/Context;Ljava/lang/String;Lbft;)V

    goto :goto_0
.end method
