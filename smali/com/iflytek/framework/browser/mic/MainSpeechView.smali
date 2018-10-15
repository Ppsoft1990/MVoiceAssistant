.class public Lcom/iflytek/framework/browser/mic/MainSpeechView;
.super Landroid/widget/LinearLayout;
.source "MainSpeechView.java"

# interfaces
.implements Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;
.implements Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# instance fields
.field private A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;"
        }
    .end annotation
.end field

.field private C:Landroid/os/Handler;

.field private D:Z

.field private E:I

.field private F:Lre;

.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/support/v4/view/ViewPager;

.field private m:Lcom/iflytek/viafly/ui/CirclePageIndicator;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lqp;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

.field private t:Lqr;

.field private u:Lcom/iflytek/framework/browser/mic/MicHelper;

.field private v:[Ljava/lang/String;

.field private w:[Ljava/lang/String;

.field private x:[Ljava/lang/String;

.field private y:Lqz;

.field private z:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;->MIC_COMMON_TAB:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->z:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    .line 112
    iput-boolean v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->D:Z

    .line 113
    iput v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->E:I

    .line 649
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechView$4;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView$4;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->F:Lre;

    .line 123
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqr;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "micController"    # Lqr;

    .prologue
    .line 116
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    iput-object p2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->t:Lqr;

    .line 118
    invoke-virtual {p2}, Lqr;->b()Lcom/iflytek/framework/browser/mic/MicHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->C:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->C:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 127
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 129
    const v3, 0x7f02043b

    invoke-virtual {p0, v3}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->setBackgroundResource(I)V

    .line 130
    invoke-virtual {p0, v7}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->setOrientation(I)V

    .line 131
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->setGravity(I)V

    .line 132
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->setPadding(IIII)V

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03009d

    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 135
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b040d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a:Landroid/view/View;

    .line 136
    const v3, 0x7f0b0415

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->j:Landroid/widget/LinearLayout;

    .line 137
    const v3, 0x7f0b0408

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->k:Landroid/widget/LinearLayout;

    .line 138
    const v3, 0x7f0b0416

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->l:Landroid/support/v4/view/ViewPager;

    .line 139
    const v3, 0x7f0b0418

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/CirclePageIndicator;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    .line 140
    const v3, 0x7f0b0417

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->n:Landroid/widget/LinearLayout;

    .line 142
    const v3, 0x7f0b0406

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->b:Landroid/view/View;

    .line 143
    const v3, 0x7f0b0407

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->c:Landroid/view/View;

    .line 144
    const v3, 0x7f0b040c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->p:Landroid/widget/TextView;

    .line 145
    const v3, 0x7f0b0409

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->q:Landroid/widget/TextView;

    .line 146
    const v3, 0x7f0b040a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .line 148
    const v3, 0x7f0b040e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 149
    const v3, 0x7f0b040f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e:Landroid/widget/ImageView;

    .line 150
    const v3, 0x7f0b040b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->r:Landroid/widget/ImageView;

    .line 152
    const v3, 0x7f0b0411

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->i:Landroid/widget/EditText;

    .line 153
    const v3, 0x7f0b0412

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->h:Landroid/widget/LinearLayout;

    .line 155
    const v3, 0x7f0b0413

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->f:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 156
    const v3, 0x7f0b0414

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g:Landroid/widget/ImageView;

    .line 158
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->h()V

    .line 159
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v3, Lqz;

    invoke-direct {v3}, Lqz;-><init>()V

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->y:Lqz;

    .line 164
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->l()V

    .line 165
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lrf;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->B:Ljava/util/List;

    .line 166
    new-instance v3, Lqp;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->B:Ljava/util/List;

    new-instance v6, Lcom/iflytek/framework/browser/mic/MainSpeechView$1;

    invoke-direct {v6, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView$1;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V

    invoke-direct {v3, v4, v5, v6}, Lqp;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->o:Lqp;

    .line 173
    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->l:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->o:Lqp;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Lba;)V

    .line 174
    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->l:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 175
    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->notifyDataSetChanged()V

    .line 176
    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->o:Lqp;

    invoke-virtual {v3}, Lqp;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 177
    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setVisibility(I)V

    .line 180
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 181
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->C:Landroid/os/Handler;

    .line 183
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide v4, 0x406f800000000000L    # 252.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    iput v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->E:I

    .line 185
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_SOFT_INPUT_HEIGHT"

    invoke-virtual {v3, v4, v7}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, "keyboardHeight":I
    iget v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->E:I

    if-ge v0, v3, :cond_1

    .line 187
    iget v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->E:I

    .line 189
    :cond_1
    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a(I)V

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Lqp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->o:Lqp;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->l:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->n()V

    return-void
.end method

.method static synthetic f(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->r()V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->B:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->i()V

    .line 256
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->j()V

    .line 257
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->k()V

    .line 258
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->w:[Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->v:[Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->x:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setMicDrawable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const-string/jumbo v1, "image.mic_initial_1"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setCustomerSrc(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x5

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

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->w:[Ljava/lang/String;

    .line 270
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 273
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

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->v:[Ljava/lang/String;

    .line 282
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 285
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

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->x:[Ljava/lang/String;

    .line 311
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string/jumbo v0, "MainSpeechView"

    const-string/jumbo v1, "requestData start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->y:Lqz;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->F:Lre;

    invoke-virtual {v0, v1}, Lqz;->a(Lre;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string/jumbo v0, "MainSpeechView"

    const-string/jumbo v1, "requestData no network"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 331
    const-string/jumbo v0, "MainSpeechView"

    const-string/jumbo v1, "onClick SpeakButton"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100062"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;->MIC_TAB:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->z:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    if-eq v0, v1, :cond_1

    .line 335
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechView$3;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView$3;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V

    invoke-static {v0, v1}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    .line 364
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;->MIC_TAB:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->setMicTabState(Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;)V

    .line 365
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lws;->a(J)V

    goto :goto_0
.end method

.method private declared-synchronized n()V
    .locals 5

    .prologue
    .line 369
    monitor-enter p0

    const/4 v2, 0x1

    .line 370
    .local v2, "needHandle":Z
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->e()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqs;

    .line 371
    .local v1, "listener":Lqs;
    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v4}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v4

    invoke-interface {v1, v4}, Lqs;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    .end local v1    # "listener":Lqs;
    :cond_1
    if-eqz v2, :cond_5

    .line 376
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->o()V

    .line 377
    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v4}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 380
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 381
    const-string/jumbo v3, "d_entry"

    const-string/jumbo v4, "mainPage"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT90002"

    invoke-virtual {v3, v4, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 382
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    const-string/jumbo v3, "d_entry"

    const-string/jumbo v4, "micPage"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 369
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 389
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized o()V
    .locals 4

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v1

    .line 395
    .local v1, "state":Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    sget-object v2, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-ne v1, v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->MIC_CLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;)V

    .line 397
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->SPEECH:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;)V

    .line 398
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 399
    :cond_1
    :try_start_1
    sget-object v2, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->recording:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-ne v1, v2, :cond_0

    .line 400
    const-string/jumbo v2, "MainSpeechView"

    const-string/jumbo v3, "state == SpeakButtonState.recording"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MicHelper;->c()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    .line 402
    .local v0, "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    .end local v0    # "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    .end local v1    # "state":Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized p()V
    .locals 2

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->c()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    .line 410
    .local v0, "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit p0

    return-void

    .line 409
    .end local v0    # "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized q()V
    .locals 5

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->p()V

    .line 418
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->parseSpeechIntent()Landroid/content/Intent;

    move-result-object v1

    .line 420
    .local v1, "speechIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MicHelper;->d()Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->MIC_CLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    if-ne v2, v3, :cond_1

    .line 421
    const-string/jumbo v2, "speech_entry"

    sget-object v3, Lcom/iflytek/common/speech/entities/SpeechEntry;->home:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v3}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :goto_0
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MicHelper;->c()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    .line 428
    .local v0, "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    if-eqz v0, :cond_0

    .line 429
    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :cond_0
    monitor-exit p0

    return-void

    .line 423
    .end local v0    # "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "vad_front_time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string/jumbo v2, "vad_end_time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string/jumbo v2, "speech_entry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/iflytek/common/speech/entities/SpeechEntry;->home:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v4}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    .end local v1    # "speechIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private r()V
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->c()V

    .line 449
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 539
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->t:Lqr;

    invoke-virtual {v1}, Lqr;->h()Landroid/text/Spanned;

    move-result-object v0

    .line 540
    .local v0, "spanned":Landroid/text/Spanned;
    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 544
    .end local v0    # "spanned":Landroid/text/Spanned;
    :cond_0
    return-void
.end method

.method private setMicTabState(Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;)V
    .locals 0
    .param p1, "micViewState"    # Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->z:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    .line 457
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;->MIC_COMMON_TAB:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->setMicTabState(Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;)V

    .line 476
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m()V

    .line 477
    return-void
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    .prologue
    const v4, 0x7f0200c7

    const v3, 0x7f0200c4

    const v2, 0x7f0200ca

    .line 505
    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v1, p1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v1, p1, :cond_3

    .line 509
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g:Landroid/widget/ImageView;

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lrf;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 514
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 515
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->o:Lqp;

    invoke-virtual {v1}, Lqp;->notifyDataSetChanged()V

    .line 517
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->o:Lqp;

    invoke-virtual {v1}, Lqp;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 518
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setVisibility(I)V

    .line 522
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s()V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setVisibility(I)V

    goto :goto_1

    .line 523
    .end local v0    # "temp":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    :cond_3
    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v1, p1, :cond_4

    .line 524
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s()V

    goto :goto_0

    .line 527
    :cond_4
    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v1, p1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MicHelper;->e()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs;

    .line 549
    .local v0, "listener":Lqs;
    const-string/jumbo v3, "tag_text_send"

    invoke-interface {v0, v3}, Lqs;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v0    # "listener":Lqs;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->t:Lqr;

    invoke-virtual {v2, p1}, Lqr;->a(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->t:Lqr;

    invoke-virtual {v2}, Lqr;->h()Landroid/text/Spanned;

    move-result-object v1

    .line 554
    .local v1, "spanned":Landroid/text/Spanned;
    if-eqz v1, :cond_1

    .line 555
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 557
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "isLongClick"    # Z

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->D:Z

    .line 469
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;->MIC_TAB:Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->setMicTabState(Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;)V

    .line 470
    invoke-direct {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->m()V

    .line 471
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-eq v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;->c()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 484
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4
    .param p1, "beyond"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 697
    if-eqz p1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->p:Landroid/widget/TextView;

    const-string/jumbo v1, "\u677e\u5f00\u624b\u6307\uff0c\u53d6\u6d88\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 709
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->p:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5411\u4e0a\u6ed1\u52a8\uff0c\u53d6\u6d88\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 489
    const-string/jumbo v1, "MainSpeechView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    if-nez v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->c()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    .line 494
    .local v0, "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    if-eqz v0, :cond_0

    .line 495
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->recording:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-ne v1, v2, :cond_2

    .line 496
    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->init:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-ne v1, v2, :cond_0

    .line 498
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->c()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/app/Activity;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->i:Landroid/widget/EditText;

    .line 194
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->j:Landroid/widget/LinearLayout;

    .line 195
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->f:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 196
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 197
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->h:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->b:Landroid/view/View;

    .line 199
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->c:Landroid/view/View;

    .line 200
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->f(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a:Landroid/view/View;

    .line 201
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->g(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .line 202
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;)V

    .line 203
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;)V

    .line 204
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a()V

    .line 205
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    iget v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->E:I

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(I)V

    .line 206
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->onClick(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->SPEECH:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;)V

    .line 435
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->u:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->MIC_CLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;)V

    .line 437
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k()V

    .line 442
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 680
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 681
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b()V

    .line 690
    :goto_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    :cond_0
    return-void

    .line 682
    :cond_1
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 683
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 684
    :cond_2
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 685
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c()V

    goto :goto_0
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->D:Z

    .line 616
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 610
    return-void
.end method

.method public onEvent(Lqt;)V
    .locals 1
    .param p1, "event"    # Lqt;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    iget v0, p1, Lqt;->a:I

    if-gtz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget v0, p1, Lqt;->a:I

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 664
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 665
    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 667
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b()V

    .line 668
    const/4 v0, 0x1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 669
    :cond_1
    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 671
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateUIAfterResult()V
    .locals 0

    .prologue
    .line 642
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 623
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->D:Z

    .line 624
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 628
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 631
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->D:Z

    .line 632
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 562
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c()V

    .line 563
    iget-boolean v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->D:Z

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->p:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5411\u4e0a\u6ed1\u52a8\uff0c\u53d6\u6d88\u53d1\u9001"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 571
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 572
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 573
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->A:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v2, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 585
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showInitDrawables()V

    .line 586
    return-void

    .line 575
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 581
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x404d000000000000L    # 58.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 582
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public updateUIInRecodingState()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->updateVolume(I)V

    .line 593
    :cond_0
    return-void
.end method

.method public updateUIInSNState()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView;->s:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->showLoadingDrawables()V

    .line 605
    :cond_0
    return-void
.end method
