.class public Lahj;
.super Laht;
.source "HomeNewsHelper.java"


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Laht;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public a(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 24
    invoke-virtual {p0}, Lahj;->p()Landroid/content/Context;

    move-result-object v0

    sget v1, Lof;->i:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    .line 25
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lahj;->p()Landroid/content/Context;

    move-result-object v0

    sget v1, Lof;->i:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    .line 37
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Laht;->c_()Z

    move-result v0

    return v0
.end method
