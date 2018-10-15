.class public abstract Ltl;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "UserVoiceFragment.java"


# instance fields
.field protected a:Z

.field private final b:Ljava/lang/String;

.field private c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

.field private d:Lcom/iflytek/base/skin/customView/XImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    .line 36
    const-string/jumbo v0, "UserVoiceFragment"

    iput-object v0, p0, Ltl;->b:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Ltl;->j:Z

    .line 49
    iput-boolean v1, p0, Ltl;->a:Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Ltl;->a(Landroid/view/View;)V

    .line 115
    const v0, 0x7f0b0795

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltl;->e:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b0728

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v0, p0, Ltl;->f:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 117
    return-void
.end method

.method private b(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V
    .locals 3
    .param p1, "defaultAnim"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 130
    invoke-direct {p0}, Ltl;->l()V

    .line 131
    invoke-direct {p0}, Ltl;->j()V

    .line 132
    invoke-direct {p0}, Ltl;->k()V

    .line 133
    iget-object v0, p0, Ltl;->h:[Ljava/lang/String;

    iget-object v1, p0, Ltl;->g:[Ljava/lang/String;

    iget-object v2, p0, Ltl;->i:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setMicDrawable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    const v0, 0x7f0b0729

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iput-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .line 121
    const v0, 0x7f0b072a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Ltl;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 122
    iget-object v0, p0, Ltl;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.mic_initial_1"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 123
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image.mic_wave_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image.mic_wave_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image.mic_wave_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image.mic_wave_4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "image.mic_wave_5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "image.mic_wave_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "image.mic_wave_7"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltl;->g:[Ljava/lang/String;

    .line 146
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 149
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image.mic_loading_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image.mic_loading_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image.mic_loading_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image.mic_loading_4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "image.mic_loading_5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "image.mic_loading_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "image.mic_loading_7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "image.mic_loading_8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "image.mic_loading_9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "image.mic_loading_10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "image.mic_loading_11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "image.mic_loading_12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "image.mic_loading_13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "image.mic_loading_14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "image.mic_loading_15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "image.mic_loading_16"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "image.mic_loading_17"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "image.mic_loading_18"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "image.mic_loading_19"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "image.mic_loading_20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "image.mic_loading_21"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "image.mic_loading_22"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "image.mic_loading_23"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltl;->i:[Ljava/lang/String;

    .line 175
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image.mic_initial_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image.mic_initial_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image.mic_initial_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image.mic_initial_4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "image.mic_initial_5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "image.mic_initial_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "image.mic_initial_7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "image.mic_initial_8"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltl;->h:[Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 268
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "state_updateUIInRecodingState "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 270
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public a(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V
    .locals 0
    .param p1, "defaultAnim"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Ltl;->b(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    .line 127
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Ltl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltl;->a(Z)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Ltl;->f:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Ltl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Ltl;->f:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Ltl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 225
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "requestRecordPermiss "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Ltl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ltl$1;

    invoke-direct {v1, p0}, Ltl$1;-><init>(Ltl;)V

    invoke-static {v0, v1}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    .line 238
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected declared-synchronized b(Z)V
    .locals 1
    .param p1, "needShowWave"    # Z

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ltl;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltl;->a(Z)V

    .line 242
    invoke-virtual {p0}, Ltl;->d()V

    .line 243
    return-void
.end method

.method protected declared-synchronized c(Z)V
    .locals 1
    .param p1, "micTouching"    # Z

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ltl;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 249
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "endUI "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Ltl;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 252
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Ltl;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showInitDrawables()V

    .line 258
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 262
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "state_updateUIInErrorState "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 264
    iget-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 265
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 273
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "state_updateUIInWaitingResultState "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showLoadingDrawables()V

    .line 275
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->h()V

    .line 292
    iget-object v0, p0, Ltl;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltl;->b(Z)V

    .line 294
    return-void
.end method

.method protected declared-synchronized i()Z
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltl;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Ltl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    .line 60
    const-string/jumbo v5, "UserVoiceFragment"

    const-string/jumbo v6, "onCreateView"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v2

    .line 65
    .local v2, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {p0}, Ltl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v3, "rootViewLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 74
    invoke-virtual {p0}, Ltl;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 75
    invoke-virtual {p0}, Ltl;->a()I

    move-result v6

    const/4 v7, 0x0

    .line 74
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 77
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Ltl;->b(Landroid/view/View;)V

    .line 78
    invoke-direct {p0, v4}, Ltl;->c(Landroid/view/View;)V

    .line 80
    invoke-virtual {v3, v4, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p0, v3}, Ltl;->addContentView(Landroid/view/View;)V

    .line 82
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroy()V

    .line 222
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->e()V

    .line 214
    invoke-virtual {p0}, Ltl;->c()V

    .line 215
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onPause()V

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0}, Ltl;->c()V

    .line 198
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onResume()V

    .line 199
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v0, "UserVoiceFragment"

    const-string/jumbo v1, "onStop "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->e()V

    .line 205
    invoke-virtual {p0}, Ltl;->c()V

    .line 207
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onStop()V

    .line 208
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 87
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    const-string/jumbo v2, "\u58f0\u7eb9"

    invoke-virtual {p0, v2}, Ltl;->setTitleText(Ljava/lang/CharSequence;)V

    .line 89
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Ltl;->setTitleStyle(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v2, "image.but_back_nor"

    invoke-virtual {p0, v2}, Ltl;->setBackBtnResource(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Ltl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0}, Ltl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 95
    invoke-virtual {p0}, Ltl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Ltl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ltl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p0}, Ltl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Ltl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Ltl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_1
    iget-object v2, p0, Ltl;->c:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {p0, v2}, Ltl;->a(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    .line 110
    return-void
.end method
