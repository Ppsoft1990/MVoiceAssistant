.class public Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "CmccCard.java"

# interfaces
.implements Lnd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

.field private C:Lorg/json/JSONObject;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:I

.field private final K:I

.field private L:Z

.field private M:Lakg;

.field private N:Lail;

.field private O:Z

.field private P:Lyn;

.field protected o:Ljava/lang/String;

.field p:Lake;

.field private final q:I

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 46
    const-string/jumbo v3, "CmccCard"

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    .line 52
    iput v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->q:I

    .line 53
    const-string/jumbo v3, "version"

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->r:Ljava/lang/String;

    .line 55
    const-string/jumbo v3, "000004"

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->s:Ljava/lang/String;

    .line 56
    const-string/jumbo v3, "000001"

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->t:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->u:I

    .line 59
    iput v5, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->v:I

    .line 60
    iput v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->w:I

    .line 61
    iput v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->x:I

    .line 62
    const/4 v3, 0x5

    iput v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->y:I

    .line 63
    const/4 v3, 0x6

    iput v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->z:I

    .line 65
    const/4 v3, 0x6

    iput v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    .line 77
    iput v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->G:I

    .line 78
    iput v5, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->H:I

    .line 79
    iput v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->I:I

    .line 80
    iput v6, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->J:I

    .line 81
    const/16 v3, 0x8

    iput v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->K:I

    .line 83
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->L:Z

    .line 92
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->O:Z

    .line 410
    new-instance v3, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    .line 480
    new-instance v3, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$2;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->P:Lyn;

    .line 96
    new-instance v3, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;)V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    .line 98
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v3, v4, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "oldVersionCode":I
    if-nez v0, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->O:Z

    .line 102
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->g()V

    .line 105
    return-void

    :cond_0
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
    .param p1, "x1"    # Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->C:Lorg/json/JSONObject;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->N:Lail;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->N:Lail;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->getCmccCardType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lail;->a(ILjava/lang/String;)V

    .line 604
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->D:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v1, " showLogoutState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x6

    iput v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    .line 218
    const-string/jumbo v0, "000004"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->D:Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->C:Lorg/json/JSONObject;

    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    .line 222
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    return-object v0
.end method

.method private f()J
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v1, "doRequest()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->M:Lakg;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lakg;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->P:Lyn;

    invoke-direct {v0, v1, v2}, Lakg;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->M:Lakg;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->M:Lakg;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lakg;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->C:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->n()V

    return-void
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic k(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v1, "handleVerifySuccess()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    .line 596
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lake;->a(Z)V

    .line 598
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lake;->a(Z)V

    .line 280
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$3;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->c()V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a()V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->c()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e()V

    .line 611
    :cond_0
    return-void
.end method

.method public d()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 226
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->setOrientation(I)V

    .line 227
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "cacheJson":Lorg/json/JSONObject;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.IFLY_CARD_CMCC_CACHE"

    invoke-virtual {v7, v8, v10}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "caheJsonStr":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 234
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "cacheJson":Lorg/json/JSONObject;
    .local v2, "cacheJson":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v7, "version"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 236
    .local v3, "cacheversion":I
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CMCC_CARD_VERSION = 3, cacheversion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-ne v11, v3, :cond_1

    .line 239
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "curIMSI":Ljava/lang/String;
    const-string/jumbo v7, "imsi"

    const-string/jumbo v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "cacheIMSI":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 243
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "curIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", cacheIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.IFLY_CARD_CMCC_CACHE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    const/4 v1, 0x0

    .line 258
    .end local v0    # "cacheIMSI":Ljava/lang/String;
    .end local v2    # "cacheJson":Lorg/json/JSONObject;
    .end local v3    # "cacheversion":I
    .end local v5    # "curIMSI":Ljava/lang/String;
    .restart local v1    # "cacheJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v7, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    invoke-direct {v7, v8, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    .line 259
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    iget-object v8, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setCmccCardActionLs(Lake;)V

    .line 261
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->B:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Landroid/widget/LinearLayout;)V

    .line 262
    if-eqz v1, :cond_2

    .line 263
    iput v11, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    .line 270
    :goto_1
    return-void

    .line 249
    .end local v1    # "cacheJson":Lorg/json/JSONObject;
    .restart local v2    # "cacheJson":Lorg/json/JSONObject;
    .restart local v3    # "cacheversion":I
    :cond_1
    :try_start_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.IFLY_CARD_CMCC_CACHE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    const/4 v1, 0x0

    .end local v2    # "cacheJson":Lorg/json/JSONObject;
    .restart local v1    # "cacheJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 252
    .end local v3    # "cacheversion":I
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.IFLY_CARD_CMCC_CACHE"

    invoke-virtual {v7, v8, v10}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v7, 0x2

    iput v7, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    goto :goto_1

    .line 252
    .end local v1    # "cacheJson":Lorg/json/JSONObject;
    .restart local v2    # "cacheJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "cacheJson":Lorg/json/JSONObject;
    .restart local v1    # "cacheJson":Lorg/json/JSONObject;
    goto :goto_2

    .end local v1    # "cacheJson":Lorg/json/JSONObject;
    .restart local v0    # "cacheIMSI":Ljava/lang/String;
    .restart local v2    # "cacheJson":Lorg/json/JSONObject;
    .restart local v3    # "cacheversion":I
    .restart local v5    # "curIMSI":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .end local v2    # "cacheJson":Lorg/json/JSONObject;
    .restart local v1    # "cacheJson":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method protected getCmccCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    const-string/jumbo v0, "Feecmcc_category"

    return-object v0
.end method

.method public onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthError() ---- errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method public onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v1, "onAuthResult()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    .line 585
    return-void
.end method

.method public onEvent(Lakf;)V
    .locals 6
    .param p1, "event"    # Lakf;

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p1}, Lakf;->a()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "eventType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v2, "UserGuideEntryEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new user guide enter button is clicked, mLastState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsNewVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->O:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x4

    iget v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->A:I

    if-ne v2, v3, :cond_0

    .line 148
    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->O:Z

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v3, "new user guide enter button is clicked, trigger sms auth"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-boolean v5, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->L:Z

    .line 154
    iput-boolean v5, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->O:Z

    goto :goto_0

    .line 158
    :cond_2
    const-string/jumbo v2, "AuthRequestEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v3, " start verify auth"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "cm":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    const-string/jumbo v3, "\u7f51\u7edc\u672a\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    invoke-interface {v2}, Lake;->a()V

    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 5
    .param p1, "event"    # Lti;

    .prologue
    const/16 v4, 0x8

    .line 178
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "eventType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const-string/jumbo v2, "UserLoginEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "cm":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v3, "\u7f51\u7edc\u672a\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v3, "onEvent: MESSAGE_SWITCH_VIEW"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    .line 200
    invoke-static {}, Lmz;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v3, "onEvent: isMobileLogin"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 206
    .end local v0    # "cm":Lcom/iflytek/yd/system/ConnectionManager;
    :cond_3
    const-string/jumbo v2, "UserLogoutEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v3, " user logout"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    .line 210
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->F:Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->N:Lail;

    .line 285
    return-void
.end method
