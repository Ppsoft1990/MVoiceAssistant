.class public final Lasn;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "PluginManagerFragment.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/base/skin/customView/XRelativeLayout;)Lasn;
    .locals 0
    .param p1, "rootView"    # Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .prologue
    .line 28
    iput-object p1, p0, Lasn;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 29
    return-object p0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lasn;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    .line 36
    .local v0, "root":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    iget-object v1, p0, Lasn;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lasn;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {p0, v1}, Lasn;->addContentView(Landroid/view/View;)V

    .line 41
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string/jumbo v1, "PluginManagerFragment"

    const-string/jumbo v2, "FATAL ERROR: ----> onCreateView mRootView is null"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroy()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lasn;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 72
    return-void
.end method

.method protected onFragmentResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onFragmentResult(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 46
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    const-string/jumbo v2, "\u63d2\u4ef6\u7ba1\u7406"

    invoke-virtual {p0, v2}, Lasn;->setTitleText(Ljava/lang/CharSequence;)V

    .line 48
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lasn;->setTitleStyle(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lasn;->setBackBtnResource(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lasn;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p0}, Lasn;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 54
    invoke-virtual {p0}, Lasn;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lasn;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lasn;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lasn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
