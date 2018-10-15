.class Lbgt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfy;

.field final synthetic b:Lbhz;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lbgp;


# direct methods
.method constructor <init>(Lbgp;Lbfy;Lbhz;ZZ)V
    .locals 0

    iput-object p1, p0, Lbgt;->e:Lbgp;

    iput-object p2, p0, Lbgt;->a:Lbfy;

    iput-object p3, p0, Lbgt;->b:Lbhz;

    iput-boolean p4, p0, Lbgt;->c:Z

    iput-boolean p5, p0, Lbgt;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lbgt;->e:Lbgp;

    iget-object v1, p0, Lbgt;->a:Lbfy;

    iget-object v2, p0, Lbgt;->b:Lbhz;

    iget-boolean v3, p0, Lbgt;->c:Z

    iget-boolean v4, p0, Lbgt;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lbgp;->a(Lbgp;Lbfy;Lbhz;ZZ)V

    return-void
.end method
