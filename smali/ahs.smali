.class public Lahs;
.super Laht;
.source "HomeVersionChecker.java"

# interfaces
.implements Lvu$a;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 21
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 68
    .line 69
    invoke-virtual {p0}, Lahs;->o()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Lvu;->b(Lvu$a;)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 56
    const-string/jumbo v0, "HomeVersionChecker"

    const-string/jumbo v1, "onVerionCheckError"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lahs;->k()V

    .line 58
    return-void
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 47
    const-string/jumbo v0, "HomeVersionChecker"

    const-string/jumbo v1, "onVersionCheckResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lahs;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {v0}, Lvu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lahs;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {v0}, Lvu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lahs;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {p0}, Lahs;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvu;->c(Landroid/content/Context;)V

    .line 51
    :cond_0
    invoke-direct {p0}, Lahs;->k()V

    .line 52
    return-void
.end method

.method public b(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 29
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 39
    const-string/jumbo v0, "HomeVersionChecker"

    const-string/jumbo v1, "this api level is not supported"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lahs;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lvu;->a(ILvu$a;Z)V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lahs;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {v0}, Lvu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lahs;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {v0}, Lvu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lahs;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {p0}, Lahs;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvu;->c(Landroid/content/Context;)V

    .line 65
    :cond_0
    return-void
.end method
