.class public final Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "RemindSubSettingFragment.java"


# static fields
.field private static final MSG_REFREST_FROM_SETTING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemindSubSettingFragment"


# instance fields
.field private mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

.field private mHandler:Landroid/os/Handler;

.field private mRefreshFromSetting:Z

.field private mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mRemindTimes:I

.field private mRemindTimesStrings:[Ljava/lang/String;

.field private mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    .line 37
    iput v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindTimes:I

    .line 39
    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRefreshFromSetting:Z

    .line 193
    new-instance v0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->freshData()V

    return-void
.end method

.method private addItems(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 125
    .local v0, "height":I
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 126
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 127
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 129
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 130
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 131
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 132
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 133
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 134
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method private createItems(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 97
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 98
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 99
    return-void
.end method

.method private freshData()V
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c018f

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 104
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->getSummary()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "originalDelayTimeSummary":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getRemindDelayTimeSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_NOTIFY_REMIND_DELAY_TIMES"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "mRemindTimes":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;)V

    .line 111
    .end local v0    # "mRemindTimes":I
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getRemindDelayTimeSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c008a

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 115
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_REMIND_VIBRATE"

    invoke-virtual {v3, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 117
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v3, "\u81ea\u52a8\u5ef6\u8fdf"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v3, "\u672a\u5904\u7406\u54cd\u94c3\uff0c\u5c06\u81ea\u52a8\u5ef6\u8fdf\u63d0\u9192\u5e76\u518d\u6b21\u54cd\u94c3"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_REMIND_LATER_SWITCH"

    invoke-virtual {v3, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 120
    return-void
.end method

.method private getRemindDelayTimeSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_REMIND_DELAY_TIMES"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindTimes:I

    .line 189
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindTimesStrings:[Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindTimesStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindTimes:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private setLaterSwitch(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;)V
    .locals 4
    .param p1, "xPreferenceCheckBox"    # Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 151
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_LATER_SWITCH"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 154
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_LATER_SWITCH"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e()V

    goto :goto_0
.end method

.method private setRemindVibrate(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;)V
    .locals 4
    .param p1, "xPreferenceCheckBox"    # Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 141
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_VIBRATE"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 144
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_VIBRATE"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->createItems(Landroid/content/Context;)V

    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->freshData()V

    .line 88
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->addItems(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDestroy()V

    .line 71
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 72
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 76
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 77
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindTimesStrings:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 79
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 82
    return-void
.end method

.method protected onFragmentResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onFragmentResult(Landroid/os/Bundle;)V

    .line 211
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->freshData()V

    .line 212
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 161
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v1, "RemindSubSettingFragment"

    const-string/jumbo v2, "onItemClick"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v0

    .line 165
    .local v0, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v0, v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->setRemindVibrate(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v0, v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindLaterSwitch:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->setLaterSwitch(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRemindNotifyDelayTimeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v1, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/iflytek/viafly/settings/ui/RemindDelayTimeSettingFragment;

    invoke-direct {v2}, Lcom/iflytek/viafly/settings/ui/RemindDelayTimeSettingFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 175
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->o()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStart()V

    .line 53
    const-string/jumbo v0, "RemindSubSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRefreshFromSetting:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStop()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRefreshFromSetting:Z

    .line 64
    const-string/jumbo v0, "RemindSubSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0c0197

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
