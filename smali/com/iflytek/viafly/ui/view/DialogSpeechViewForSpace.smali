.class public Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;
.super Lcom/iflytek/viafly/ui/view/DialogViewForSpace;
.source "DialogSpeechViewForSpace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# static fields
.field private static final CLICK_WAIT_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "DialogSpeechView"


# instance fields
.field private last_click_time:J

.field private mInitDrawableNames:[Ljava/lang/String;

.field private mLoadingDrawableNames:[Ljava/lang/String;

.field private mPrompt:Landroid/widget/TextView;

.field private mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

.field private mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private mSpeechIntent:Landroid/content/Intent;

.field private mUpdateUIListener:Lqu;

.field private mView:Landroid/view/View;

.field private mWaveDrawableNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ISpeechHandler;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speechHandler"    # Lcom/iflytek/yd/speech/ISpeechHandler;
    .param p3, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0, p2, p3}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setSpeechHandler(Lcom/iflytek/yd/speech/ISpeechHandler;Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method private handlePermissionTask()V
    .locals 5

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "record"

    invoke-virtual {v2, v3, v4}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    if-nez v1, :cond_0

    .line 170
    .end local v1    # "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :goto_0
    return-void

    .line 161
    .restart local v1    # "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-static {v2, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v1    # "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/permission/data/Permission;

    invoke-static {v3, v2}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V

    .line 166
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initLoadingDrawable()V
    .locals 3

    .prologue
    .line 225
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image.mic_loading_b_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image.mic_loading_b_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image.mic_loading_b_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image.mic_loading_b_4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "image.mic_loading_b_5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "image.mic_loading_b_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "image.mic_loading_b_7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "image.mic_loading_b_8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "image.mic_loading_b_9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "image.mic_loading_b_10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "image.mic_loading_b_11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "image.mic_loading_b_12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "image.mic_loading_b_13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "image.mic_loading_b_14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "image.mic_loading_b_15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "image.mic_loading_b_16"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "image.mic_loading_b_17"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "image.mic_loading_b_18"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "image.mic_loading_b_19"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "image.mic_loading_b_20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "image.mic_loading_b_21"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "image.mic_loading_b_22"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "image.mic_loading_b_23"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mLoadingDrawableNames:[Ljava/lang/String;

    .line 239
    return-void
.end method

.method private initMicInitWave()V
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image.mic_initial_b_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image.mic_initial_b_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image.mic_initial_b_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image.mic_initial_b_4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "image.mic_initial_b_5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mInitDrawableNames:[Ljava/lang/String;

    .line 210
    return-void
.end method

.method private initMicRecordWave()V
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image.mic_wave_b_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image.mic_wave_b_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image.mic_wave_b_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image.mic_wave_b_4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "image.mic_wave_b_5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "image.mic_wave_b_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "image.mic_wave_b_7"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mWaveDrawableNames:[Ljava/lang/String;

    .line 222
    return-void
.end method

.method private registerListener()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method private setButtonEnabled(Lcom/iflytek/base/skin/customView/XButton;Z)V
    .locals 3
    .param p1, "button"    # Lcom/iflytek/base/skin/customView/XButton;
    .param p2, "enabled"    # Z

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 471
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p1, p2}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 466
    if-eqz p2, :cond_1

    .line 467
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    const-string/jumbo v1, "dialog_speech_buttton_enable"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/ThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    const-string/jumbo v1, "dialog_speech_buttton_disable"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/ThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setRecordOccupiedView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0c00dd

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 385
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-nez v2, :cond_2

    .line 391
    new-instance v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 392
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v9}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 393
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 394
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    const-string/jumbo v3, "30"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "30"

    const-string/jumbo v6, "0"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p2}, Laqv;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, "contentView":Landroid/view/View;
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 400
    .end local v0    # "contentView":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v3, 0x7f0c01c6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 401
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 402
    if-eqz v1, :cond_3

    .line 403
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 404
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 406
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v10}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 407
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const v3, 0x7f0c032a

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 414
    :goto_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "PERMISSION_SETTING_RECORD_FLAG"

    invoke-virtual {v2, v3, v9}, Lil;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 409
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 410
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(I)V

    .line 411
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v8}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 412
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v8}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getPrompt()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRecoder()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    return-object v0
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "results"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 294
    const-string/jumbo v2, "DialogSpeechView"

    const-string/jumbo v3, "handleLastResult"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v2, :cond_1

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 298
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 299
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v2, v1}, Lqu;->handleLastResult(Ljava/util/ArrayList;)V

    .line 304
    .end local v1    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :cond_1
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "results"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 281
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v2, :cond_1

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 284
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 285
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v2, v1}, Lqu;->handleParticalResult(Ljava/util/ArrayList;)V

    .line 290
    .end local v1    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :cond_1
    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->initView(Landroid/content/Context;)V

    .line 93
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide v4, 0x4046800000000000L    # 45.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 95
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030137

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b06f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mView:Landroid/view/View;

    .line 100
    const v3, 0x7f0b06f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f0b06f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .line 102
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mFootBarLevel2:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mDlgLinearLayout:Landroid/widget/LinearLayout;

    const-wide v4, 0x4072200000000000L    # 290.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 108
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->registerListener()V

    .line 110
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->initMicInitWave()V

    .line 111
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->initMicRecordWave()V

    .line 112
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->initLoadingDrawable()V

    .line 113
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mInitDrawableNames:[Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mWaveDrawableNames:[Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mLoadingDrawableNames:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setMicDrawable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->last_click_time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 126
    const-string/jumbo v1, "DialogSpeechView"

    const-string/jumbo v2, "onClick| ------------>>click Too much !"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->last_click_time:J

    .line 131
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    if-ne p1, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c023e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "is_reupload"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c0139

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "is_reupload"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    invoke-static {v0}, Lazo;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c003b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "is_reupload"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c003a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "is_reupload"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c032a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->handlePermissionTask()V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    const-string/jumbo v0, "DialogSpeechView"

    const-string/jumbo v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-super {p0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->onDetachedFromWindow()V

    .line 442
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->removeAllViews()V

    .line 444
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->release()V

    .line 446
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 449
    :cond_0
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopLoadingDrawables()V

    .line 452
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->recyleResource()V

    .line 453
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .line 455
    :cond_1
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    .line 456
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    .line 457
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mView:Landroid/view/View;

    .line 458
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 459
    return-void
.end method

.method public setSpeechHandler(Lcom/iflytek/yd/speech/ISpeechHandler;Landroid/content/Intent;)V
    .locals 1
    .param p1, "speechHandler"    # Lcom/iflytek/yd/speech/ISpeechHandler;
    .param p2, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0, p0}, Lcom/iflytek/yd/speech/ISpeechHandler;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 86
    iput-object p2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechIntent:Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public setUpdateUIListener(Lqu;)V
    .locals 0
    .param p1, "listener"    # Lqu;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    .line 182
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopLoadingDrawables()V

    .line 420
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setButtonEnabled(Lcom/iflytek/base/skin/customView/XButton;Z)V

    .line 421
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 2

    .prologue
    .line 308
    const-string/jumbo v0, "DialogSpeechView"

    const-string/jumbo v1, "updateUIInCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopLoadingDrawables()V

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInCancelState()V

    .line 313
    :cond_0
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 9
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    const v8, 0x7f0c02e7

    const/16 v7, 0x2786

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 317
    const-string/jumbo v2, "DialogSpeechView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUIInErrorState errId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopInitDrawables()V

    .line 324
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopLoadingDrawables()V

    .line 325
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 327
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setButtonEnabled(Lcom/iflytek/base/skin/customView/XButton;Z)V

    .line 329
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v2, p1, p2, p3}, Lqu;->speechViewUpdateInErrorState(III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 332
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v1, "message":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const v2, 0xc3508

    if-ne v2, p3, :cond_3

    .line 335
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v3, 0x7f0c00ad

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const-string/jumbo v3, "image.ic_nonetwork_b"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setCustomerSrc(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const v3, 0x7f0c0139

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 346
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    const v3, 0x7f0c0060

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 377
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "message":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    return-void

    .line 348
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "message":Ljava/lang/StringBuilder;
    :cond_3
    if-eq v7, p3, :cond_4

    const v2, 0xc350a

    if-ne v2, p3, :cond_5

    .line 350
    :cond_4
    const-string/jumbo v2, "RECORD_NO_DATA"

    invoke-direct {p0, v0, v2}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setRecordOccupiedView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_5
    const v2, 0xc3501

    if-ne v2, p3, :cond_6

    .line 352
    const-string/jumbo v2, "record"

    invoke-direct {p0, v0, v2}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setRecordOccupiedView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_6
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 357
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v2, :cond_7

    .line 359
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecordOccupiedView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 361
    :cond_7
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 362
    if-eq v7, p3, :cond_8

    const/16 v2, 0x2710

    if-le p3, v2, :cond_8

    const/16 v2, 0x4e20

    if-ge p3, v2, :cond_8

    .line 364
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    const v3, 0x7f0c00a7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    goto :goto_0

    .line 369
    :cond_8
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 370
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    goto :goto_0
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 2
    .param p1, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 188
    const-string/jumbo v0, "DialogSpeechView"

    const-string/jumbo v1, "updateUIInInitState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v1, 0x7f0c00de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showInitDrawables()V

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const v1, 0x7f0c023e

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setButtonEnabled(Lcom/iflytek/base/skin/customView/XButton;Z)V

    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInInitState()V

    .line 200
    :cond_0
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "DialogSpeechView"

    const-string/jumbo v1, "updateUIInRecodingState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0158

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const v1, 0x7f0c023e

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setButtonEnabled(Lcom/iflytek/base/skin/customView/XButton;Z)V

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInRecodingState()V

    .line 254
    :cond_0
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 258
    const-string/jumbo v0, "DialogSpeechView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInRecodingState | volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-lez p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v1, 0x7f0c01c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 264
    return-void
.end method

.method public updateUIInSNState()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInSNState()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0243

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 429
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 2

    .prologue
    .line 268
    const-string/jumbo v0, "DialogSpeechView"

    const-string/jumbo v1, "updateUIInWaitingResultState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mMainTitle:Landroid/widget/TextView;

    const v1, 0x7f0c01c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setButtonEnabled(Lcom/iflytek/base/skin/customView/XButton;Z)V

    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mRecoder:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showLoadingDrawables()V

    .line 274
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->mUpdateUIListener:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInWaitingResultState()V

    .line 277
    :cond_0
    return-void
.end method
