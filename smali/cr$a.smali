.class Lcr$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcr;

.field private final b:Lcn/a/a/n;

.field private final c:Lcw;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcr;Lcn/a/a/n;Lcw;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcr$a;->a:Lcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcr$a;->b:Lcn/a/a/n;

    iput-object p3, p0, Lcr$a;->c:Lcw;

    iput-object p4, p0, Lcr$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcr$a;->b:Lcn/a/a/n;

    invoke-virtual {v0}, Lcn/a/a/n;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcr$a;->b:Lcn/a/a/n;

    const-string/jumbo v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcn/a/a/n;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcr$a;->c:Lcw;

    invoke-virtual {v0}, Lcw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcr$a;->b:Lcn/a/a/n;

    iget-object v1, p0, Lcr$a;->c:Lcw;

    iget-object v1, v1, Lcw;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcn/a/a/n;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcr$a;->c:Lcw;

    iget-boolean v0, v0, Lcw;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcr$a;->b:Lcn/a/a/n;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcr$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcr$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcr$a;->b:Lcn/a/a/n;

    iget-object v1, p0, Lcr$a;->c:Lcw;

    iget-object v1, v1, Lcw;->c:Lcn/a/a/u;

    invoke-virtual {v0, v1}, Lcn/a/a/n;->b(Lcn/a/a/u;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcr$a;->b:Lcn/a/a/n;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lcn/a/a/n;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
