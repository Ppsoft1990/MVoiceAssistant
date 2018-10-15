.class public Ltk;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "UserCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltk$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private F:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private G:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private H:Ltk$a;

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:I

.field private final N:I

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:Lals;

.field private T:Lals;

.field private U:J

.field private V:J

.field private W:Laly;

.field private X:Z

.field private Y:Z

.field private Z:Ljava/lang/String;

.field a:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final ad:Ljava/lang/String;

.field private final ae:Ljava/lang/String;

.field private af:Z

.field private ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field private ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field private final ai:Ljava/lang/String;

.field private final aj:Ljava/lang/String;

.field private final ak:Ljava/lang/String;

.field private final al:Ljava/lang/String;

.field private final am:Ljava/lang/String;

.field private final an:Ljava/lang/String;

.field private final ao:Ljava/lang/String;

.field private final ap:Ljava/lang/String;

.field private final aq:Ljava/lang/String;

.field private final ar:Ljava/lang/String;

.field private final as:Ljava/lang/String;

.field private at:Lalt;

.field private au:Lalt;

.field private av:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

.field b:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field c:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field d:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field e:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field f:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field g:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field h:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field i:Lcom/iflytek/viafly/account/ui/UserSettingView;

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    .line 89
    const-string/jumbo v0, "UserCenterFragment"

    iput-object v0, p0, Ltk;->k:Ljava/lang/String;

    .line 117
    iput v1, p0, Ltk;->l:I

    .line 119
    iput v3, p0, Ltk;->m:I

    .line 120
    iput v4, p0, Ltk;->n:I

    .line 121
    iput v5, p0, Ltk;->o:I

    .line 122
    const/4 v0, 0x6

    iput v0, p0, Ltk;->p:I

    .line 124
    const/4 v0, 0x7

    iput v0, p0, Ltk;->q:I

    .line 126
    const/16 v0, 0x8

    iput v0, p0, Ltk;->r:I

    .line 128
    const/16 v0, 0xa

    iput v0, p0, Ltk;->s:I

    .line 130
    const/16 v0, 0xb

    iput v0, p0, Ltk;->t:I

    .line 132
    const/16 v0, 0xc

    iput v0, p0, Ltk;->u:I

    .line 134
    const/16 v0, 0xd

    iput v0, p0, Ltk;->v:I

    .line 136
    const/16 v0, 0xe

    iput v0, p0, Ltk;->w:I

    .line 138
    const/16 v0, 0xf

    iput v0, p0, Ltk;->x:I

    .line 153
    iput v1, p0, Ltk;->I:I

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Ltk;->J:I

    .line 157
    iput v3, p0, Ltk;->K:I

    .line 159
    iput v4, p0, Ltk;->L:I

    .line 161
    iput v5, p0, Ltk;->M:I

    .line 163
    const/4 v0, 0x6

    iput v0, p0, Ltk;->N:I

    .line 165
    iput-boolean v2, p0, Ltk;->O:Z

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltk;->U:J

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltk;->V:J

    .line 176
    iput-boolean v2, p0, Ltk;->X:Z

    .line 182
    const-string/jumbo v0, "show_voicePrint"

    iput-object v0, p0, Ltk;->aa:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "skip_voicePrint"

    iput-object v0, p0, Ltk;->ab:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "show_completeInfo"

    iput-object v0, p0, Ltk;->ac:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "skip_completeInfo"

    iput-object v0, p0, Ltk;->ad:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "011003"

    iput-object v0, p0, Ltk;->ae:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "personCenter"

    iput-object v0, p0, Ltk;->ai:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "personInfo"

    iput-object v0, p0, Ltk;->aj:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "SignIn"

    iput-object v0, p0, Ltk;->ak:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "mission"

    iput-object v0, p0, Ltk;->al:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "history"

    iput-object v0, p0, Ltk;->am:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "collect"

    iput-object v0, p0, Ltk;->an:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "SeverManager"

    iput-object v0, p0, Ltk;->ao:Ljava/lang/String;

    .line 201
    const-string/jumbo v0, "help"

    iput-object v0, p0, Ltk;->ap:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "feedback"

    iput-object v0, p0, Ltk;->aq:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "recommend"

    iput-object v0, p0, Ltk;->ar:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "setting"

    iput-object v0, p0, Ltk;->as:Ljava/lang/String;

    .line 1088
    new-instance v0, Ltk$7;

    invoke-direct {v0, p0}, Ltk$7;-><init>(Ltk;)V

    iput-object v0, p0, Ltk;->at:Lalt;

    .line 1116
    new-instance v0, Ltk$8;

    invoke-direct {v0, p0}, Ltk$8;-><init>(Ltk;)V

    iput-object v0, p0, Ltk;->au:Lalt;

    .line 1185
    new-instance v0, Lcom/iflytek/viafly/account/ui/UserCenterFragment$9;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/account/ui/UserCenterFragment$9;-><init>(Ltk;)V

    iput-object v0, p0, Ltk;->av:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    return-void
.end method

.method static synthetic a(Ltk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 370
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->a:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 371
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->b:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 372
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->c:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 373
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->d:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 374
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 375
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->f:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 376
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->g:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 377
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->h:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 378
    new-instance v3, Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget-object v4, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltk;->i:Lcom/iflytek/viafly/account/ui/UserSettingView;

    .line 380
    iget-object v3, p0, Ltk;->a:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u8bbe\u7f6e"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Ltk;->b:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u5e2e\u52a9\u4e2d\u5fc3"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Ltk;->c:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u610f\u89c1\u53cd\u9988"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Ltk;->d:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u63a8\u8350\u7ed9\u597d\u53cb"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u58f0\u7eb9\u5bc6\u7801"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Ltk;->f:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u4efb\u52a1\u4e2d\u5fc3"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Ltk;->g:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u670d\u52a1\u7ba1\u7406"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Ltk;->h:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Ltk;->i:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v4, "\u64ad\u653e\u5386\u53f2"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setName(Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Ltk;->a:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f020214

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 391
    iget-object v3, p0, Ltk;->b:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f020210

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 392
    iget-object v3, p0, Ltk;->c:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f02020d

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 393
    iget-object v3, p0, Ltk;->d:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f020215

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 394
    iget-object v3, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f02021a

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 395
    iget-object v3, p0, Ltk;->f:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f020219

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 396
    iget-object v3, p0, Ltk;->g:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f020213

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 397
    iget-object v3, p0, Ltk;->h:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f02020b

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 398
    iget-object v3, p0, Ltk;->i:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const v4, 0x7f020211

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setLogo(I)V

    .line 400
    iget-object v3, p0, Ltk;->a:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 401
    iget-object v3, p0, Ltk;->b:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 402
    iget-object v3, p0, Ltk;->c:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 403
    iget-object v3, p0, Ltk;->d:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 404
    iget-object v3, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 405
    iget-object v3, p0, Ltk;->f:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 406
    iget-object v3, p0, Ltk;->g:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 407
    iget-object v3, p0, Ltk;->h:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 408
    iget-object v3, p0, Ltk;->i:Lcom/iflytek/viafly/account/ui/UserSettingView;

    iget v4, p0, Ltk;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v3, p0, Ltk;->a:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v3, p0, Ltk;->b:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v3, p0, Ltk;->c:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v3, p0, Ltk;->d:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v3, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v3, p0, Ltk;->f:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v3, p0, Ltk;->g:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v3, p0, Ltk;->h:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v3, p0, Ltk;->i:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    const-wide v4, 0x404b800000000000L    # 55.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v1, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 421
    .local v1, "normalParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->f:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->h:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->i:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->g:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    const-wide v4, 0x4052c00000000000L    # 75.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 426
    .local v2, "voiceParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v0, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 429
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->b:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->c:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->d:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltk;->a:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v3, p0, Ltk;->y:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    return-void
.end method

.method static synthetic a(Ltk;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ltk;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "isLogin"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 332
    iget-object v1, p0, Ltk;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "change state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz p1, :cond_3

    .line 335
    iget-object v1, p0, Ltk;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Ltk;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-direct {p0}, Ltk;->e()V

    .line 341
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 342
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    invoke-static {}, Lmz;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setVisibility(I)V

    .line 347
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Ltk;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/UserProfile;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    iget-object v1, p0, Ltk;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    .end local v0    # "user":Lcom/iflytek/viafly/account/entity/User;
    :goto_1
    return-void

    .line 345
    .restart local v0    # "user":Lcom/iflytek/viafly/account/entity/User;
    :cond_1
    iget-object v1, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v1, p0, Ltk;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 357
    .end local v0    # "user":Lcom/iflytek/viafly/account/entity/User;
    :cond_3
    iget-object v1, p0, Ltk;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Ltk;->H:Ltk$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ltk$a;->sendEmptyMessage(I)Z

    .line 359
    iget-object v1, p0, Ltk;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Ltk;->F:Lcom/iflytek/viafly/ui/view/CircleImageView;

    const v2, 0x7f02020e

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageResource(I)V

    .line 362
    iget-object v1, p0, Ltk;->B:Landroid/widget/TextView;

    const-string/jumbo v2, "\u6635\u79f0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Ltk;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v1, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/account/ui/UserSettingView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Ltk;Z)Z
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Ltk;->Y:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 588
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    new-instance v1, Ltk$1;

    invoke-direct {v1, p0}, Ltk$1;-><init>(Ltk;)V

    invoke-virtual {v0, v1}, Ltj;->a(Ltj$a;)V

    .line 619
    return-void
.end method

.method static synthetic b(Ltk;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ltk;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ltk;Z)V
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ltk;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "isSetted"    # Z

    .prologue
    .line 623
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    .line 624
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/account/entity/User;->setVoicePrintPasswordSetted(Z)V

    .line 626
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lth;->a(Lcom/iflytek/viafly/account/entity/User;)V

    .line 628
    :cond_0
    return-void
.end method

.method static synthetic b(Ltk;)Z
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-boolean v0, p0, Ltk;->Y:Z

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v1, p0, Ltk;->j:Landroid/content/Context;

    new-instance v2, Ltk$2;

    invoke-direct {v2, p0}, Ltk$2;-><init>(Ltk;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 668
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1026
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1027
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_usercenter_window"

    .line 1028
    .local v1, "opKey":Ljava/lang/String;
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    iget-object v2, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT69414"

    .line 1030
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1031
    return-void
.end method

.method static synthetic c(Ltk;)V
    .locals 0
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    invoke-direct {p0}, Ltk;->d()V

    return-void
.end method

.method static synthetic c(Ltk;Z)V
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ltk;->a(Z)V

    return-void
.end method

.method public static synthetic d(Ltk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->j:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 676
    :try_start_0
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    const v6, 0x7f0c020d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "share_title":Ljava/lang/String;
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    const v6, 0x7f0c020c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "share_text":Ljava/lang/String;
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    const v6, 0x7f0c020f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "share_url":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 680
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->text(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 681
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    iget-object v6, p0, Ltk;->av:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-static {v5, v0, v6}, Lazu;->a(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v0    # "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .end local v2    # "share_text":Ljava/lang/String;
    .end local v3    # "share_title":Ljava/lang/String;
    .end local v4    # "share_url":Ljava/lang/String;
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1064
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-boolean v0, p0, Ltk;->R:Z

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "\u6b63\u5728\u8bf7\u6c42\u7b7e\u5230\u52a0\u54aa\u5495\u5e01"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Ltk;->T:Lals;

    invoke-virtual {v0, p1}, Lals;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltk;->V:J

    .line 1075
    iget-wide v0, p0, Ltk;->V:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1076
    iput-boolean v4, p0, Ltk;->R:Z

    .line 1077
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "\u8bf7\u6c42\u6570\u636e\u5f02\u5e38\uff0c\u76f4\u63a5\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1079
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltk;->R:Z

    goto :goto_0

    .line 1082
    :cond_3
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Ltk;->b(Ljava/lang/String;)V

    .line 1083
    iput-boolean v4, p0, Ltk;->R:Z

    goto :goto_0
.end method

.method static synthetic d(Ltk;Z)Z
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Ltk;->Q:Z

    return p1
.end method

.method private e()V
    .locals 6

    .prologue
    .line 852
    iget-object v3, p0, Ltk;->P:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ltk;->P:Ljava/lang/String;

    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v3, p0, Ltk;->F:Lcom/iflytek/viafly/ui/view/CircleImageView;

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Ltk;->F:Lcom/iflytek/viafly/ui/view/CircleImageView;

    const v4, 0x7f02020e

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageResource(I)V

    .line 861
    :try_start_0
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->k()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "localUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 864
    iget-object v3, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v4, "load Image URl by local"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltk;->F:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v3, v4, v5}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 874
    :cond_2
    :goto_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltk;->P:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 875
    .end local v1    # "localUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "localUrl":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->l()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 870
    iget-object v3, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v4, "load Image URl by net"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v3

    iget-object v4, p0, Ltk;->F:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v3, v2, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1217
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90035"

    .line 1219
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1220
    return-void
.end method

.method static synthetic e(Ltk;)V
    .locals 0
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    invoke-direct {p0}, Ltk;->f()V

    return-void
.end method

.method static synthetic e(Ltk;Z)Z
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Ltk;->R:Z

    return p1
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 905
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_COMPLETE_INFO_WINDOW"

    invoke-virtual {v1, v2, v5}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 906
    .local v0, "isShowWindow":Z
    if-nez v0, :cond_1

    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_COMPLETE_INFO_WINDOW"

    invoke-virtual {v1, v2, v6}, Lil;->a(Ljava/lang/String;Z)V

    .line 909
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 910
    iget-object v1, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v2, "show complete user info window"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Ltk;->ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-nez v1, :cond_0

    .line 913
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iget-object v2, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltk;->ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .line 915
    :cond_0
    iget-object v1, p0, Ltk;->ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    const-string/jumbo v2, "\u5b8c\u5584\u4e2a\u4eba\u8d44\u6599\uff1f"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5b8c\u5584\u4e2a\u4eba\u8d44\u6599\uff0c\u8fd8\u80fd\u83b7\u5f9730\u4e2a\u54aa\u5495\u5e01\u54e6"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u4e0d\u4e86\uff0c\u8c22\u8c22"

    new-instance v3, Ltk$4;

    invoke-direct {v3, p0}, Ltk$4;-><init>(Ltk;)V

    .line 916
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53bb\u5b8c\u5584"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Ltk$3;

    invoke-direct {v4, p0}, Ltk$3;-><init>(Ltk;)V

    .line 926
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    .line 933
    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 934
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 935
    const-string/jumbo v1, "show_completeInfo"

    invoke-direct {p0, v1}, Ltk;->c(Ljava/lang/String;)V

    .line 942
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 937
    iget-object v1, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v2, "show complete user voice print window"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-direct {p0}, Ltk;->g()V

    goto :goto_0
.end method

.method static synthetic f(Ltk;)Z
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-boolean v0, p0, Ltk;->X:Z

    return v0
.end method

.method static synthetic f(Ltk;Z)Z
    .locals 0
    .param p0, "x0"    # Ltk;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Ltk;->X:Z

    return p1
.end method

.method static synthetic g(Ltk;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 946
    invoke-static {}, Lmz;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Ltk;->ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-nez v0, :cond_1

    .line 951
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iget-object v1, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltk;->ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .line 953
    :cond_1
    iget-object v0, p0, Ltk;->ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    const-string/jumbo v1, "\u8bbe\u7f6e\u58f0\u7eb9\u5bc6\u7801\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u9996\u6b21\u8bbe\u7f6e\u58f0\u7eb9\u5bc6\u7801\uff0c\u8fd8\u80fd\u83b7\u5f9720\u4e2a\u54aa\u5495\u5e01\u54e6~"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4e0d\u4e86\uff0c\u8c22\u8c22"

    new-instance v2, Ltk$6;

    invoke-direct {v2, p0}, Ltk$6;-><init>(Ltk;)V

    .line 954
    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53bb\u8bbe\u7f6e"

    sget-object v2, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v3, Ltk$5;

    invoke-direct {v3, p0}, Ltk$5;-><init>(Ltk;)V

    .line 961
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 968
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const/16 v1, 0x11

    .line 969
    invoke-virtual {v0, v1, v4, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 970
    const-string/jumbo v0, "show_voicePrint"

    invoke-direct {p0, v0}, Ltk;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Ltk;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    return-object v0
.end method

.method private h()V
    .locals 8

    .prologue
    .line 974
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 975
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_usercenter_click"

    .line 976
    .local v1, "opKey":Ljava/lang/String;
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 977
    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100098"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 978
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v3

    const-string/jumbo v4, "20012"

    invoke-virtual {v3, v4}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 980
    iget-object v3, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v4, "user info use default url"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string/jumbo v2, "http://xz.voicecloud.cn/resources/lxUserInfo/index.html"

    .line 984
    :cond_0
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT69408"

    .line 986
    invoke-virtual {v3, v4, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 990
    const-string/jumbo v3, "personInfo"

    invoke-direct {p0, v3}, Ltk;->e(Ljava/lang/String;)V

    .line 991
    const/4 v3, 0x1

    iput-boolean v3, p0, Ltk;->O:Z

    .line 993
    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v3, v2}, Lazo;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1004
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 996
    :cond_1
    const-string/jumbo v3, "login"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT69408"

    .line 998
    invoke-virtual {v3, v4, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1002
    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v4

    iget-object v3, p0, Ltk;->j:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v5, 0x0

    sget-object v6, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v7, "login"

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 1008
    iget-object v2, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1009
    iget-object v2, p0, Ltk;->j:Landroid/content/Context;

    const v3, 0x7f0c02fd

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1021
    :goto_0
    return-void

    .line 1013
    :cond_0
    const-string/jumbo v0, "user.voice"

    .line 1015
    .local v0, "action":Ljava/lang/String;
    iget-boolean v2, p0, Ltk;->Y:Z

    if-eqz v2, :cond_1

    .line 1016
    const-string/jumbo v0, "user.voiceSet"

    .line 1018
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Ltk;->j:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/account/ui/UserActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1020
    iget-object v2, p0, Ltk;->j:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic i(Ltk;)V
    .locals 0
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    invoke-direct {p0}, Ltk;->h()V

    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1037
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-boolean v0, p0, Ltk;->Q:Z

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "\u6b63\u5728\u8bf7\u6c42\u7528\u6237\u7b7e\u5230\u4fe1\u606f"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1047
    iget-object v0, p0, Ltk;->S:Lals;

    invoke-virtual {v0}, Lals;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ltk;->U:J

    .line 1048
    iget-wide v0, p0, Ltk;->U:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1049
    iput-boolean v4, p0, Ltk;->Q:Z

    .line 1050
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "\u8bf7\u6c42\u6570\u636e\u5f02\u5e38\uff0c\u76f4\u63a5\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1052
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltk;->Q:Z

    goto :goto_0

    .line 1055
    :cond_3
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "\u65e0\u7f51\u7edc\u6216\u65e0Token\uff0c\u7ed3\u675f"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iput-boolean v4, p0, Ltk;->Q:Z

    goto :goto_0
.end method

.method static synthetic j(Ltk;)V
    .locals 0
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    invoke-direct {p0}, Ltk;->g()V

    return-void
.end method

.method static synthetic k(Ltk;)V
    .locals 0
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    invoke-direct {p0}, Ltk;->i()V

    return-void
.end method

.method static synthetic l(Ltk;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    return-object v0
.end method

.method static synthetic m(Ltk;)Laly;
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->W:Laly;

    return-object v0
.end method

.method static synthetic n(Ltk;)Ltk$a;
    .locals 1
    .param p0, "x0"    # Ltk;

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->H:Ltk$a;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .param p1, "addScore"    # I
    .param p2, "addGrowthValue"    # I

    .prologue
    .line 1172
    new-instance v0, Lcom/iflytek/viafly/ui/CustomToast;

    iget-object v1, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/CustomToast;-><init>(Landroid/content/Context;)V

    .line 1173
    .local v0, "customToast":Lcom/iflytek/viafly/ui/CustomToast;
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/CustomToast;->makeNormalText(II)V

    .line 1174
    return-void
.end method

.method public a(Lalx;)V
    .locals 3
    .param p1, "signInfoData"    # Lalx;

    .prologue
    .line 1158
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_UPDATE_SIGNIN_VIEW signInfoData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    if-eqz p1, :cond_0

    .line 1161
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lalx;->a()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "user has login, return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-virtual {p1}, Lalx;->b()Z

    move-result v0

    iput-boolean v0, p0, Ltk;->X:Z

    .line 1166
    iget-object v0, p0, Ltk;->H:Ltk$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltk$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Ltk;->Z:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1178
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1179
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1180
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1181
    iget-object v1, p0, Ltk;->H:Ltk$a;

    invoke-virtual {v1, v0}, Ltk$a;->sendMessage(Landroid/os/Message;)Z

    .line 1183
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 442
    .local v3, "type":I
    iget v5, p0, Ltk;->l:I

    if-ne v3, v5, :cond_1

    .line 443
    const-string/jumbo v5, "setting"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 444
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    const-class v6, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 446
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100075"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    .line 561
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget v5, p0, Ltk;->m:I

    if-ne v3, v5, :cond_2

    .line 454
    const-string/jumbo v5, "help"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 456
    invoke-static {}, Laod;->a()Laod;

    move-result-object v5

    const-string/jumbo v6, "http://ydclient.voicecloud.cn/vaclient/redirect?service=migukefu"

    invoke-virtual {v5, v6}, Laod;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    const-class v6, Lcom/iflytek/viafly/browser/BrowserActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 461
    .local v0, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    iput-object v4, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 462
    const-string/jumbo v5, "redirectIMOnlineWap"

    iput-object v5, v0, Lcom/iflytek/viafly/browser/BrowserParams;->info:Ljava/lang/String;

    .line 463
    const-string/jumbo v5, "com.iflytek.cmccbrowser.EXTRA_BREIF_ITEM"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 465
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5, v1}, Lazo;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 466
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100088"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    .end local v0    # "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    iget v5, p0, Ltk;->n:I

    if-ne v3, v5, :cond_3

    .line 469
    const-string/jumbo v5, "feedback"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 470
    const-string/jumbo v4, "http://xz.voicecloud.cn/resources/lxFeedbackV2/index.html"

    .line 471
    .restart local v4    # "url":Ljava/lang/String;
    invoke-static {v4}, Lazo;->a(Ljava/lang/String;)V

    .line 472
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100089"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    iget v5, p0, Ltk;->o:I

    if-ne v3, v5, :cond_4

    .line 474
    const-string/jumbo v5, "recommend"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Ltk;->c()V

    .line 476
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100078"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_4
    iget v5, p0, Ltk;->p:I

    if-ne v3, v5, :cond_5

    .line 478
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100096"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Ltk;->i()V

    goto/16 :goto_0

    .line 480
    :cond_5
    iget v5, p0, Ltk;->q:I

    if-ne v3, v5, :cond_6

    .line 481
    invoke-direct {p0}, Ltk;->h()V

    goto/16 :goto_0

    .line 482
    :cond_6
    iget v5, p0, Ltk;->r:I

    if-eq v3, v5, :cond_0

    .line 501
    iget v5, p0, Ltk;->s:I

    if-ne v3, v5, :cond_9

    .line 502
    const-string/jumbo v5, "mission"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 504
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->c()Z

    move-result v5

    if-nez v5, :cond_7

    .line 505
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    const v6, 0x7f0c02fd

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 508
    :cond_7
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 511
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100120"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 513
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v5

    const-string/jumbo v6, ""

    const-string/jumbo v7, "http://xz.voicecloud.cn/resources/lxMiguCoin/index.html"

    invoke-virtual {v5, v6, v7, v9}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    :cond_8
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v6

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v8, "misson"

    invoke-virtual {v6, v5, v9, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_9
    iget v5, p0, Ltk;->t:I

    if-eq v3, v5, :cond_0

    .line 522
    iget v5, p0, Ltk;->u:I

    if-ne v3, v5, :cond_a

    .line 523
    const-string/jumbo v5, "SeverManager"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 524
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 526
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_a
    iget v5, p0, Ltk;->v:I

    if-ne v3, v5, :cond_c

    .line 527
    const-string/jumbo v5, "collect"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 528
    iget-object v5, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v6, "COLLECT"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    if-nez v5, :cond_b

    .line 531
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v6

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v8, "collect"

    invoke-virtual {v6, v5, v9, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/iflytek/viafly/account/ui/FavorListActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 536
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_c
    iget v5, p0, Ltk;->w:I

    if-ne v3, v5, :cond_d

    .line 537
    const-string/jumbo v5, "history"

    invoke-direct {p0, v5}, Ltk;->e(Ljava/lang/String;)V

    .line 538
    iget-object v5, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v6, "HISTORY"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/iflytek/viafly/account/ui/HistoryListActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 541
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_d
    iget v5, p0, Ltk;->x:I

    if-ne v3, v5, :cond_0

    .line 542
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    if-nez v5, :cond_e

    .line 544
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v6

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v8, "sign"

    invoke-virtual {v6, v5, v9, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 546
    :cond_e
    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100068"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    .line 547
    iget-boolean v5, p0, Ltk;->X:Z

    if-eqz v5, :cond_f

    .line 549
    const-string/jumbo v5, "\u4eca\u65e5\u5df2\u7b7e\u5230"

    invoke-virtual {p0, v5}, Ltk;->b(Ljava/lang/String;)V

    .line 555
    :goto_1
    iget-object v5, p0, Ltk;->H:Ltk$a;

    if-eqz v5, :cond_0

    .line 556
    iget-object v5, p0, Ltk;->H:Ltk$a;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ltk$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 552
    :cond_f
    const-string/jumbo v5, "SIGN"

    invoke-direct {p0, v5}, Ltk;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 209
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Ltk;->j:Landroid/content/Context;

    .line 212
    const-string/jumbo v0, "personCenter"

    invoke-direct {p0, v0}, Ltk;->e(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100107"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3}, Ltk;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

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

    .line 224
    iget-object v5, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v6, "onCreateView"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iput-object v5, p0, Ltk;->j:Landroid/content/Context;

    .line 226
    new-instance v5, Ltk$a;

    invoke-direct {v5, p0}, Ltk$a;-><init>(Ltk;)V

    iput-object v5, p0, Ltk;->H:Ltk$a;

    .line 227
    new-instance v5, Lals;

    iget-object v6, p0, Ltk;->at:Lalt;

    invoke-direct {v5, v6}, Lals;-><init>(Lalt;)V

    iput-object v5, p0, Ltk;->S:Lals;

    .line 228
    new-instance v5, Lals;

    iget-object v6, p0, Ltk;->au:Lalt;

    invoke-direct {v5, v6}, Lals;-><init>(Lalt;)V

    iput-object v5, p0, Ltk;->T:Lals;

    .line 229
    new-instance v5, Laly;

    invoke-direct {v5}, Laly;-><init>()V

    iput-object v5, p0, Ltk;->W:Laly;

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v2

    .line 234
    .local v2, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v5, p0, Ltk;->j:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 235
    .local v3, "rootViewLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 243
    invoke-virtual {p0}, Ltk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030011

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 245
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Ltk;->y:Landroid/widget/LinearLayout;

    .line 246
    const v5, 0x7f0b00b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v5, p0, Ltk;->F:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 247
    const v5, 0x7f0b00b3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v5, p0, Ltk;->G:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 248
    const v5, 0x7f0b00b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ltk;->A:Landroid/widget/TextView;

    .line 249
    const v5, 0x7f0b00b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v5, p0, Ltk;->E:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 250
    const v5, 0x7f0b00b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ltk;->B:Landroid/widget/TextView;

    .line 251
    const v5, 0x7f0b00b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ltk;->C:Landroid/widget/TextView;

    .line 252
    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ltk;->D:Landroid/widget/TextView;

    .line 253
    const v5, 0x7f0b00b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Ltk;->z:Landroid/widget/LinearLayout;

    .line 255
    iget-object v5, p0, Ltk;->C:Landroid/widget/TextView;

    iget v6, p0, Ltk;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v5, p0, Ltk;->C:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v5, p0, Ltk;->E:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget v6, p0, Ltk;->q:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 259
    iget-object v5, p0, Ltk;->E:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v5, p0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v5, p0, Ltk;->G:Lcom/iflytek/viafly/ui/view/CircleImageView;

    const v6, 0x7f02020f

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageResource(I)V

    .line 266
    invoke-direct {p0}, Ltk;->a()V

    .line 268
    invoke-virtual {v3, v4, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    invoke-virtual {p0, v3}, Ltk;->addContentView(Landroid/view/View;)V

    .line 271
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    invoke-virtual {v5, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 273
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    invoke-direct {p0, v5}, Ltk;->a(Z)V

    .line 274
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 895
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 896
    iget-object v0, p0, Ltk;->H:Ltk$a;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Ltk;->H:Ltk$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltk$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 899
    :cond_0
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroy()V

    .line 900
    return-void
.end method

.method public onEvent(Lti;)V
    .locals 6
    .param p1, "event"    # Lti;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 796
    if-nez p1, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    const-string/jumbo v1, "UserLoginEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 805
    iget-object v1, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v2, " user login"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0}, Ltk;->b()V

    .line 811
    iget-object v1, p0, Ltk;->H:Ltk$a;

    if-eqz v1, :cond_2

    .line 812
    iget-object v1, p0, Ltk;->H:Ltk$a;

    const/4 v2, 0x3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Ltk$a;->sendEmptyMessageDelayed(IJ)Z

    .line 814
    :cond_2
    iget-object v1, p0, Ltk;->H:Ltk$a;

    if-eqz v1, :cond_3

    .line 815
    iget-object v1, p0, Ltk;->H:Ltk$a;

    invoke-virtual {v1, v3}, Ltk$a;->sendEmptyMessage(I)Z

    .line 817
    :cond_3
    iget-boolean v1, p0, Ltk;->af:Z

    if-nez v1, :cond_0

    .line 818
    invoke-direct {p0}, Ltk;->j()V

    .line 819
    iput-boolean v3, p0, Ltk;->af:Z

    goto :goto_0

    .line 821
    :cond_4
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    const-string/jumbo v1, ""

    iput-object v1, p0, Ltk;->P:Ljava/lang/String;

    .line 823
    iput-boolean v2, p0, Ltk;->X:Z

    .line 824
    iget-object v1, p0, Ltk;->ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ltk;->ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 825
    iget-object v1, p0, Ltk;->ag:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 827
    :cond_5
    iget-object v1, p0, Ltk;->ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ltk;->ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 828
    iget-object v1, p0, Ltk;->ah:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 830
    :cond_6
    iget-object v1, p0, Ltk;->H:Ltk$a;

    if-eqz v1, :cond_7

    .line 831
    iget-object v1, p0, Ltk;->H:Ltk$a;

    invoke-virtual {v1, v3}, Ltk$a;->sendEmptyMessage(I)Z

    .line 833
    :cond_7
    iget-boolean v1, p0, Ltk;->af:Z

    if-eqz v1, :cond_0

    .line 834
    iput-boolean v2, p0, Ltk;->af:Z

    goto :goto_0
.end method

.method protected onFragmentResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 842
    iget-object v0, p0, Ltk;->k:Ljava/lang/String;

    const-string/jumbo v1, "center onFragmentResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-direct {p0}, Ltk;->b()V

    .line 845
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onFragmentResult(Landroid/os/Bundle;)V

    .line 846
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 882
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onResume()V

    .line 884
    iget-boolean v0, p0, Ltk;->O:Z

    if-eqz v0, :cond_1

    .line 886
    invoke-virtual {p0}, Ltk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Ltk;->H:Ltk$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltk$a;->sendEmptyMessage(I)Z

    .line 889
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltk;->O:Z

    .line 891
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v4, -0x2

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 279
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 280
    const-string/jumbo v2, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-virtual {p0, v2}, Ltk;->setTitleText(Ljava/lang/CharSequence;)V

    .line 281
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Ltk;->setTitleStyle(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Ltk;->setBackBtnResource(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Ltk;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 284
    invoke-virtual {p0}, Ltk;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 287
    invoke-virtual {p0}, Ltk;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 288
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 289
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Ltk;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 295
    invoke-virtual {p0}, Ltk;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    iput-boolean v2, p0, Ltk;->af:Z

    .line 300
    invoke-virtual {p0}, Ltk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Ltk;->H:Ltk$a;

    invoke-virtual {v2, v8}, Ltk$a;->sendEmptyMessage(I)Z

    .line 303
    invoke-direct {p0}, Ltk;->j()V

    .line 306
    :cond_2
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    iput-boolean v7, p0, Ltk;->Y:Z

    .line 309
    iget-object v2, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v3, "\u6211\u7684\u58f0\u7eb9"

    invoke-virtual {v2, v3, v8}, Lcom/iflytek/viafly/account/ui/UserSettingView;->a(Ljava/lang/String;I)V

    .line 315
    :goto_0
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->e()Z

    move-result v2

    if-nez v2, :cond_5

    .line 316
    iget-object v2, p0, Ltk;->D:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :goto_1
    invoke-direct {p0}, Ltk;->b()V

    .line 321
    const-string/jumbo v2, "user.center.info"

    iget-object v3, p0, Ltk;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    invoke-direct {p0}, Ltk;->h()V

    .line 328
    :cond_3
    :goto_2
    return-void

    .line 311
    :cond_4
    iput-boolean v9, p0, Ltk;->Y:Z

    .line 312
    iget-object v2, p0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v3, "\u9996\u6b21\u8bbe\u7f6e\u58f0\u7eb9\u5bc6\u7801+20\u54aa\u5495\u5e01"

    invoke-virtual {v2, v3, v7}, Lcom/iflytek/viafly/account/ui/UserSettingView;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 318
    :cond_5
    iget-object v2, p0, Ltk;->D:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 324
    :cond_6
    const-string/jumbo v2, "user.center.voice"

    iget-object v3, p0, Ltk;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    invoke-direct {p0}, Ltk;->i()V

    goto :goto_2
.end method
