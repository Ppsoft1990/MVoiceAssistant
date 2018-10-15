.class public Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;
.super Landroid/widget/LinearLayout;
.source "VoiceNoteMicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

.field private b:Lcom/iflytek/base/skin/customView/XImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lbaq;

.field private i:Landroid/widget/ImageView;

.field private volatile j:Z

.field private k:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->j:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->j:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->k:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;)Lbaq;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03016c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const v3, 0x7f0b084a

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->d:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f0b084b

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->i:Landroid/widget/ImageView;

    .line 81
    const v3, 0x7f0b0728

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->c:Landroid/widget/RelativeLayout;

    .line 82
    const v3, 0x7f0b0729

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .line 83
    const v3, 0x7f0b072a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    .line 84
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v4, "image.mic_initial_1"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 86
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->e()V

    .line 87
    sget-object v3, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 89
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    return-void
.end method

.method private a(Z)Z
    .locals 4
    .param p1, "longClick"    # Z

    .prologue
    const/4 v3, 0x0

    .line 195
    const-string/jumbo v0, "VoiceNoteMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMicEvent longClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", MicState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getMicState()Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpf;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->i()V

    .line 225
    :cond_0
    :goto_0
    return v3

    .line 202
    :cond_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->recording:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getMicState()Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    invoke-interface {v0}, Lbaq;->c()V

    .line 209
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getMicState()Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    const-string/jumbo v0, "VoiceNoteMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLongClick current state is not idle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getMicState()Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02fd

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setLongClickTrigger(Z)V

    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    invoke-interface {v0}, Lbaq;->a()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->init:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h()V

    .line 98
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->f()V

    .line 99
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->g()V

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->f:[Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->e:[Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setMicDrawable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 130
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

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->e:[Ljava/lang/String;

    .line 139
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 142
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

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->g:[Ljava/lang/String;

    .line 168
    return-void
.end method

.method private declared-synchronized getMicState()Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->k:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 171
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

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->f:[Ljava/lang/String;

    .line 181
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$1;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;)V

    invoke-static {v0, v1}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    .line 245
    return-void
.end method

.method private declared-synchronized setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V
    .locals 2
    .param p1, "mMicState"    # Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->k:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    .line 109
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    if-ne v0, p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u70b9\u51fb\u6216\u957f\u6309\u8bf4\u8bdd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_1
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->init:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    if-ne v0, p1, :cond_3

    .line 113
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->j:Z

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u677e\u5f00\u7ed3\u675f \u4e0a\u6ed1\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u70b9\u51fb\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_3
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->wait_result:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    if-ne v0, p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8bc6\u522b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 125
    const-string/jumbo v0, "VoiceNoteMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current mic state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->k:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->k:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 328
    return-void
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a(Z)Z

    .line 369
    return-void
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 278
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "handleLastResult get result ---------------"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b()V

    .line 280
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 281
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 274
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a(Z)Z

    .line 186
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a(Z)Z

    .line 191
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v3

    .line 335
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 336
    const-string/jumbo v1, "VoiceNoteMicView"

    const-string/jumbo v2, "onTouch | action move"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 339
    const-string/jumbo v1, "VoiceNoteMicView"

    const-string/jumbo v2, "onTouch | action up"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p2, p1}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    .line 342
    .local v0, "touchInMic":Z
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setLongClickTrigger(Z)V

    .line 345
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    if-eqz v1, :cond_0

    .line 346
    if-nez v0, :cond_3

    .line 347
    const-string/jumbo v1, "VoiceNoteMicView"

    const-string/jumbo v2, "touchInMic false, cancel voice input"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    invoke-interface {v1}, Lbaq;->b()V

    goto :goto_0

    .line 350
    :cond_3
    const-string/jumbo v1, "VoiceNoteMicView"

    const-string/jumbo v2, "touchInMic true, stop voice input to get result"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    invoke-interface {v1}, Lbaq;->c()V

    goto :goto_0
.end method

.method public declared-synchronized setLongClickTrigger(Z)V
    .locals 1
    .param p1, "longClickTrigger"    # Z

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnMicEventListener(Lbaq;)V
    .locals 0
    .param p1, "listener"    # Lbaq;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->h:Lbaq;

    .line 69
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 313
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIAfterResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIInCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 287
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 288
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b()V

    .line 291
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    const/4 v2, 0x0

    .line 295
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIInErrorState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 298
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 300
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->init:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 250
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 2

    .prologue
    .line 260
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIInRecodingState()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->recording:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 262
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 254
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIInRecodingState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 256
    return-void
.end method

.method public updateUIInSNState()V
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIInSNState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showInitDrawables()V

    .line 308
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 319
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIInTimeout"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "updateUIInWaitingResultState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->wait_result:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setMicState(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;)V

    .line 268
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showLoadingDrawables()V

    .line 269
    return-void
.end method
