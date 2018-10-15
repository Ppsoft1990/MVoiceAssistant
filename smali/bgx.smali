.class Lbgx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbgp;


# direct methods
.method constructor <init>(Lbgp;I)V
    .locals 0

    iput-object p1, p0, Lbgx;->b:Lbgp;

    iput p2, p0, Lbgx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lbgx;->b:Lbgp;

    iget v1, p0, Lbgx;->a:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lbgp;->a(Lbgp;IZ)V

    iget-object v0, p0, Lbgx;->b:Lbgp;

    iget v1, p0, Lbgx;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbgp;->a(Lbgp;IZ)V

    return-void
.end method
