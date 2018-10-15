.class Lbgu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbhx;

.field final synthetic b:Lbgp;


# direct methods
.method constructor <init>(Lbgp;Lbhx;)V
    .locals 0

    iput-object p1, p0, Lbgu;->b:Lbgp;

    iput-object p2, p0, Lbgu;->a:Lbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbgu;->b:Lbgp;

    iget-object v1, p0, Lbgu;->a:Lbhx;

    invoke-static {v0, v1}, Lbgp;->a(Lbgp;Lbhx;)V

    return-void
.end method
