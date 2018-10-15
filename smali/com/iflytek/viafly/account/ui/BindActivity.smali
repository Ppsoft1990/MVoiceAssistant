.class public Lcom/iflytek/viafly/account/ui/BindActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "BindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/account/ui/BindActivity$a;
    }
.end annotation


# static fields
.field private static o:Ljava/lang/String;


# instance fields
.field private A:Lyn;

.field private a:Ljava/util/Timer;

.field private b:Ljava/util/TimerTask;

.field private final c:I

.field private d:I

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private k:Landroid/widget/Button;

.field private volatile l:Z

.field private m:Z

.field private n:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

.field private s:Landroid/view/animation/RotateAnimation;

.field private t:Ltp;

.field private u:Ltq;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:I

.field private z:Lyn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "mLock"

    sput-object v0, Lcom/iflytek/viafly/account/ui/BindActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3c

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->a:Ljava/util/Timer;

    .line 69
    iput v2, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->c:I

    .line 70
    iput v2, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->d:I

    .line 80
    iput-boolean v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->l:Z

    .line 81
    iput-boolean v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->m:Z

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->n:J

    .line 91
    const-string/jumbo v0, "039002"

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->v:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "039001"

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->w:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "018007"

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->x:Ljava/lang/String;

    .line 94
    const/4 v0, 0x6

    iput v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->y:I

    .line 430
    new-instance v0, Lcom/iflytek/viafly/account/ui/BindActivity$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/account/ui/BindActivity$5;-><init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->z:Lyn;

    .line 458
    new-instance v0, Lcom/iflytek/viafly/account/ui/BindActivity$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/account/ui/BindActivity$6;-><init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->A:Lyn;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/account/ui/BindActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->j:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/account/ui/BindActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/account/ui/BindActivity$1;-><init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/account/ui/BindActivity$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/account/ui/BindActivity$2;-><init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/account/ui/BindActivity$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/account/ui/BindActivity$3;-><init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 182
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "isOver"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 243
    if-eqz p2, :cond_1

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    const-string/jumbo v1, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0203f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0203f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "S\u540e\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/account/ui/BindActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(IZ)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 389
    sget-object v1, Lcom/iflytek/viafly/account/ui/BindActivity;->o:Ljava/lang/String;

    monitor-enter v1

    .line 390
    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->m:Z

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->d()V

    .line 238
    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->k:Landroid/widget/Button;

    return-object v0
.end method

.method private c()Ljava/util/TimerTask;
    .locals 2

    .prologue
    .line 260
    const-string/jumbo v0, "BindActivity"

    const-string/jumbo v1, "getTimerTask"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->b:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/iflytek/viafly/account/ui/BindActivity$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/account/ui/BindActivity$4;-><init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->b:Ljava/util/TimerTask;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->b:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 283
    const-string/jumbo v0, "BindActivity"

    const-string/jumbo v1, "stopTimerTask"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->b:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->b:Ljava/util/TimerTask;

    .line 287
    const/16 v0, 0x3c

    iput v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->d:I

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->l:Z

    .line 290
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/account/ui/BindActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->d:I

    return v0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->d()V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->a:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->c()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v6

    .line 301
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BindActivity"

    const-string/jumbo v1, "changeViewStatus START_AUTH"

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/iflytek/viafly/account/ui/BindActivity;)Lcom/iflytek/viafly/account/ui/BindActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 396
    sget-object v1, Lcom/iflytek/viafly/account/ui/BindActivity;->o:Ljava/lang/String;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->m:Z

    monitor-exit v1

    return v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 403
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->u:Ltq;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ltq;

    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->z:Lyn;

    invoke-direct {v0, p0, v1}, Ltq;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->u:Ltq;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->u:Ltq;

    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltq;->a(Ljava/lang/String;)J

    .line 408
    return-void
.end method

.method static synthetic g(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->d()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 413
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->e()V

    .line 414
    return-void
.end method

.method static synthetic h(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->g()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Z)V

    .line 419
    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->t:Ltp;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ltp;

    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->A:Lyn;

    invoke-direct {v0, p0, v1}, Ltp;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->t:Ltp;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->t:Ltp;

    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ltp;->a(Ljava/lang/String;ILjava/lang/String;)J

    .line 427
    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->h()V

    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 512
    const-string/jumbo v0, "\u7ed1\u5b9a\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->d()V

    .line 515
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->finish()V

    .line 516
    return-void
.end method

.method static synthetic k(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->i()V

    return-void
.end method

.method private l()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 520
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->s:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->s:Landroid/view/animation/RotateAnimation;

    .line 522
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->s:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 523
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->s:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 524
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 525
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->s:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 527
    .end local v7    # "lin":Landroid/view/animation/LinearInterpolator;
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 529
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->s:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 530
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->k:Landroid/widget/Button;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 536
    return-void
.end method

.method static synthetic l(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->k()V

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 540
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 541
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->k:Landroid/widget/Button;

    const-string/jumbo v1, "\u7acb\u5373\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    .line 544
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 549
    iget-boolean v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->l:Z

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 553
    return-void
.end method

.method static synthetic m(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->l()V

    return-void
.end method

.method static synthetic n(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->m()V

    return-void
.end method

.method static synthetic o(Lcom/iflytek/viafly/account/ui/BindActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 310
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x3f2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 314
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0c02b1

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0033

    if-ne v1, v2, :cond_5

    .line 186
    iget-boolean v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->l:Z

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/account/ui/BindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const-string/jumbo v1, "\u8bf7\u5148\u8f93\u5165\u624b\u673a\u53f7"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 202
    :cond_4
    const-string/jumbo v1, "\u624b\u673a\u53f7\u7801\u4e0d\u5b58\u5728"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0036

    if-ne v1, v2, :cond_b

    .line 205
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    const-string/jumbo v1, "BindActivity"

    const-string/jumbo v2, "getCode is running"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_6
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-direct {v0, p0}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 212
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/account/ui/BindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_7
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->q:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 220
    :cond_8
    const-string/jumbo v1, "\u624b\u673a\u53f7\u6216\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_9
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 224
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 226
    :cond_a
    const-string/jumbo v1, "\u624b\u673a\u53f7\u6216\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v0    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b002c

    if-ne v1, v2, :cond_c

    .line 229
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->b()V

    .line 230
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->finish()V

    goto/16 :goto_0

    .line 231
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0031

    if-ne v1, v2, :cond_0

    .line 232
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->setContentView(I)V

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 100
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->j:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 101
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->f:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->i:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->k:Landroid/widget/Button;

    .line 105
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->g:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->h:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->a()V

    .line 109
    new-instance v0, Lcom/iflytek/viafly/account/ui/BindActivity$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/account/ui/BindActivity$a;-><init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 317
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 319
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->t:Ltp;

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Z)V

    .line 322
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->t:Ltp;

    iget-wide v2, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->n:J

    invoke-virtual {v0, v2, v3}, Ltp;->cancelRequest(J)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity;->r:Lcom/iflytek/viafly/account/ui/BindActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 329
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 504
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/BindActivity;->b()V

    .line 507
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
