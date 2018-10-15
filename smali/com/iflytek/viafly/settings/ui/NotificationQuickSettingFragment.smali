.class public Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "NotificationQuickSettingFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationQuickSettingFragment"


# instance fields
.field private authenticationListener:Lnd;

.field private cafImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

.field private cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

.field private micImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

.field private micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->updateCafSwitchState(Z)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    return-void
.end method

.method private updateCafSwitchState(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->switchState(Z)V

    .line 164
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzn;->a(Z)V

    .line 165
    return-void
.end method

.method private updateMicSwitchState(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->switchState(Z)V

    .line 170
    return-void
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide v4, 0x404b800000000000L    # 55.0

    .line 53
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    .line 54
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    const v2, 0x7f0c018a

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setTitle(I)V

    .line 55
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    const v2, 0x7f0c018b

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setSummary(I)V

    .line 56
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setMinHeight(I)V

    .line 58
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v2

    invoke-virtual {v2}, Lzn;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setChecked(Z)V

    .line 59
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 61
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    .line 62
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    const v2, 0x7f0202e7

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->setImage(I)V

    .line 63
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->switchState(Z)V

    .line 64
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 66
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "emptyViewSpace":Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 70
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    .line 71
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    const v2, 0x7f0c018c

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setTitle(I)V

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setMinHeight(I)V

    .line 74
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v2

    invoke-virtual {v2}, Lzq;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setChecked(Z)V

    .line 75
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 77
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    const v2, 0x7f0202e8

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->setImage(I)V

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->switchState(Z)V

    .line 80
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micImage:Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v1

    .line 94
    .local v1, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    if-ne v1, v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->updateMicSwitchState(Z)V

    .line 98
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT71001"

    invoke-virtual {v2, v3}, Lwy;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->micNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lzq;->a(Z)V

    .line 107
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v2

    invoke-virtual {v2}, Lzq;->h()V

    .line 159
    :cond_0
    :goto_1
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v2

    invoke-virtual {v2}, Lzq;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    const-string/jumbo v2, "\u8be5\u529f\u80fd\u6682\u65f6\u4e0d\u53ef\u7528"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_2
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->updateMicSwitchState(Z)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    if-ne v1, v2, :cond_0

    .line 109
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v0

    .line 111
    .local v0, "controller":Lzn;
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->cafNotificationSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    invoke-virtual {v0}, Lzn;->u()V

    .line 113
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->updateCafSwitchState(Z)V

    .line 115
    invoke-virtual {v0}, Lzn;->x()V

    goto :goto_1

    .line 121
    :cond_4
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v2

    invoke-virtual {v2}, Lzn;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v2

    invoke-virtual {v2}, Lzn;->n()Z

    move-result v2

    if-nez v2, :cond_6

    .line 122
    :cond_5
    const-string/jumbo v2, "\u8be5\u529f\u80fd\u6682\u65f6\u4e0d\u53ef\u7528"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_6
    invoke-virtual {v0}, Lzn;->p()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->updateCafSwitchState(Z)V

    .line 129
    invoke-virtual {v0}, Lzn;->t()V

    goto :goto_1

    .line 132
    :cond_7
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 133
    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u7528\u6237\u767b\u5f55\u540e\u624d\u53ef\u4ee5\u4f7f\u7528"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_8
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->authenticationListener:Lnd;

    if-nez v2, :cond_9

    .line 137
    const-string/jumbo v2, "NotificationQuickSettingFragment"

    const-string/jumbo v3, "init authenticationListener."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v2, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;Lzn;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->authenticationListener:Lnd;

    .line 152
    :cond_9
    const-string/jumbo v2, "NotificationQuickSettingFragment"

    const-string/jumbo v3, "start authentication listener."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->authenticationListener:Lnd;

    sget-object v5, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v6, "notificationSetting"

    .line 153
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f0c018d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
