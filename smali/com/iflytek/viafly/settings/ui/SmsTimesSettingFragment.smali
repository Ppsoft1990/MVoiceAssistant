.class public final Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;
.source "SmsTimesSettingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "com.iflytek.cmccIFLY_NOTIFY_SMS_TIMES"

    return-object v0
.end method

.method protected getSummaryItems()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 22
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    const v2, 0x7f0c0229

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 24
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->setTitleStyle(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->setBackBtnResource(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
