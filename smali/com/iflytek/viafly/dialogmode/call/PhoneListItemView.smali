.class public Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
.super Landroid/widget/LinearLayout;
.source "PhoneListItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/animation/ObjectAnimator;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/iflytek/common/adaptation/entity/SimCard;

.field private n:Ljava/lang/String;

.field private o:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;

.field private p:Z

.field private q:I

.field private r:J

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->p:Z

    .line 57
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->r:J

    .line 269
    new-instance v1, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$5;-><init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)V

    iput-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->s:Landroid/os/Handler;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030067

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    .line 66
    invoke-direct {p0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "rightIconId"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 285
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 286
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 288
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->o:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->o:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;

    iget v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->q:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;->a(ILjava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(ZZ)V
    .locals 7
    .param p1, "isCardOneSelected"    # Z
    .param p2, "isCardTwoSelected"    # Z

    .prologue
    const v2, 0x7f080027

    const v1, 0x7f080026

    const v3, 0x7f020087

    const v4, 0x7f020086

    .line 230
    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v6, v0}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->g:Landroid/widget/Button;

    iget-object v5, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->g:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v5, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 232
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->f:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->g:Landroid/widget/Button;

    if-eqz p2, :cond_3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    return-void

    :cond_0
    move v0, v2

    .line 230
    goto :goto_0

    :cond_1
    move v1, v2

    .line 231
    goto :goto_1

    :cond_2
    move v0, v4

    .line 232
    goto :goto_2

    :cond_3
    move v3, v4

    .line 233
    goto :goto_3
.end method

.method static synthetic b(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02f6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b031e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->e:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->f:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->g:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b031f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->h:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->i:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->j:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->k:Landroid/widget/ProgressBar;

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02fb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->l:Landroid/widget/TextView;

    .line 85
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->n:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 237
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->k:Landroid/widget/ProgressBar;

    const-string/jumbo v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b:Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b:Landroid/animation/ObjectAnimator;

    iget-wide v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->r:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->r:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;-><init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    return-void

    .line 240
    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0

    .line 239
    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b()V

    .line 90
    return-void
.end method

.method public a(ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Ljava/util/List;ZJ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "itemType"    # Ljava/lang/String;
    .param p3, "isDefault"    # Z
    .param p4, "isMobile"    # Z
    .param p5, "phoneTag"    # Ljava/lang/String;
    .param p6, "markPhoneNum"    # Ljava/lang/String;
    .param p7, "rightIconId"    # Ljava/lang/String;
    .param p8, "isDoubleCard"    # Z
    .param p9, "defaultSimMode"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p11, "isNeedTrigger"    # Z
    .param p12, "delayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p10, "SimNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->r:J

    .line 137
    iput p1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->q:I

    .line 138
    iput-object p7, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->n:Ljava/lang/String;

    .line 139
    iput-object p9, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->m:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 140
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->i:Landroid/widget/TextView;

    if-eqz p4, :cond_0

    invoke-static {p6}, Lazk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .end local p6    # "markPhoneNum":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const-string/jumbo v2, "telephone"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    if-eqz p8, :cond_5

    .line 151
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->h:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->f:Landroid/widget/Button;

    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->g:Landroid/widget/Button;

    const/4 v2, 0x1

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, p9}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    const-string/jumbo v2, "card1"

    iput-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a:Ljava/lang/String;

    .line 163
    if-eqz p3, :cond_2

    .line 165
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(ZZ)V

    .line 177
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->f:Landroid/widget/Button;

    new-instance v3, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$1;

    invoke-direct {v3, p0, p7}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$1;-><init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->g:Landroid/widget/Button;

    new-instance v3, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;

    invoke-direct {v3, p0, p7}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;-><init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :goto_1
    if-eqz p3, :cond_3

    if-eqz p11, :cond_3

    .line 222
    invoke-direct {p0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d()V

    .line 227
    :cond_3
    return-void

    .line 169
    :cond_4
    const-string/jumbo v2, "card2"

    iput-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a:Ljava/lang/String;

    .line 171
    if-eqz p3, :cond_2

    .line 173
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(ZZ)V

    goto :goto_0

    .line 204
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->e:Landroid/widget/TextView;

    if-eqz p3, :cond_6

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->h:Landroid/widget/ImageView;

    if-nez p3, :cond_7

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->h:Landroid/widget/ImageView;

    new-instance v3, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$3;

    invoke-direct {v3, p0, p7}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$3;-><init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 206
    :cond_6
    const/16 v2, 0x8

    goto :goto_2

    .line 207
    :cond_7
    const/16 v2, 0x8

    goto :goto_3
.end method

.method public a(ZZ)V
    .locals 4
    .param p1, "isNeedTrigger"    # Z
    .param p2, "isSelect"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 96
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->m:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v2}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string/jumbo v0, "card1"

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a:Ljava/lang/String;

    .line 100
    if-eqz p2, :cond_1

    .line 102
    invoke-direct {p0, v3, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(ZZ)V

    .line 127
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d()V

    .line 131
    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(ZZ)V

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v0, "card2"

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a:Ljava/lang/String;

    .line 111
    if-eqz p2, :cond_3

    .line 113
    invoke-direct {p0, v1, v3}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(ZZ)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-direct {p0, v1, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(ZZ)V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->h:Landroid/widget/ImageView;

    if-nez p2, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 122
    goto :goto_1

    :cond_6
    move v1, v2

    .line 123
    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public setItemClickEvent(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;)V
    .locals 0
    .param p1, "itemClickEvent"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->o:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$a;

    .line 72
    return-void
.end method
