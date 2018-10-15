.class public Lcr;
.super Ljava/lang/Object;

# interfaces
.implements Lcx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcr$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcr$1;

    invoke-direct {v0, p0, p1}, Lcr$1;-><init>(Lcr;Landroid/os/Handler;)V

    iput-object v0, p0, Lcr;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcn/a/a/n;Lcn/a/a/u;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/a/a/n",
            "<*>;",
            "Lcn/a/a/u;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "post-error"

    invoke-virtual {p1, v0}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcw;->a(Lcn/a/a/u;)Lcw;

    move-result-object v0

    iget-object v1, p0, Lcr;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcr$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcr$a;-><init>(Lcr;Lcn/a/a/n;Lcw;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcn/a/a/n;Lcw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/a/a/n",
            "<*>;",
            "Lcw",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcr;->a(Lcn/a/a/n;Lcw;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcn/a/a/n;Lcw;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/a/a/n",
            "<*>;",
            "Lcw",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcn/a/a/n;->v()V

    const-string/jumbo v0, "post-response"

    invoke-virtual {p1, v0}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcr;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcr$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcr$a;-><init>(Lcr;Lcn/a/a/n;Lcw;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
