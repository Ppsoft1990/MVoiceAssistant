.class public Lagz;
.super Laht;
.source "HomeFragmentHelper.java"


# instance fields
.field private a:Lte;

.field private c:Lcom/iflytek/viafly/HomeRootView;

.field private d:Z


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lagz;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "homeRootViewContainer":Landroid/widget/RelativeLayout;
    const v1, 0x6f0b0191

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 38
    invoke-virtual {p0}, Lagz;->s()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lagz;->d:Z

    .line 40
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lagz;->d:Z

    .line 60
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public e()Lte;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lagz;->a:Lte;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/iflytek/viafly/HomeRootView;

    invoke-virtual {p0}, Lagz;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/HomeRootView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lagz;->c:Lcom/iflytek/viafly/HomeRootView;

    .line 47
    new-instance v0, Lte;

    invoke-direct {v0}, Lte;-><init>()V

    iput-object v0, p0, Lagz;->a:Lte;

    .line 48
    iget-object v0, p0, Lagz;->a:Lte;

    iget-object v1, p0, Lagz;->c:Lcom/iflytek/viafly/HomeRootView;

    invoke-virtual {v0, v1}, Lte;->a(Lcom/iflytek/viafly/HomeRootView;)Lte;

    .line 49
    invoke-super {p0}, Laht;->f()Z

    move-result v0

    return v0
.end method

.method public g()Lcom/iflytek/viafly/HomeRootView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lagz;->c:Lcom/iflytek/viafly/HomeRootView;

    return-object v0
.end method
