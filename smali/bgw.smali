.class Lbgw;
.super Ljava/lang/Object;

# interfaces
.implements Lbhz;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lbgp;


# direct methods
.method constructor <init>(Lbgp;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lbgw;->c:Lbgp;

    iput-object p2, p0, Lbgw;->a:Ljava/util/List;

    iput-boolean p3, p0, Lbgw;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lbfs;->c()V

    iget-object v0, p0, Lbgw;->c:Lbgp;

    iget-object v1, p0, Lbgw;->a:Ljava/util/List;

    iget-boolean v2, p0, Lbgw;->b:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lbgp;->a(Ljava/util/List;ZZ)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lbfs;->d()V

    iget-object v0, p0, Lbgw;->c:Lbgp;

    iget-object v1, p0, Lbgw;->a:Ljava/util/List;

    iget-boolean v2, p0, Lbgw;->b:Z

    invoke-virtual {v0, v1, v3, v2, v3}, Lbgp;->a(Ljava/util/List;IZZ)V

    return-void
.end method
