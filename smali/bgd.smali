.class final Lbgd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lbgd;->a:Landroid/content/Context;

    iput p2, p0, Lbgd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbgd;->a:Landroid/content/Context;

    invoke-static {v0}, Lbfs;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lbgd;->a:Landroid/content/Context;

    invoke-static {v0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v0

    iget v1, p0, Lbgd;->b:I

    invoke-virtual {v0, v1}, Lbgp;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lbfs;->f()Lbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lbgd;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lbfs;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
