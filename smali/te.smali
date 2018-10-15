.class public final Lte;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "HomeFragment.java"


# instance fields
.field private a:Lcom/iflytek/viafly/HomeRootView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/HomeRootView;)Lte;
    .locals 0
    .param p1, "homeRootView"    # Lcom/iflytek/viafly/HomeRootView;

    .prologue
    .line 21
    iput-object p1, p0, Lte;->a:Lcom/iflytek/viafly/HomeRootView;

    .line 22
    return-object p0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lte;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 30
    iget-object v0, p0, Lte;->a:Lcom/iflytek/viafly/HomeRootView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroy()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lte;->a:Lcom/iflytek/viafly/HomeRootView;

    .line 43
    return-void
.end method

.method protected onFragmentResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onFragmentResult(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onResume()V

    .line 36
    return-void
.end method
