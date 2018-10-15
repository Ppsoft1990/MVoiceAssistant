.class public Lagw;
.super Laht;
.source "HomeBlcHelper.java"


# instance fields
.field private a:Lxl;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 111
    invoke-virtual {p0}, Lagw;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxo;->a(Landroid/content/Context;)Lxo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lxo;->a(J)V

    .line 112
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lagw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->b()V

    .line 56
    invoke-virtual {p0}, Lagw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->c()V

    .line 58
    invoke-static {}, Lapc;->a()Lapc;

    move-result-object v0

    invoke-virtual {v0}, Lapc;->b()V

    .line 59
    invoke-super {p0}, Laht;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    new-instance v1, Lxl;

    invoke-virtual {p0}, Lagw;->o()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ViaFlyApp;

    invoke-direct {v1, v0}, Lxl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lagw;->a:Lxl;

    .line 38
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lagw;->a:Lxl;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lagw;->a:Lxl;

    invoke-virtual {p0}, Lagw;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxl;->a(Landroid/content/Context;)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lagw;->a:Lxl;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lagw;->a:Lxl;

    invoke-virtual {p0}, Lagw;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-super {p0}, Laht;->b()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-virtual {p0}, Lagw;->q()Lahw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lagw;->q()Lahw;

    move-result-object v0

    new-instance v1, Lagw$1;

    invoke-direct {v1, p0, p1}, Lagw$1;-><init>(Lagw;Landroid/content/Intent;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public b(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lagw;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvo;->b(Landroid/content/Context;)Lvo;

    move-result-object v0

    invoke-virtual {v0}, Lvo;->b()V

    .line 84
    invoke-virtual {p0}, Lagw;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvp;->b(Landroid/content/Context;)Lvp;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lvp;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/iflytek/common/adaptation/AdaptationManager;->getInstance()Lcom/iflytek/common/adaptation/AdaptationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/AdaptationManager;->checkVersion()V

    .line 88
    invoke-virtual {p0}, Lagw;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvs;->a(Landroid/content/Context;)Lvs;

    move-result-object v0

    invoke-virtual {v0}, Lvs;->a()V

    .line 91
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method
