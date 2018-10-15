.class public final Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;
.source "SmsPatternSettingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "com.iflytek.cmccIFLY_NOTIFY_SMS_PATTERN"

    return-object v0
.end method

.method protected defaultIndex()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    return v0
.end method

.method protected getSummaryItems()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x2

    .line 23
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 24
    const v2, 0x7f0c021d

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 31
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
