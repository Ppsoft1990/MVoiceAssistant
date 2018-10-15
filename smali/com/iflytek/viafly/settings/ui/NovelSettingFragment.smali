.class public Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "NovelSettingFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NovelSettingFragment"


# instance fields
.field private mSpeakMode:I

.field private mSpeakModeItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->updateSpeakModeChoice()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->installOfflineSpeech()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->setSpeakMode(I)V

    return-void
.end method

.method private handleSpeakModeItemClick(I)V
    .locals 4
    .param p1, "speakMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 161
    :pswitch_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->setSpeakMode(I)V

    .line 162
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->updateSpeakModeChoice()V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "story"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT90131"

    invoke-virtual {v2, v3, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 170
    .end local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {v3}, Lasa;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->setSpeakMode(I)V

    .line 172
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->updateSpeakModeChoice()V

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v1, "offlineParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "offline"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT90131"

    invoke-virtual {v2, v3, v1}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 180
    .end local v1    # "offlineParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->showSpeakOfflineTipDialog()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private installOfflineSpeech()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 236
    const-string/jumbo v0, "NovelSettingFragment"

    const-string/jumbo v2, "\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v2, "NovelSettingFragment"

    new-instance v3, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;)V

    invoke-virtual {v0, v2, v3}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 322
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->novel_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->a:Lasc;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 324
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->updateSpeakModeChoice()V

    .line 327
    :cond_0
    return-void
.end method

.method private setSpeakMode(I)V
    .locals 4
    .param p1, "speakMode"    # I

    .prologue
    .line 149
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOVEL_SETTING"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "oldMode":I
    if-eq v0, p1, :cond_0

    .line 153
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOVEL_SETTING"

    invoke-virtual {v1, v2, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 155
    :cond_0
    return-void
.end method

.method private showSpeakOfflineTipDialog()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 194
    const-string/jumbo v1, "\u79bb\u7ebf\u64ad\u62a5\u5f00\u542f\u9700\u8981\u5148\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 196
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 208
    const-string/jumbo v1, "\u5b89\u88c5"

    new-instance v2, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 232
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 233
    return-void
.end method

.method private updateSpeakModeChoice()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 125
    const-string/jumbo v1, "NovelSettingFragment"

    const-string/jumbo v2, "mSpeakModeItems is null."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOVEL_SETTING"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakMode:I

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakMode:I

    if-ne v1, v2, :cond_1

    .line 134
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 132
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    goto :goto_2

    .line 140
    :cond_2
    invoke-static {v4}, Lasa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setText(Ljava/lang/String;Z)V

    .line 145
    :goto_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XListView;->invalidate()V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const-string/jumbo v2, "\u6ce8\uff1a\u60a8\u672a\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\uff0c\u542f\u52a8\u79bb\u7ebf\u64ad\u62a5\u65f6\u9700\u8981\u5148\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u3002"

    invoke-virtual {v1, v2, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setText(Ljava/lang/String;Z)V

    goto :goto_3
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "emptyView":Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v0, p1, v5}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "titles":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "summarys":[Ljava/lang/String;
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 73
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "speakModeItem":Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;
    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setTitle(Ljava/lang/String;)V

    .line 75
    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setSummary(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v8}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 77
    const-wide v6, 0x404b800000000000L    # 55.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setMinHeight(I)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 79
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_0

    if-ltz v1, :cond_0

    .line 80
    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 83
    :cond_0
    if-nez v1, :cond_2

    .line 84
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    if-ne v1, v9, :cond_1

    .line 86
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 94
    .end local v2    # "speakModeItem":Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;
    :cond_3
    new-instance v5, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v5, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 95
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, p1, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 96
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mTipView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    .line 120
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDestroy()V

    .line 121
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDetach()V

    .line 115
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 51
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v2

    .line 52
    .local v2, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    instance-of v3, v2, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 53
    check-cast v1, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    .line 54
    .local v1, "speakModeItem":Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->mSpeakModeItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 55
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->handleSpeakModeItemClick(I)V

    .line 58
    .end local v0    # "key":I
    .end local v1    # "speakModeItem":Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->updateSpeakModeChoice()V

    .line 110
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f0c0193

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
