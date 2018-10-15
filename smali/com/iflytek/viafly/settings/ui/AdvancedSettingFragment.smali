.class public final Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "AdvancedSettingFragment.java"

# interfaces
.implements Lcom/iflytek/common/speech/asr/MscManager$a;
.implements Lhe$a;


# static fields
.field private static final MSG_REFREST_FROM_SETTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AdvancedSettingFragment"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

.field private mHandler:Landroid/os/Handler;

.field private mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRefreshFromSetting:Z

.field private mSpeechServiceUtil:Lpp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mRefreshFromSetting:Z

    .line 77
    new-instance v0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->importContact()V

    return-void
.end method

.method private checkContactAndStoragePermission()V
    .locals 3

    .prologue
    .line 319
    const-string/jumbo v1, "AdvancedSettingFragment"

    const-string/jumbo v2, "checkContactAndStoragePermission"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$3;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 357
    return-void
.end method

.method private importContact()V
    .locals 4

    .prologue
    .line 363
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v1

    .line 364
    .local v1, "mscManager":Lcom/iflytek/common/speech/asr/MscManager;
    invoke-virtual {v1, p0}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$a;)V

    .line 366
    invoke-virtual {v1}, Lcom/iflytek/common/speech/asr/MscManager;->j()V

    .line 367
    invoke-virtual {v1}, Lcom/iflytek/common/speech/asr/MscManager;->i()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/iflytek/common/speech/asr/MscManager;->i()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 370
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 371
    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v2

    invoke-virtual {v2, p0}, Lhe;->b(Lhe$a;)V

    .line 379
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 380
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 381
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 382
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    const v3, 0x7f0c0184

    .line 383
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 385
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$4;-><init>(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;Lcom/iflytek/common/speech/asr/MscManager;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 393
    :cond_2
    return-void

    .line 376
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    sget-object v2, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->IMPORT:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    invoke-virtual {v1, v2}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;)V

    goto :goto_0
.end method

.method private onClickImportContact()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->checkContactAndStoragePermission()V

    .line 313
    return-void
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 206
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 208
    const/4 v0, 0x2

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v1, 0x7f0c0180

    .line 211
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v1, 0x7f0c016e

    .line 217
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 221
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 222
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v1, 0x7f0c0185

    .line 223
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v1, 0x7f0c0170

    .line 225
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 226
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 229
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v1, 0x7f0c0181

    .line 231
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v1, 0x7f0c016f

    .line 233
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setWidgetVisibility(I)V

    .line 246
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 247
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 250
    const/4 v0, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mSpeechServiceUtil:Lpp;

    .line 252
    invoke-virtual {v0}, Lpp;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    :cond_0
    const-string/jumbo v0, "AdvancedSettingFragment"

    const-string/jumbo v1, "not support offline | hide cnsms setting"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 259
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 261
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->setGroupMinHeight(I)V

    .line 262
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v1, 0x7f0c017f

    .line 214
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    goto/16 :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    goto :goto_1
.end method

.method public onContactQueryFinish([Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "contactNames"    # [Ljava/lang/String;
    .param p2, "splitedNames"    # [Ljava/lang/String;
    .param p3, "changeFlag"    # Z
    .param p4, "isContactChanged"    # Z

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 445
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 446
    invoke-static {v6}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v0

    sget-object v4, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->IMPORT:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ltd;->a([Ljava/lang/String;[Ljava/lang/String;ZLcom/iflytek/common/speech/asr/MscManager$UploadEntry;Z)V

    .line 450
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    new-instance v0, Lpp;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mSpeechServiceUtil:Lpp;

    .line 128
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onCreate(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 188
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    :cond_0
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 192
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 193
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 194
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 196
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 197
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mSpeechServiceUtil:Lpp;

    .line 198
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHandler:Landroid/os/Handler;

    .line 200
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 201
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 266
    const-string/jumbo v3, "AdvancedSettingFragment"

    const-string/jumbo v4, "onItemClick()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 269
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v2

    .line 271
    .local v2, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mImportContactSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v2, v3, :cond_2

    .line 272
    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    const v3, 0x7f0c0083

    .line 274
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->onClickImportContact()V

    .line 281
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90136"

    invoke-virtual {v3, v4, v5}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHotWordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v2, v3, :cond_3

    .line 283
    new-instance v3, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-direct {v4}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 286
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90137"

    invoke-virtual {v3, v4, v5}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mCnsmsSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v2, v3, :cond_0

    .line 288
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v3, v4, v6}, Lil;->b(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    .line 290
    new-instance v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .line 291
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;-><init>(Landroid/content/Context;I)V

    .line 292
    .local v1, "resUpdateManager":Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    invoke-virtual {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a()V

    .line 299
    .end local v1    # "resUpdateManager":Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v3

    const-string/jumbo v4, "FT90135"

    invoke-virtual {v3, v4, v5}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 294
    :cond_4
    const v3, 0x7f0c02f1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onPause()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mRefreshFromSetting:Z

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 162
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onResume()V

    .line 177
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mRefreshFromSetting:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStart()V

    .line 147
    const-string/jumbo v0, "AdvancedSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mRefreshFromSetting:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->notifyDataSetChanged()V

    .line 152
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStop()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mRefreshFromSetting:Z

    .line 169
    const-string/jumbo v0, "AdvancedSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onUploadContactError(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 417
    const v2, 0x7f0c0183

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "msg":Ljava/lang/String;
    const v2, 0xc3519

    if-ne p1, v2, :cond_0

    .line 423
    :cond_0
    const v2, 0xc3511

    if-ne p1, v2, :cond_1

    .line 424
    const v2, 0x7f0c0182

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    :cond_1
    const v2, 0xc3508

    if-ne p1, v2, :cond_2

    .line 428
    const v2, 0x7f0c0083

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 432
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    .line 433
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 436
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 439
    :cond_4
    return-void
.end method

.method public onUploadContactSucess()V
    .locals 3

    .prologue
    .line 400
    const v2, 0x7f0c0186

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 403
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 404
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 410
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    const v1, 0x7f0c0194

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.install_complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CN_SMS_INSTALL_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 141
    return-void
.end method
