.class Lbgm;
.super Ljava/lang/Object;

# interfaces
.implements Lbhz;


# instance fields
.field final synthetic a:Lbgl;


# direct methods
.method constructor <init>(Lbgl;)V
    .locals 0

    iput-object p1, p0, Lbgm;->a:Lbgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lbfs;->c()V

    invoke-static {}, Lbgp;->b()Lbgp;

    move-result-object v0

    invoke-virtual {v0}, Lbgp;->a()I

    move-result v0

    invoke-static {}, Lbfq;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lbgp;->b()Lbgp;

    move-result-object v0

    invoke-static {}, Lbfq;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lbgp;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lbfs;->d()V

    return-void
.end method
