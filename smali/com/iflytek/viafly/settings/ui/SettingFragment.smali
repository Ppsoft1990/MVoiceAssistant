.class public final Lcom/iflytek/viafly/settings/ui/SettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "SettingFragment.java"

# interfaces
.implements Lyn;


# static fields
.field private static final MSG_REFREST_FROM_SETTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SettingFragment"


# instance fields
.field private channelID:Ljava/lang/String;

.field private mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

.field private mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

.field private mClearCacheSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

.field private mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mEmptyViewBottom:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

.field private mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

.field private mHandler:Landroid/os/Handler;

.field private mIsNeedShowNewVersion:Z

.field private mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mNeedShowPermissionSetting:Z

.field private mNeedTelephoneFunction:Z

.field private mNewUserGuideSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mRefreshFromSetting:Z

.field private mShowLength:I

.field private mSpeechServiceUtil:Lpp;

.field private mUpdateChanelHelper:Lbaf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    .line 111
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mRefreshFromSetting:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNeedTelephoneFunction:Z

    .line 118
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNeedShowPermissionSetting:Z

    .line 119
    iput v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mShowLength:I

    .line 121
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mIsNeedShowNewVersion:Z

    .line 124
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->channelID:Ljava/lang/String;

    .line 975
    new-instance v0, Lcom/iflytek/viafly/settings/ui/SettingFragment$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment$6;-><init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/SettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/SettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mEmptyViewBottom:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->clearLocalCaches()V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->freshData()V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->setSettingSelector()V

    return-void
.end method

.method private addChildren(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v4, 0x41700000    # 15.0f

    const-wide v6, 0x404b800000000000L    # 55.0

    .line 410
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    .line 411
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, p1, v5}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 412
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleSize(F)V

    .line 413
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const-string/jumbo v3, "#838486"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleColor(I)V

    .line 414
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const v3, 0x7f0c01f9

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 422
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 423
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v8}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 424
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setStateTextVisibility(I)V

    .line 425
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 428
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 429
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 436
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 437
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 438
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 441
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    .line 442
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, p1, v5}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 443
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleSize(F)V

    .line 444
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const-string/jumbo v3, "#838486"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleColor(I)V

    .line 445
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const v3, 0x7f0c01fa

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 449
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setMinHeight(I)V

    .line 450
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 453
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 454
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 457
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 458
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, "hasWeatherFloatWindowSetting":Z
    const/4 v0, 0x0

    .line 476
    .local v0, "hasWeatherFloatScreenSetting":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 478
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 482
    :cond_0
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    .line 483
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, p1, v5}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 484
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleSize(F)V

    .line 485
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const-string/jumbo v3, "#838486"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleColor(I)V

    .line 486
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const v3, 0x7f0c01f8

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 489
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 490
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 493
    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNeedShowPermissionSetting:Z

    if-eqz v2, :cond_2

    .line 494
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 495
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 496
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 502
    :goto_0
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    .line 503
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, p1, v5}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 504
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleSize(F)V

    .line 505
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const-string/jumbo v3, "#838486"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleColor(I)V

    .line 506
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const v3, 0x7f0c01f7

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 514
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mClearCacheSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 515
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mClearCacheSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 517
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 518
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->setMinHeight(I)V

    .line 521
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 522
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 523
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 530
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02043b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;->setBackgroundColor(I)V

    .line 532
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    invoke-virtual {v2, v8}, Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;->setBottomLineVisible(Z)V

    .line 533
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 534
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;->setMinHeight(I)V

    .line 539
    :cond_1
    return-void

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setBottomLine(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private checkNeedShowVersionFlag(Ljava/lang/String;)Z
    .locals 11
    .param p1, "currentVersion"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 790
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->checkVersion()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "newVersion":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v6

    .line 795
    :cond_1
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "new version is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :try_start_0
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, "temp":[Ljava/lang/String;
    const-string/jumbo v7, "\\."

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 806
    .local v5, "tempNew":[Ljava/lang/String;
    array-length v7, v4

    if-lt v7, v10, :cond_0

    array-length v7, v5

    if-lt v7, v10, :cond_0

    array-length v7, v4

    array-length v8, v5

    if-ne v7, v8, :cond_0

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, "currentVersionInt":I
    const/4 v3, 0x0

    .line 813
    .local v3, "newVersionInt":I
    const/4 v7, 0x2

    :try_start_1
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 814
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 819
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currnetVersionInt is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newVersionInt is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    if-le v3, v0, :cond_0

    .line 822
    const/4 v6, 0x1

    goto :goto_0

    .line 800
    .end local v0    # "currentVersionInt":I
    .end local v3    # "newVersionInt":I
    .end local v4    # "temp":[Ljava/lang/String;
    .end local v5    # "tempNew":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 801
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SettingFragment"

    const-string/jumbo v8, "version split"

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 815
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentVersionInt":I
    .restart local v3    # "newVersionInt":I
    .restart local v4    # "temp":[Ljava/lang/String;
    .restart local v5    # "tempNew":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 816
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SettingFragment"

    const-string/jumbo v8, "version to int"

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private checkVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v2

    invoke-virtual {v2}, Lvu;->e()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 779
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "version":Ljava/lang/String;
    const-string/jumbo v2, "SettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checked version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    .end local v1    # "version":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private clearLocalCaches()V
    .locals 3

    .prologue
    .line 723
    const-string/jumbo v0, "SettingFragment"

    const-string/jumbo v1, "clearLocalCaches: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_CITYS_WEATHER_DATA"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {}, Laqh;->a()Laqh;

    move-result-object v0

    invoke-virtual {v0}, Laqh;->b()V

    .line 731
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    invoke-virtual {v0}, Lamk;->m()V

    .line 732
    return-void
.end method

.method private createChildren(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 178
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 181
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 184
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    .line 187
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 189
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 205
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 208
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 211
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNewUserGuideSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 214
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mClearCacheSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 217
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 220
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    .line 223
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    .line 224
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mEmptyViewBottom:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 225
    return-void
.end method

.method private freshData()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 277
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0187

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 311
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->setDefaultLanguageSetting(Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;)V

    .line 313
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c018e

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 314
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c0174

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(I)V

    .line 315
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_NOTICE_PUSH_SETTING"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 327
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    const v3, 0x7f0c017d

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setTitle(I)V

    .line 328
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setWidgetVisibility(I)V

    .line 329
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    const v3, 0x7f0c017e

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setSummary(I)V

    .line 330
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setRedDotVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0192

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 334
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0175

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 335
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 338
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c009f

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 339
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 342
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c019f

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 343
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c019e

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 344
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 347
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0194

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 348
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 351
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0195

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 352
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 356
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    const-string/jumbo v3, "\u68c0\u67e5\u66f4\u65b0"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->setTitle(Ljava/lang/String;)V

    .line 360
    invoke-static {v0}, Lhl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "currentVersion":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->channelID:Ljava/lang/String;

    .line 365
    const-string/jumbo v2, "SettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extra: channelID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->channelID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string/jumbo v2, "16010017"

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->channelID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->isNeedShowVersion(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mIsNeedShowNewVersion:Z

    .line 372
    :goto_1
    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mIsNeedShowNewVersion:Z

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->setNewReminderVisibility(I)V

    .line 377
    :goto_2
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->setWidgetVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mClearCacheSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v3, "\u6e05\u7406\u7f13\u5b58"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mClearCacheSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    goto/16 :goto_0

    .line 369
    :cond_1
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->checkNeedShowVersionFlag(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mIsNeedShowNewVersion:Z

    goto :goto_1

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->setNewReminderVisibility(I)V

    goto :goto_2
.end method

.method private getSimModeSettingSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "summarys":[Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SIM_CHOICE"

    invoke-virtual {v2, v3}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 744
    .local v0, "simType":I
    aget-object v2, v1, v0

    return-object v2
.end method

.method private handleDownloadClick()V
    .locals 10

    .prologue
    .line 1055
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1057
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 1056
    invoke-static {v7}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v7

    .line 1057
    invoke-virtual {v7}, Lno;->c()Ljava/util/List;

    move-result-object v1

    .line 1058
    .local v1, "downloadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    const/4 v6, 0x0

    .line 1059
    .local v6, "viewIds":[J
    if-eqz v1, :cond_0

    .line 1060
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [J

    .line 1061
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 1062
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v7}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v8

    aput-wide v8, v6, v5

    .line 1061
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1065
    .end local v5    # "j":I
    :cond_0
    const-string/jumbo v7, "com.iflytek.cmcc.EXTRA_CLICK_FINISH_ERROR_ID"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1067
    const/4 v4, 0x1

    .line 1069
    .local v4, "intentToFinishPage":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 1068
    invoke-static {v7}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v7

    .line 1069
    invoke-virtual {v7}, Lno;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1070
    .local v0, "allDownloadTasks":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v0, :cond_2

    .line 1071
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1072
    .local v2, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 1073
    const/4 v4, 0x0

    .line 1079
    .end local v2    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    if-eqz v4, :cond_4

    .line 1080
    const-string/jumbo v7, "com.iflytek.cmcc.ACTION_SOWNLOAD_FINISH"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    move-result-object v7

    const-string/jumbo v8, "tag_download"

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->dotEntry(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1090
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1092
    :cond_3
    return-void

    .line 1082
    :cond_4
    const-string/jumbo v7, "com.iflytek.cmcc.ACTION_SOWNLOAD_ERROR"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private isNeedShowVersion(Ljava/lang/String;)Z
    .locals 11
    .param p1, "currentVersion"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 1014
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "update_bd_chanel_version"

    invoke-virtual {v7, v8}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "newVersion":Ljava/lang/String;
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isNeedShowVersion: get setting newVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v6

    .line 1019
    :cond_1
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currentVersion is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "new version is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :try_start_0
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1024
    .local v4, "temp":[Ljava/lang/String;
    const-string/jumbo v7, "\\."

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1031
    .local v5, "tempNew":[Ljava/lang/String;
    array-length v7, v4

    if-lt v7, v10, :cond_0

    array-length v7, v5

    if-lt v7, v10, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "currentVersionInt":I
    const/4 v3, 0x0

    .line 1038
    .local v3, "newVersionInt":I
    const/4 v7, 0x2

    :try_start_1
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1039
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 1044
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currnetVersionInt is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string/jumbo v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newVersionInt is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-le v3, v0, :cond_0

    .line 1047
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v0    # "currentVersionInt":I
    .end local v3    # "newVersionInt":I
    .end local v4    # "temp":[Ljava/lang/String;
    .end local v5    # "tempNew":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SettingFragment"

    const-string/jumbo v8, "version split"

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1040
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentVersionInt":I
    .restart local v3    # "newVersionInt":I
    .restart local v4    # "temp":[Ljava/lang/String;
    .restart local v5    # "tempNew":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1041
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SettingFragment"

    const-string/jumbo v8, "version to int"

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private openAboutPage()V
    .locals 6

    .prologue
    .line 903
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v3

    const-string/jumbo v4, "20008"

    invoke-virtual {v3, v4}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "http://s1.voicecloud.cn/resources/lxAbout/index.html"

    .line 905
    .local v1, "urlDefault":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lhl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "versionName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    const-string/jumbo v3, "SettingFragment"

    const-string/jumbo v4, "use default url"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string/jumbo v0, "http://s1.voicecloud.cn/resources/lxAbout/index.html"

    .line 911
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 912
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    :cond_1
    const-string/jumbo v3, "SettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "final url is\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-static {v0}, Lazo;->a(Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method private setDefaultLanguageSetting(Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;)V
    .locals 6
    .param p1, "screen"    # Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .prologue
    const/4 v5, 0x0

    .line 392
    if-nez p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "voiceLanguageArray":[Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 397
    .local v0, "choice":I
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "summary":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 400
    aget-object v1, v2, v5

    .line 404
    :goto_1
    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_2
    aget-object v1, v2, v0

    goto :goto_1
.end method

.method private setNoticePush()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 864
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v6, "com.iflytek.cmccIFLY_NOTICE_PUSH_SETTING"

    invoke-virtual {v3, v6, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 867
    .local v1, "isNoticePush":Z
    if-eqz v1, :cond_2

    .line 869
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v6, Lof;->g:I

    invoke-static {v3, v6}, Laue;->a(Landroid/content/Context;I)V

    .line 872
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    sget-object v3, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v3

    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->getAll()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Latf;->b(Ljava/util/List;Ljava/util/List;)J

    .line 876
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_NOTICE_PUSH_SETTING"

    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v7, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 877
    const-string/jumbo v3, "PushRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNoticePush: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 881
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 882
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_operation"

    const-string/jumbo v4, "close"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90110"

    invoke-virtual {v3, v4, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 900
    :goto_2
    return-void

    .end local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move v3, v5

    .line 876
    goto :goto_0

    :cond_1
    move v4, v5

    .line 878
    goto :goto_1

    .line 886
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_NOTICE_PUSH_SETTING"

    if-nez v1, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v7, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 887
    const-string/jumbo v3, "SettingFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNoticePush: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-nez v1, :cond_4

    :goto_4
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 891
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    sget-object v3, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v3

    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Latf;->b(Ljava/util/List;Ljava/util/List;)J

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 897
    .restart local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_operation"

    const-string/jumbo v4, "open"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90110"

    invoke-virtual {v3, v4, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_2

    .end local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    :cond_3
    move v3, v5

    .line 886
    goto :goto_3

    :cond_4
    move v4, v5

    .line 888
    goto :goto_4
.end method

.method private setSettingSelector()V
    .locals 6

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mShowLength:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 996
    .local v1, "visibleChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 997
    .local v0, "topSize":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mShowLength:I

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/base/skin/customView/XListView;->setSelectionFromTop(II)V

    .line 998
    return-void
.end method

.method private setWeatherFloatWindowEnabled()V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method private showVersionChecked()V
    .locals 3

    .prologue
    .line 829
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u68c0\u67e5\u66f4\u65b0"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 831
    const-string/jumbo v1, "\u5f53\u524d\u5df2\u662f\u6700\u65b0\u7248\u672c"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 832
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsSingleButton(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 833
    const-string/jumbo v1, "\u77e5\u9053\u4e86"

    new-instance v2, Lcom/iflytek/viafly/settings/ui/SettingFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/settings/ui/SettingFragment$5;-><init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 841
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 842
    return-void
.end method


# virtual methods
.method protected getUpdateUrl(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 969
    if-eqz p1, :cond_0

    .line 970
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 972
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->createChildren(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->freshData()V

    .line 167
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->addChildren(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method protected onClickBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1003
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    new-instance v1, Lpp;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mSpeechServiceUtil:Lpp;

    .line 130
    new-instance v1, Lbaf;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lbaf;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mUpdateChanelHelper:Lbaf;

    .line 149
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "permisions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNeedShowPermissionSetting:Z

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onCreate(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDestroy()V

    .line 258
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 259
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 260
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    .line 261
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 262
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 263
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 264
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 265
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    .line 266
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    .line 267
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCnsmsEmptyView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    .line 268
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mSpeechServiceUtil:Lpp;

    .line 269
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mHandler:Landroid/os/Handler;

    .line 270
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 271
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 273
    return-void
.end method

.method protected onFragmentResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1007
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onFragmentResult(Landroid/os/Bundle;)V

    .line 1009
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->freshData()V

    .line 1010
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
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
    .line 543
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v11, "SettingFragment"

    const-string/jumbo v12, "----------->>> onItemClick()"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 546
    .local v2, "context":Landroid/content/Context;
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v10

    .line 548
    .local v10, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCallSmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    if-ne v10, v11, :cond_1

    .line 553
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v11

    const-string/jumbo v12, "LX_100043"

    invoke-virtual {v11, v12}, Lwz;->a(Ljava/lang/String;)V

    .line 554
    new-instance v11, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;-><init>()V

    invoke-virtual {p0, v11, v12}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 557
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90113"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mQuickStartSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_2

    .line 560
    new-instance v11, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-direct {v12}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;-><init>()V

    invoke-virtual {p0, v11, v12}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 563
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90106"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_2
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNoticePushSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v10, v11, :cond_3

    .line 566
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->setNoticePush()V

    goto :goto_0

    .line 572
    :cond_3
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAdvancedSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_4

    .line 573
    new-instance v11, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-direct {v12}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;-><init>()V

    invoke-virtual {p0, v11, v12}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 576
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90134"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_4
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mPermissionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_9

    .line 580
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v11

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 581
    .local v7, "permisions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    if-nez v7, :cond_5

    .line 582
    const-string/jumbo v11, "SettingFragment"

    const-string/jumbo v12, "permisions is null"

    invoke-static {v11, v12}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_5
    const-string/jumbo v6, ""

    .line 586
    .local v6, "log":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/common/permission/data/Permission;

    .line 587
    .local v8, "permission":Lcom/iflytek/common/permission/data/Permission;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/iflytek/common/permission/data/Permission;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 588
    invoke-virtual {v8}, Lcom/iflytek/common/permission/data/Permission;->getPermissionGuides()[Lcom/iflytek/common/permission/data/PermissionGuide;

    move-result-object v4

    .line 589
    .local v4, "guides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    if-eqz v4, :cond_6

    array-length v12, v4

    if-lez v12, :cond_6

    .line 590
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v12, v4

    if-ge v5, v12, :cond_6

    .line 591
    aget-object v3, v4, v5

    .line 592
    .local v3, "guide":Lcom/iflytek/common/permission/data/PermissionGuide;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/iflytek/common/permission/data/PermissionGuide;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 590
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 596
    .end local v3    # "guide":Lcom/iflytek/common/permission/data/PermissionGuide;
    .end local v4    # "guides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    .end local v5    # "i":I
    .end local v8    # "permission":Lcom/iflytek/common/permission/data/Permission;
    :cond_7
    const-string/jumbo v11, "SettingFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "permission log = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    .line 598
    const/4 v11, 0x0

    invoke-static {v2, v11}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 600
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/iflytek/common/permission/data/Permission;

    invoke-static {v2, v11}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V

    goto/16 :goto_0

    .line 602
    .end local v6    # "log":Ljava/lang/String;
    .end local v7    # "permisions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :cond_9
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNovelSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_a

    .line 603
    new-instance v11, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-direct {v12}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;-><init>()V

    invoke-virtual {p0, v11, v12}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 606
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90130"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :cond_a
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mDownloadSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_b

    .line 609
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->handleDownloadClick()V

    .line 612
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90132"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    :cond_b
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mAboutSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_c

    .line 622
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->openAboutPage()V

    .line 625
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90141"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 627
    :cond_c
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mCheckVersion:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;

    if-ne v10, v11, :cond_10

    .line 628
    iget-boolean v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mIsNeedShowNewVersion:Z

    if-eqz v11, :cond_f

    .line 634
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v11

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->channelID:Ljava/lang/String;

    .line 635
    const-string/jumbo v11, "16010017"

    iget-object v12, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->channelID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 636
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mUpdateChanelHelper:Lbaf;

    if-eqz v11, :cond_d

    .line 637
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mUpdateChanelHelper:Lbaf;

    invoke-virtual {v11}, Lbaf;->b()V

    .line 651
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90140"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 641
    :cond_e
    new-instance v9, Lbam;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12}, Lbam;-><init>(Landroid/content/Context;I)V

    .line 642
    .local v9, "vm":Lbam;
    invoke-virtual {v9}, Lbam;->a()V

    goto :goto_2

    .line 647
    .end local v9    # "vm":Lbam;
    :cond_f
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->showVersionChecked()V

    goto :goto_2

    .line 653
    :cond_10
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mNewUserGuideSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_11

    .line 654
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/iflytek/viafly/guide/UserGuideActivity;

    invoke-direct {v11, v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v11}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 657
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90138"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    :cond_11
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mLanguageSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_12

    .line 660
    new-instance v11, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-direct {v12}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;-><init>()V

    invoke-virtual {p0, v11, v12}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 663
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90111"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    :cond_12
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mExitLogSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;

    if-ne v10, v11, :cond_13

    .line 666
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    .local v1, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v11, "\u786e\u8ba4\u9000\u51fa\u767b\u5f55\uff1f"

    invoke-virtual {v1, v11}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const-string/jumbo v12, "\u53d6\u6d88"

    new-instance v13, Lcom/iflytek/viafly/settings/ui/SettingFragment$2;

    invoke-direct {v13, p0, v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 668
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const-string/jumbo v12, "\u9000\u51fa"

    sget-object v13, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v14, Lcom/iflytek/viafly/settings/ui/SettingFragment$1;

    invoke-direct {v14, p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V

    .line 674
    invoke-virtual {v11, v12, v13, v14}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    .line 689
    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 690
    invoke-virtual {v11, v12, v13, v14}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 693
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90142"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    .end local v1    # "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    :cond_13
    iget-object v11, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mClearCacheSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v10, v11, :cond_0

    .line 696
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 697
    .restart local v1    # "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v11, "\u786e\u8ba4\u6e05\u9664\u7f13\u5b58\u5417\uff1f"

    invoke-virtual {v1, v11}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const-string/jumbo v12, "\u53d6\u6d88"

    new-instance v13, Lcom/iflytek/viafly/settings/ui/SettingFragment$4;

    invoke-direct {v13, p0, v1}, Lcom/iflytek/viafly/settings/ui/SettingFragment$4;-><init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 698
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const-string/jumbo v12, "\u786e\u8ba4"

    sget-object v13, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v14, Lcom/iflytek/viafly/settings/ui/SettingFragment$3;

    invoke-direct {v14, p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V

    .line 704
    invoke-virtual {v11, v12, v13, v14}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    .line 710
    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v11

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 711
    invoke-virtual {v11, v12, v13, v14}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 714
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v11

    const-string/jumbo v12, "FT90139"

    invoke-virtual {v11, v12}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onPause()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mRefreshFromSetting:Z

    .line 232
    const-string/jumbo v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mShowLength:I

    .line 234
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "arg2"    # J
    .param p5, "arg3"    # I

    .prologue
    .line 966
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onResume()V

    .line 240
    const-string/jumbo v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mRefreshFromSetting:Z

    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mlistview.child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XListView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02043b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setBackgroundColor(I)V

    .line 160
    const-string/jumbo v0, "\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method
