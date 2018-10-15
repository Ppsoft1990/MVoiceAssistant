.class public Ltn;
.super Ltl;
.source "UserVoiceRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/iflytek/base/skin/customView/XImageView;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/iflytek/base/skin/customView/XImageView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/animation/Animation;

.field private r:Z

.field private s:Landroid/view/View$OnTouchListener;

.field private t:Ltj$b;

.field private u:Lkr;

.field private v:Landroid/os/Handler;

.field private w:Lalt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ltl;-><init>()V

    .line 52
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    iput-object v0, p0, Ltn;->b:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Ltn;->d:I

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltn;->e:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltn;->r:Z

    .line 168
    new-instance v0, Ltn$1;

    invoke-direct {v0, p0}, Ltn$1;-><init>(Ltn;)V

    iput-object v0, p0, Ltn;->s:Landroid/view/View$OnTouchListener;

    .line 251
    new-instance v0, Ltn$2;

    invoke-direct {v0, p0}, Ltn$2;-><init>(Ltn;)V

    iput-object v0, p0, Ltn;->t:Ltj$b;

    .line 308
    new-instance v0, Ltn$3;

    invoke-direct {v0, p0}, Ltn$3;-><init>(Ltn;)V

    iput-object v0, p0, Ltn;->u:Lkr;

    .line 534
    new-instance v0, Ltn$5;

    invoke-direct {v0, p0}, Ltn$5;-><init>(Ltn;)V

    iput-object v0, p0, Ltn;->v:Landroid/os/Handler;

    .line 577
    new-instance v0, Ltn$6;

    invoke-direct {v0, p0}, Ltn$6;-><init>(Ltn;)V

    iput-object v0, p0, Ltn;->w:Lalt;

    return-void
.end method

.method static synthetic a(Ltn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    invoke-virtual {p0}, Ltn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ltn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Ltn;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ltn;Z)V
    .locals 0
    .param p0, "x0"    # Ltn;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ltn;->d(Z)V

    return-void
.end method

.method static synthetic a(Ltn;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ltn;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Ltn;->f:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ltn;)V
    .locals 0
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    invoke-direct {p0}, Ltn;->k()V

    return-void
.end method

.method static synthetic b(Ltn;Z)Z
    .locals 0
    .param p0, "x0"    # Ltn;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Ltn;->r:Z

    return p1
.end method

.method static synthetic c(Ltn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ltn;)V
    .locals 0
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    invoke-direct {p0}, Ltn;->l()V

    return-void
.end method

.method private d(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Ltn;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Ltn;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Ltn;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Ltn;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic e(Ltn;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Ltn;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Ltn;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->i:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method static synthetic h(Ltn;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Ltn;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Ltn;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Ltn;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Ltn;->q:Landroid/view/animation/Animation;

    .line 164
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 165
    .local v0, "lin":Landroid/view/animation/LinearInterpolator;
    iget-object v1, p0, Ltn;->q:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 166
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "handleMicClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Ltn;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "\u83b7\u53d6\u5bc6\u7801\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Ltn;->b(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Ltn;->h()V

    .line 223
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    iget-object v1, p0, Ltn;->u:Lkr;

    invoke-virtual {v0, v1}, Ltj;->a(Lkr;)V

    goto :goto_0

    .line 227
    :cond_1
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "\u6b63\u5728\u6ce8\u518c\uff0c\u8bf7\u7ee7\u7eed\u5f55\u97f3"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic k(Ltn;)V
    .locals 0
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    invoke-direct {p0}, Ltn;->n()V

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "stopRecording"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->d()V

    .line 235
    return-void
.end method

.method static synthetic l(Ltn;)V
    .locals 0
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    invoke-direct {p0}, Ltn;->o()V

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 238
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "loadPasswordList"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Ltn;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Ltn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Ltn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Ltn;->i:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 244
    iget-object v0, p0, Ltn;->q:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Ltn;->i:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Ltn;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :cond_0
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    iget-object v1, p0, Ltn;->t:Ltj$b;

    invoke-virtual {v0, v1}, Ltj;->a(Ltj$b;)V

    .line 249
    return-void
.end method

.method static synthetic m(Ltn;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Ltn;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 476
    const-string/jumbo v1, "UserVoiceRegisterFragment"

    const-string/jumbo v2, "startReport"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 478
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    .line 479
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setVoicePrintPasswordSetted(Z)V

    .line 481
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lth;->a(Lcom/iflytek/viafly/account/entity/User;)V

    .line 482
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    new-instance v2, Ltn$4;

    invoke-direct {v2, p0}, Ltn$4;-><init>(Ltn;)V

    invoke-virtual {v1, v0, v2}, Lth;->a(Lcom/iflytek/viafly/account/entity/User;Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;)V

    .line 494
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 499
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "add sign by voice print set"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Lals;

    iget-object v1, p0, Ltn;->w:Lalt;

    invoke-direct {v0, v1}, Lals;-><init>(Lalt;)V

    const-string/jumbo v1, "N_SET_VOICEPRINT"

    invoke-virtual {v0, v1}, Lals;->a(Ljava/lang/String;)J

    .line 501
    return-void
.end method

.method static synthetic o(Ltn;)V
    .locals 0
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    invoke-direct {p0}, Ltn;->m()V

    return-void
.end method

.method static synthetic p(Ltn;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Ltn;

    .prologue
    .line 51
    iget-object v0, p0, Ltn;->c:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f030158

    return v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const v1, 0x7f0b0797

    .line 113
    const v0, 0x7f0b0798

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltn;->j:Landroid/widget/RelativeLayout;

    .line 114
    const v0, 0x7f0b07a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltn;->k:Landroid/widget/RelativeLayout;

    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltn;->d(Z)V

    .line 117
    const v0, 0x7f0b06e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltn;->g:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0b06e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltn;->h:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Ltn;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 123
    iget-object v0, p0, Ltn;->c:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Ltn;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    const v0, 0x7f0b079d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltn;->l:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f0b079a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltn;->m:Landroid/widget/LinearLayout;

    .line 127
    const v0, 0x7f0b079e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltn;->n:Landroid/widget/LinearLayout;

    .line 129
    const v0, 0x7f0b079b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Ltn;->i:Lcom/iflytek/base/skin/customView/XImageView;

    .line 130
    const v0, 0x7f0b07a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltn;->p:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Ltn;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0b07a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltn;->o:Landroid/widget/LinearLayout;

    .line 134
    iget-object v0, p0, Ltn;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Ltn;->d:I

    .line 138
    invoke-direct {p0}, Ltn;->j()V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 532
    :goto_0
    return-void

    .line 521
    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Ltn;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserVoiceRegisterFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " finish error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    invoke-direct {p0}, Ltn;->m()V

    goto :goto_0

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x7f0b07a0 -> :sswitch_1
        0x7f0b07a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0, p1}, Ltl;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Ltn;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Ltl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 505
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Ltn;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltn;->r:Z

    if-nez v0, :cond_0

    .line 507
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u58f0\u7eb9\u5bc6\u7801\u8bbe\u7f6e\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 509
    :cond_0
    iget-object v0, p0, Ltn;->v:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 510
    iput-object v3, p0, Ltn;->t:Ltj$b;

    .line 511
    iput-object v3, p0, Ltn;->u:Lkr;

    .line 513
    invoke-super {p0}, Ltl;->onDestroy()V

    .line 514
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Ltl;->onPause()V

    .line 306
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Ltl;->onStop()V

    .line 301
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "onViewCreated "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-super {p0, p1, p2}, Ltl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 286
    const-string/jumbo v0, "\u8bbe\u7f6e\u58f0\u7eb9\u5bc6\u7801"

    invoke-virtual {p0, v0}, Ltn;->setTitleText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Ltn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Ltn;->b(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Ltn;->m()V

    goto :goto_0
.end method
