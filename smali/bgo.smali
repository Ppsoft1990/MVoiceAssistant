.class Lbgo;
.super Ljava/lang/Object;

# interfaces
.implements Lbhz;


# instance fields
.field final synthetic a:Lbgl;


# direct methods
.method constructor <init>(Lbgl;)V
    .locals 0

    iput-object p1, p0, Lbgo;->a:Lbgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lbfs;->c()V

    invoke-static {}, Lbgp;->b()Lbgp;

    move-result-object v0

    iget v0, v0, Lbgp;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbgo;->a:Lbgl;

    invoke-static {v0}, Lbgl;->a(Lbgl;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lbfs;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    invoke-static {}, Lbgp;->b()Lbgp;

    move-result-object v0

    iget-object v1, p0, Lbgo;->a:Lbgl;

    invoke-static {v1}, Lbgl;->b(Lbgl;)Lbfy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lbgo;->a:Lbgl;

    invoke-static {v3}, Lbgl;->c(Lbgl;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lbgp;->a(Lbfy;Lbhz;ZZ)V

    invoke-static {}, Lbfs;->d()V

    return-void
.end method
