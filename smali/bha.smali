.class Lbha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbgv;


# direct methods
.method constructor <init>(Lbgv;)V
    .locals 0

    iput-object p1, p0, Lbha;->a:Lbgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbha;->a:Lbgv;

    iget-object v0, v0, Lbgv;->a:Lbfu;

    invoke-virtual {v0}, Lbfu;->g()V

    return-void
.end method
