.class public abstract Lben;
.super Ljava/lang/Object;


# instance fields
.field protected e:Lbem;

.field protected f:Z

.field protected g:Lbeo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lben;->f:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lbem;)V
    .locals 0

    iput-object p1, p0, Lben;->e:Lbem;

    return-void
.end method

.method public a(Lbeo;)V
    .locals 0

    iput-object p1, p0, Lben;->g:Lbeo;

    return-void
.end method

.method public d()Lbem;
    .locals 1

    iget-object v0, p0, Lben;->e:Lbem;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lben;->f:Z

    return v0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lben;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lben;->g:Lbeo;

    invoke-interface {v0, p0}, Lbeo;->a(Lben;)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lben;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lben;->g:Lbeo;

    invoke-interface {v0, p0}, Lbeo;->b(Lben;)V

    goto :goto_0
.end method
