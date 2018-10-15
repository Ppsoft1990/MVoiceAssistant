.class Lbgs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbgp;


# direct methods
.method constructor <init>(Lbgp;)V
    .locals 0

    iput-object p1, p0, Lbgs;->a:Lbgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbgs;->a:Lbgp;

    invoke-static {v0}, Lbgp;->a(Lbgp;)V

    return-void
.end method
