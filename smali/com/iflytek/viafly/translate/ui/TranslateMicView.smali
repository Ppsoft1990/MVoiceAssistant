.class public Lcom/iflytek/viafly/translate/ui/TranslateMicView;
.super Landroid/widget/LinearLayout;
.source "TranslateMicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

.field private b:Lcom/iflytek/base/skin/customView/XImageView;

.field private c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Layr;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Z

.field private q:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

.field private r:Laxr;

.field private s:J

.field private t:I

.field private u:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->p:Z

    .line 198
    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    .line 83
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->p:Z

    .line 198
    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    .line 88
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private a(I)V
    .locals 6
    .param p1, "clickPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 251
    const-string/jumbo v1, "TranslateMicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMicClick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    invoke-virtual {v2}, Laxr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->g:Layr;

    if-nez v1, :cond_1

    .line 257
    const-string/jumbo v0, "TranslateMicView"

    const-string/jumbo v1, "mMicEventListener is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->g:Layr;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Layr;->a(Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0b0723

    const/4 v3, -0x1

    .line 97
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030143

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 101
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const v3, 0x7f0b0722

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j:Landroid/widget/LinearLayout;

    .line 104
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->m:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f0b0725

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->h:Landroid/widget/RelativeLayout;

    .line 107
    const v3, 0x7f0b072b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->i:Landroid/widget/RelativeLayout;

    .line 110
    const v3, 0x7f0b0727

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->k:Landroid/widget/TextView;

    .line 111
    const v3, 0x7f0b072d

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->l:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->m:Landroid/widget/TextView;

    .line 113
    const v3, 0x7f0b0726

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->n:Landroid/widget/ImageView;

    .line 114
    const v3, 0x7f0b072c

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->o:Landroid/widget/ImageView;

    .line 116
    const v3, 0x7f0b0728

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 117
    const v3, 0x7f0b0729

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .line 118
    const v3, 0x7f0b072a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    .line 119
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const v4, 0x7f02004e

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 121
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->d()V

    .line 125
    return-void
.end method

.method private b(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 412
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 413
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundResource(I)V

    .line 414
    return-void
.end method

.method private c(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const v4, 0x7f020072

    const v3, 0x7f020071

    const v2, 0x7f020069

    const v1, 0x7f020068

    .line 443
    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 446
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    if-nez p1, :cond_2

    .line 449
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 450
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 451
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 453
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 454
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 455
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 458
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 128
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 129
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->g()V

    .line 130
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->e()V

    .line 131
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->f()V

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->e:[Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setMicDrawable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image.mic_new_wave_01"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image.mic_new_wave_02"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image.mic_new_wave_03"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image.mic_new_wave_04"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "image.mic_new_wave_05"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "image.mic_new_wave_06"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "image.mic_new_wave_07"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->d:[Ljava/lang/String;

    .line 153
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 156
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

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->f:[Ljava/lang/String;

    .line 182
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 185
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

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->e:[Ljava/lang/String;

    .line 195
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->u:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->i()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->u:Landroid/view/animation/Animation;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 391
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 392
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 393
    return-void
.end method

.method private i()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 396
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 397
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 398
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 399
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 400
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 401
    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 424
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f02043b

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundResource(I)V

    .line 426
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 434
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->h()V

    .line 435
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundResource(I)V

    .line 436
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 357
    const-string/jumbo v0, "TranslateMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInSpeakingState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->speaking:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 359
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->k()V

    .line 360
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u64ad\u62a5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    return-void
.end method

.method public a(Laxr;)V
    .locals 2
    .param p1, "languageInfo"    # Laxr;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    .line 379
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->n:Landroid/widget/ImageView;

    invoke-virtual {p1}, Laxr;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1}, Laxr;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Laxr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Laxr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 369
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRANSLATE_LANGUAGE"

    const-string/jumbo v3, "cn_en"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "currentMode":Ljava/lang/String;
    invoke-static {v0}, Laxo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c(I)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c(I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->p:Z

    return v0
.end method

.method public declared-synchronized getMicState()Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->q:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 297
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 294
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->s:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->s:J

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "clickPosition":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 230
    :goto_1
    sget-object v1, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->q:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    if-eq v1, v2, :cond_6

    .line 231
    sget-boolean v1, Laxp;->f:Z

    if-eqz v1, :cond_3

    .line 232
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    if-eq v1, v0, :cond_1

    if-nez v0, :cond_2

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->g:Layr;

    invoke-interface {v1}, Layr;->a()V

    goto :goto_0

    .line 213
    :sswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laxr;->a(Z)V

    .line 214
    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "cn"

    invoke-virtual {v1, v2}, Lxq;->l(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :sswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Laxr;->a(Z)V

    .line 220
    const/4 v0, 0x2

    .line 222
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    invoke-virtual {v2}, Laxr;->t()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxq;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_1

    .line 225
    :sswitch_2
    const/4 v0, 0x0

    .line 226
    goto :goto_1

    .line 235
    :cond_2
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a(I)V

    goto :goto_0

    .line 238
    :cond_3
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    if-eq v1, v0, :cond_4

    if-nez v0, :cond_5

    .line 239
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->g:Layr;

    invoke-interface {v1}, Layr;->a()V

    goto :goto_0

    .line 241
    :cond_5
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a(I)V

    goto :goto_0

    .line 245
    :cond_6
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a(I)V

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0725 -> :sswitch_0
        0x7f0b0728 -> :sswitch_2
        0x7f0b072b -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V
    .locals 1
    .param p1, "mMicState"    # Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->q:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnMicEventListener(Layr;)V
    .locals 0
    .param p1, "listener"    # Layr;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->g:Layr;

    .line 93
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 2

    .prologue
    .line 342
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 343
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 4

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->p:Z

    .line 302
    const-string/jumbo v0, "TranslateMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInStopState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->speaking:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->q:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    if-ne v0, v1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    .line 309
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c(I)V

    .line 310
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j()V

    .line 311
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateUIInErrorState(III)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 316
    const-string/jumbo v0, "TranslateMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInErrorState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 318
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->p:Z

    .line 266
    const-string/jumbo v0, "TranslateMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInInitState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->p:Z

    .line 279
    const-string/jumbo v0, "TranslateMicView"

    const-string/jumbo v1, "updateUIInRecodingState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 271
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->recording:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 272
    const-string/jumbo v0, "TranslateMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInRecodingState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b(I)V

    .line 274
    return-void
.end method

.method public updateUIInSNState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    const-string/jumbo v0, "TranslateMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInSNState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    sget-boolean v0, Laxp;->f:Z

    if-eqz v0, :cond_0

    .line 325
    iput v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    .line 326
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c(I)V

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "\u81ea\u52a8\u68c0\u6d4b\u8bed\u79cd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    invoke-virtual {v1}, Laxr;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    invoke-virtual {v0}, Laxr;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    .line 332
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c(I)V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    .line 335
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->t:I

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c(I)V

    goto :goto_0
.end method

.method public updateUIInTimeout()V
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 349
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 4

    .prologue
    .line 284
    const-string/jumbo v0, "TranslateMicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInWaitingResultState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-boolean v0, Laxp;->f:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u7ffb\u8bd1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->k()V

    .line 291
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->r:Laxr;

    invoke-virtual {v1}, Laxr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
