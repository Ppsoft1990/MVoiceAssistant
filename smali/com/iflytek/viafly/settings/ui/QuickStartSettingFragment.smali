.class public final Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "QuickStartSettingFragment.java"


# static fields
.field private static final PKG_NAME_VOICE_LOCK:Ljava/lang/String; = "com.iflytek.lockscreen"

.field private static final TAG:Ljava/lang/String; = "QuickStartSettingFragment"


# instance fields
.field private lockScreenDownloadUrl:Ljava/lang/String;

.field private mAppInstallController:Lui;

.field private mAppInstallEventListener:Lui$a;

.field private mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

.field private mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mRefreshFromSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mRefreshFromSetting:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->lockScreenDownloadUrl:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mAppInstallEventListener:Lui$a;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->lockScreenDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method private setVoiceActivatedLock()V
    .locals 8

    .prologue
    .line 209
    const/4 v7, 0x0

    .line 210
    .local v7, "isVoiceLockInstalled":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.lockscreen"

    invoke-virtual {v0, v1}, Lgq;->d(Ljava/lang/String;)Z

    move-result v7

    .line 211
    if-eqz v7, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.lockscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "QuickStartSettingFragment"

    const-string/jumbo v1, "open lock screen error"

    invoke-static {v0, v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mAppInstallController:Lui;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->lockScreenDownloadUrl:Ljava/lang/String;

    const-string/jumbo v2, "\u7075\u7280\u58f0\u7eb9\u9501\u5c4f"

    const-string/jumbo v3, "com.iflytek.lockscreen"

    const/4 v4, 0x1

    const-string/jumbo v5, "setting_lock_screen"

    invoke-virtual/range {v0 .. v5}, Lui;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    .line 151
    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 154
    .local v0, "height":I
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 155
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, p1, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 156
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 159
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 160
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0188

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 161
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0171

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 162
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 165
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 169
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 170
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v3, "\u8bed\u97f3\u5524\u9192"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v3, "\u5728\u9996\u9875\u548c\u9ea6\u514b\u98ce\u754c\u9762\u4e0b\uff0c\u8bf4\u201c\u7075\u7280\u7075\u7280\u201d\u5373\u53ef\u5524\u9192"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 173
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setStateTextVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 175
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 179
    invoke-static {}, Lqe;->a()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 180
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 181
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c018d

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 182
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0173

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 183
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 184
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 188
    :cond_0
    const/4 v1, 0x0

    .line 189
    .local v1, "isVoiceLockInstalled":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.lockscreen"

    invoke-virtual {v2, v3}, Lgq;->d(Ljava/lang/String;)Z

    move-result v1

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v0

    const-string/jumbo v1, "20003"

    invoke-virtual {v0, v1}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->lockScreenDownloadUrl:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->lockScreenDownloadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "http://download.voicecloud.cn/108vls/23010000/LockScreen_v2.3.1117.apk"

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->lockScreenDownloadUrl:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "QuickStartSettingFragment"

    const-string/jumbo v1, "use default url"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    const-string/jumbo v0, "QuickStartSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockScreenDownloadUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->lockScreenDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lui;->a(Landroid/content/Context;)Lui;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mAppInstallController:Lui;

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mAppInstallController:Lui;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui;->a(Landroid/app/Activity;)V

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mAppInstallController:Lui;

    const-string/jumbo v1, "QuickStartSettingFragment"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mAppInstallEventListener:Lui$a;

    invoke-virtual {v0, v1, v2}, Lui;->a(Ljava/lang/String;Lui$a;)V

    .line 60
    return-void

    .line 53
    :cond_0
    const-string/jumbo v0, "QuickStartSettingFragment"

    const-string/jumbo v1, "use issued url"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDestroy()V

    .line 96
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 97
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 98
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 100
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mAppInstallController:Lui;

    const-string/jumbo v1, "QuickStartSettingFragment"

    invoke-virtual {v0, v1}, Lui;->a(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 104
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
    const v6, 0x7f0c00bf

    .line 117
    const-string/jumbo v3, "QuickStartSettingFragment"

    const-string/jumbo v4, "onItemClick()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 120
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v2

    .line 121
    .local v2, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mQuickNotificationToolSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v2, v3, :cond_1

    .line 122
    new-instance v3, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;

    invoke-direct {v4}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 125
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90109"

    invoke-virtual {v3, v4}, Lwy;->a(Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mMicShortcutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v2, v3, :cond_2

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .line 130
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-static {v0, v3, v4, v5}, Lazv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .line 132
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0203c1

    .line 133
    invoke-static {v0, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    .line 131
    invoke-static {v0, v3, v4, v5, v6}, Lazv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)V

    .line 136
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90107"

    invoke-virtual {v3, v4}, Lwy;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mBackWakeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v2, v3, :cond_0

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90108"

    invoke-virtual {v3, v4}, Lwy;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 109
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onPause()V

    .line 82
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStart()V

    .line 73
    const-string/jumbo v0, "QuickStartSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mRefreshFromSetting:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->notifyDataSetChanged()V

    .line 77
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStop()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mRefreshFromSetting:Z

    .line 89
    const-string/jumbo v0, "QuickStartSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0c019f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
