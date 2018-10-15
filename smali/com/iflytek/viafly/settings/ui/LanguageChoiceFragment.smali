.class public final Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "LanguageChoiceFragment.java"

# interfaces
.implements Lno$c;


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguageChoiceFragment"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultIndex:I

.field mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

.field private mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mDefaultIndex:I

    .line 92
    new-instance v0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mDefaultIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->setLanguageChoice(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->updateLanguageChoice()V

    return-void
.end method

.method private checkPermissionAndsetLanguageChoice(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .prologue
    .line 218
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mDefaultIndex:I

    if-ne v0, p2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method private isOfflineSpeechPluginInstalled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    .line 297
    .local v0, "manager":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;
    invoke-interface {v0, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    .line 298
    .local v1, "offlineSpeechPlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_0

    .line 301
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setLanguageChoice(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x3

    .line 178
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mDefaultIndex:I

    if-ne v0, p2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 184
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->isOfflineSpeechPluginInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-static {p1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {v0, v1}, Lns;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-static {p1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {v0, v1}, Lns;->b(I)Z

    .line 190
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->updateLanguageChoice()V

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->startDownloadResTask(I)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->showTipDialog()V

    goto :goto_0

    .line 200
    :cond_4
    if-nez p2, :cond_0

    .line 201
    iput p2, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mDefaultIndex:I

    .line 204
    invoke-static {p1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {v0, v2}, Lns;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    invoke-static {p1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {v0, v2}, Lns;->b(I)Z

    .line 213
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->updateLanguageChoice()V

    goto :goto_0

    .line 211
    :cond_5
    invoke-static {p1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lns;->b(I)Z

    goto :goto_1
.end method

.method private showTipDialog()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 310
    const-string/jumbo v1, "\u7ca4\u8bed\u6a21\u5f0f\u5f00\u542f\u9700\u8981\u5148\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 312
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 323
    const-string/jumbo v1, "\u5b89\u88c5"

    new-instance v2, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;-><init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 406
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 407
    return-void
.end method

.method private startDownloadResTask(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 264
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;-><init>(Landroid/content/Context;I)V

    .line 265
    .local v0, "resUpdateManager":Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    invoke-virtual {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a()V

    .line 266
    return-void
.end method

.method private updateLanguageChoice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v1, "LanguageChoiceFragment"

    const-string/jumbo v2, "mVoiceLanguageItems is null."

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v1, v2, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, "type":I
    if-ne v3, v0, :cond_2

    .line 126
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v1, v1

    if-le v1, v3, :cond_1

    .line 127
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 128
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v1, v1, v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 129
    iput v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mDefaultIndex:I

    .line 140
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->isOfflineSpeechPluginInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setText(Ljava/lang/String;Z)V

    .line 145
    :goto_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XListView;->invalidate()V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v1, v1

    if-le v1, v3, :cond_1

    .line 134
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 136
    iput v4, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mDefaultIndex:I

    goto :goto_1

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const-string/jumbo v2, "\u6ce8\uff1a\u60a8\u672a\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\uff0c\u542f\u52a8\u7ca4\u8bed\u6a21\u5f0f\u65f6\u9700\u8981\u5148\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u3002"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setText(Ljava/lang/String;Z)V

    goto :goto_2
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 274
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 270
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string/jumbo v2, "LanguageChoiceFragment"

    const-string/jumbo v3, "installStatusChanged"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz p1, :cond_0

    .line 280
    const-string/jumbo v2, "install_result"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, "errorCode":I
    const-string/jumbo v2, "install_type"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 284
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->updateLanguageChoice()V

    .line 289
    .end local v0    # "errorCode":I
    .end local v1    # "type":I
    :cond_0
    return-void
.end method

.method protected loadData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "emptyView":Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v0, p1, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "voiceLanguages":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    new-instance v4, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    invoke-direct {v4, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 159
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v3, v3, v1

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setTitle(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 161
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v3, v3, v1

    const-wide v4, 0x404b800000000000L    # 55.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setMinHeight(I)V

    .line 162
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 168
    new-instance v3, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 169
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, p1, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 170
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 171
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_YUEYU_RES_UNZIP_SUCCSEE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDestroy()V

    .line 111
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-class v1, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno;->a(Ljava/lang/String;)V

    .line 112
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    .line 113
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 114
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDetach()V

    .line 412
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "LanguageChoiceFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v3

    .line 241
    .local v3, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 242
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->mVoiceLanguageItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v4, v4, v2

    if-ne v4, v3, :cond_1

    .line 244
    invoke-direct {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->checkPermissionAndsetLanguageChoice(Landroid/content/Context;I)V

    .line 247
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v1, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 249
    const-string/jumbo v4, "d_type"

    const-string/jumbo v5, "cantonese"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v4

    const-string/jumbo v5, "FT90112"

    invoke-virtual {v4, v5, v1}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 241
    .end local v1    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .restart local v1    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 251
    const-string/jumbo v4, "d_type"

    const-string/jumbo v5, "mandarin"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 257
    .end local v1    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onResume()V

    .line 84
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->updateLanguageChoice()V

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListView;->invalidate()V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string/jumbo v0, "LanguageChoiceFragment"

    const-string/jumbo v1, "get listView is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0c0187

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
