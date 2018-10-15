.class public Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
.super Ljava/lang/Object;
.source "MainSpeechPresenter.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;,
        Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;,
        Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;
    }
.end annotation


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;


# instance fields
.field private c:Lazw;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

.field private n:J

.field private o:J

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

.field private s:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->n:J

    .line 48
    iput-wide v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->o:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->l:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 63
    sput-object p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    .line 65
    :cond_0
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-direct {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;-><init>()V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .line 67
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 69
    :cond_1
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->o:J

    return-wide v0
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    return-object v0
.end method

.method static synthetic e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Lazw;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "toolView"    # Landroid/view/View;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->f:Landroid/view/View;

    .line 110
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public a(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "softView"    # Landroid/widget/EditText;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    .line 74
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lazw;->a(Landroid/app/Activity;)Lazw;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    .line 151
    invoke-virtual {v0, v1}, Lazw;->a(Landroid/widget/EditText;)Lazw;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->f:Landroid/view/View;

    .line 152
    invoke-virtual {v0, v1}, Lazw;->b(Landroid/view/View;)Lazw;

    move-result-object v0

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$2;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$2;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V

    .line 153
    invoke-virtual {v0, v1}, Lazw;->a(Ljava/lang/Runnable;)Lazw;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    .line 169
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->a()V

    .line 171
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 183
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1, "minToolHeight"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0, p1}, Lazw;->a(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 444
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    .line 445
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-interface {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_2

    .line 449
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->d()V

    .line 453
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 478
    :cond_1
    :goto_0
    return-void

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_3

    .line 457
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getCurrentMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lazw;->a(Landroid/view/View;)Lazw;

    .line 460
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->c()V

    .line 461
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 464
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_4

    .line 466
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getCurrentMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lazw;->a(Landroid/view/View;)Lazw;

    .line 470
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->b()V

    .line 472
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 473
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 474
    :cond_4
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_1

    .line 476
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;)V
    .locals 0
    .param p1, "micClickListener"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    .line 495
    return-void
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;)V
    .locals 0
    .param p1, "micLongClickListener"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->s:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;

    .line 498
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 415
    return-void
.end method

.method public b(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "toolBtn"    # Landroid/view/View;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->h:Landroid/view/View;

    .line 115
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public b(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 4
    .param p1, "otherView"    # Landroid/widget/EditText;

    .prologue
    const/4 v2, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->d()V

    .line 81
    iput-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e:Landroid/widget/EditText;

    .line 82
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .line 105
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e:Landroid/widget/EditText;

    .line 86
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lazw;->a(Landroid/widget/EditText;)Lazw;

    .line 87
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getCurrentMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lazw;->a(Landroid/view/View;)Lazw;

    .line 88
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->b()V

    .line 90
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->b()V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$1;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->b()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 314
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_2

    .line 318
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 330
    :goto_0
    return-void

    .line 319
    :cond_2
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$6;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$6;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 328
    :cond_3
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 406
    return-void
.end method

.method public c(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "keyBoardBtn"    # Landroid/view/View;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->g:Landroid/view/View;

    .line 120
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 501
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lazw;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->d()V

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->o:J

    .line 504
    const-string/jumbo v0, "MainSpeechPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHideMethodTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    return-void
.end method

.method public d()Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    return-object v0
.end method

.method public d(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "micView"    # Landroid/view/View;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    .line 125
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public e(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "recordView"    # Landroid/view/View;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->j:Landroid/view/View;

    .line 130
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public f(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "cancelView"    # Landroid/view/View;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->k:Landroid/view/View;

    .line 135
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public g(Landroid/view/View;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
    .locals 1
    .param p1, "footView"    # Landroid/view/View;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->l:Landroid/view/View;

    .line 140
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 240
    const-string/jumbo v0, "MainSpeechPresenter"

    const-string/jumbo v1, "you click so fast, please slow down."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->n:J

    .line 244
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->h:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 245
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90032"

    .line 246
    invoke-virtual {v0, v1, v4}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b()V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->g:Landroid/view/View;

    if-ne p1, v0, :cond_a

    .line 249
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_4

    .line 250
    :cond_3
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    goto :goto_0

    .line 251
    :cond_4
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    if-ne v0, v1, :cond_7

    .line 252
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->a()V

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    if-nez v0, :cond_6

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    .line 258
    :cond_6
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$4;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$4;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->b()V

    .line 271
    :cond_8
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    if-nez v0, :cond_9

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$5;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$5;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 287
    :cond_a
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    if-ne p1, v0, :cond_c

    .line 288
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    .line 289
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_b

    .line 290
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->a(Z)V

    .line 292
    :cond_b
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lazw;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->d()V

    goto/16 :goto_0

    .line 295
    :cond_c
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->j:Landroid/view/View;

    if-ne p1, v0, :cond_d

    .line 297
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->c()V

    goto/16 :goto_0

    .line 300
    :cond_d
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->k:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_e

    .line 302
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->b()V

    .line 304
    :cond_e
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    goto/16 :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 419
    packed-switch p2, :pswitch_data_0

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 421
    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    sget-object v2, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    const-string/jumbo v3, "\u8bf7\u8f93\u5165\u5185\u5bb9"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 429
    const/4 v1, 0x1

    goto :goto_0

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v2, v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->a(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->a()V

    .line 434
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(Laii;)V
    .locals 4
    .param p1, "event"    # Laii;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->q:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;Laii;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 334
    iput-boolean v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->p:Z

    .line 335
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->m:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    .line 336
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->a(Z)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lazw;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    invoke-virtual {v0}, Lazw;->d()V

    .line 342
    :cond_1
    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 409
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 347
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    if-ne p1, v2, :cond_2

    .line 348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->n:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    if-gez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->n:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    .line 350
    const-string/jumbo v2, "MainSpeechPresenter"

    const-string/jumbo v4, "you click so fast, please slow down."

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 402
    :cond_0
    :goto_0
    return v4

    .line 353
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->n:J

    .line 354
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c:Lazw;

    iget-object v5, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Lazw;->a(Landroid/widget/EditText;)Lazw;

    .line 355
    sget-object v2, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {p0, v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 357
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 359
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$7;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$7;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V

    .line 365
    .local v0, "requestFocus":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 366
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d:Landroid/widget/EditText;

    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v0, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 369
    .end local v0    # "requestFocus":Ljava/lang/Runnable;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->i:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 370
    iget-boolean v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->p:Z

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 375
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->s:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;

    if-eqz v2, :cond_3

    .line 376
    iget-object v5, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->s:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;

    invoke-static {p2, p1}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$b;->b(Z)V

    .line 379
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 380
    invoke-static {p2, p1}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    .line 381
    .local v1, "touchInMic":Z
    const-string/jumbo v2, "MainSpeechPresenter"

    const-string/jumbo v3, "onTouch | action up"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->p:Z

    .line 384
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v2, :cond_0

    .line 385
    if-nez v1, :cond_6

    .line 387
    const-string/jumbo v2, "MainSpeechPresenter"

    const-string/jumbo v3, "touchInMic false, cancel translate"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v2, :cond_4

    .line 389
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->b()V

    .line 391
    :cond_4
    sget-object v2, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {p0, v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    goto :goto_0

    .end local v1    # "touchInMic":Z
    :cond_5
    move v2, v4

    .line 376
    goto :goto_1

    .line 394
    .restart local v1    # "touchInMic":Z
    :cond_6
    const-string/jumbo v2, "MainSpeechPresenter"

    const-string/jumbo v3, "touchInMic true, stop translate to get result"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->r:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;

    invoke-interface {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$a;->c()V

    goto/16 :goto_0
.end method
