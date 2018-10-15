.class public abstract Llc;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lmc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmc;

    invoke-direct {v0}, Lmc;-><init>()V

    iput-object v0, p0, Llc;->a:Lmc;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llc;->a:Lmc;

    invoke-virtual {v0}, Lmc;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llc;->a:Lmc;

    invoke-virtual {v0, p1}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "params"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llc;->a:Lmc;

    invoke-virtual {v1}, Lmc;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Llc;->a:Lmc;

    invoke-virtual {v1, p2}, Lmc;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Llc;->a:Lmc;

    invoke-virtual {v0, p1}, Lmc;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Llc;->a:Lmc;

    invoke-virtual {v1, p1, p2}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lmc;)Z
    .locals 1

    invoke-virtual {p1}, Lmc;->b()Lmc;

    move-result-object v0

    iput-object v0, p0, Llc;->a:Lmc;

    const/4 v0, 0x1

    return v0
.end method
