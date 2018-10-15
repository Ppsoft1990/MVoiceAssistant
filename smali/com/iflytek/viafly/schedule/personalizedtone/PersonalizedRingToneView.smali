.class public Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
.super Landroid/widget/RelativeLayout;
.source "PersonalizedRingToneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;,
        Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

.field private static p:J


# instance fields
.field private b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

.field private c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/iflytek/base/skin/customView/XImageView;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/iflytek/base/skin/customView/XImageView;

.field private h:Lcom/iflytek/base/skin/customView/XImageView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

.field private k:Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

.field private l:Lcom/iflytek/base/skin/customView/XImageView;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/text/TextWatcher;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 31
    new-instance v6, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    invoke-direct {v6, v0, v1, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V

    sput-object v6, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 269
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->p:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .param p3, "listener"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 37
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->d:Landroid/widget/TextView;

    .line 38
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->e:Lcom/iflytek/base/skin/customView/XImageView;

    .line 39
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    .line 40
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    .line 44
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->i:Landroid/widget/RelativeLayout;

    .line 45
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->j:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    .line 46
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->k:Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    .line 47
    iput-object v6, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->l:Lcom/iflytek/base/skin/customView/XImageView;

    .line 201
    new-instance v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)V

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->m:Landroid/view/View$OnClickListener;

    .line 241
    new-instance v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$2;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$2;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)V

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->n:Landroid/text/TextWatcher;

    .line 268
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->o:J

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v1, "paramRoot":Landroid/widget/RelativeLayout$LayoutParams;
    const-string/jumbo v4, "layout_inflater"

    .line 54
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300d5

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_0

    .line 58
    const-string/jumbo v4, "PersonalizedRingToneView"

    const-string/jumbo v5, "ERROR NO res Loaded"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->j:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    .line 63
    const v4, 0x7f0b0529

    .line 64
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 65
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v4, 0x7f0b0530

    .line 67
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->l:Lcom/iflytek/base/skin/customView/XImageView;

    .line 68
    const v4, 0x7f0b052c

    .line 69
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->d:Landroid/widget/TextView;

    .line 70
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 71
    const v4, 0x7f0b052b

    .line 72
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->e:Lcom/iflytek/base/skin/customView/XImageView;

    .line 73
    const v4, 0x7f0b052d

    .line 74
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    .line 77
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 84
    const v4, 0x7f0b052f

    .line 85
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    .line 86
    const v4, 0x7f0b052e

    .line 87
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->h:Lcom/iflytek/base/skin/customView/XImageView;

    .line 92
    const v4, 0x7f0b0532

    .line 93
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->k:Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    .line 94
    const v4, 0x7f0b0531

    .line 95
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->i:Landroid/widget/RelativeLayout;

    .line 96
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->i:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v4, 0x7f0b0533

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, "synthesisTip":Landroid/widget/TextView;
    const/4 v4, 0x0

    const v5, -0x777778

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 100
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->h:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->setData(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->j:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    return-object v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->p:J

    return-wide v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->o:J

    return-wide v0
.end method

.method private setContentLengthLimit(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 279
    .local v0, "filters":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;

    const/16 v3, 0x1e

    invoke-direct {v2, p0, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;I)V

    aput-object v2, v0, v1

    .line 295
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-boolean v1, v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->f:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-boolean v0, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->f:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-boolean v0, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->f:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->h:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 191
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->h:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getData()Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object v0
.end method

.method public getProgressView()Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->k:Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    return-object v0
.end method

.method public setData(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 6
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->n:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 117
    const/16 v2, 0x8

    .line 118
    .local v2, "visibility":I
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-boolean v3, v3, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    if-eqz v3, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->l:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-object v4, v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRoleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Laws;->a(Landroid/content/Context;)Laws;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->e:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-object v5, v5, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 125
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {v3, v4, v5}, Laws;->a(Lcom/iflytek/base/skin/customView/XImageView;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-object v4, v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->n:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->f:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->setContentLengthLimit(Landroid/widget/EditText;)V

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lawy;->a(Landroid/content/Context;)Lawy;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v3, v4}, Lawy;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Z

    move-result v1

    .line 144
    .local v1, "isSynthesising":Z
    invoke-static {}, Lawt;->a()Lawt;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v3, v4}, Lawt;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Z

    move-result v0

    .line 145
    .local v0, "isAnimationShowing":Z
    const-string/jumbo v3, "PersonalizedRingToneView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showWaitSynthesis? isSynthesising: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isAnimationShowing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->i:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a()V

    .line 151
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->i:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
