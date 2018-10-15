.class public Lanh$a;
.super Ljava/lang/Object;
.source "BookListDialog.java"

# interfaces
.implements Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/iflytek/base/skin/customView/PullListView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Landroid/content/DialogInterface$OnCancelListener;

.field private f:Landroid/content/DialogInterface$OnDismissListener;

.field private g:Lanh;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lang;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lane;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lane;IILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Lane;
    .param p4, "mode"    # I
    .param p5, "totalSize"    # I
    .param p6, "chapterId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;",
            "Lane;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "mChapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    .line 46
    iput-object v0, p0, Lanh$a;->e:Landroid/content/DialogInterface$OnCancelListener;

    .line 47
    iput-object v0, p0, Lanh$a;->f:Landroid/content/DialogInterface$OnDismissListener;

    .line 48
    iput-object v0, p0, Lanh$a;->g:Lanh;

    .line 62
    iput-object p1, p0, Lanh$a;->d:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lanh$a;->m:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lanh$a;->n:Lane;

    .line 65
    iput p5, p0, Lanh$a;->p:I

    .line 66
    iput p4, p0, Lanh$a;->o:I

    .line 67
    iput-object p6, p0, Lanh$a;->q:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic a(Lanh$a;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lanh$a;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 42
    iput-object p1, p0, Lanh$a;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lanh$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lanh$a;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 42
    iput-object p1, p0, Lanh$a;->j:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lanh$a;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lanh$a;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 42
    iput-object p1, p0, Lanh$a;->k:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Lanh$a;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lanh$a;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 42
    iput-object p1, p0, Lanh$a;->h:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lanh$a;)Lane;
    .locals 1
    .param p0, "x0"    # Lanh$a;

    .prologue
    .line 42
    iget-object v0, p0, Lanh$a;->n:Lane;

    return-object v0
.end method

.method static synthetic a(Lanh$a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lanh$a;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    iput-object p1, p0, Lanh$a;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lanh$a;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lanh$a;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 42
    iput-object p1, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic b(Lanh$a;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lanh$a;

    .prologue
    .line 42
    iget-object v0, p0, Lanh$a;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lanh$a;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lanh$a;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 42
    iput-object p1, p0, Lanh$a;->i:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lanh$a;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lanh$a;

    .prologue
    .line 42
    iget-object v0, p0, Lanh$a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lanh$a;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lanh$a;

    .prologue
    .line 42
    iget-object v0, p0, Lanh$a;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lanh$a;)Lang;
    .locals 1
    .param p0, "x0"    # Lanh$a;

    .prologue
    .line 42
    iget-object v0, p0, Lanh$a;->l:Lang;

    return-object v0
.end method

.method static synthetic f(Lanh$a;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lanh$a;

    .prologue
    .line 42
    invoke-direct {p0}, Lanh$a;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v0, p0, Lanh$a;->c:Landroid/view/View;

    const v1, 0x7f0b0812

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanh$a;->h:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lanh$a;->c:Landroid/view/View;

    const v1, 0x7f0b0814

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanh$a;->i:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lanh$a;->c:Landroid/view/View;

    const v1, 0x7f0b0811

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanh$a;->j:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lanh$a;->c:Landroid/view/View;

    const v1, 0x7f0b0810

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lanh$a;->k:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lanh$a;->c:Landroid/view/View;

    const v1, 0x7f0b0813

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/PullListView;

    iput-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    .line 206
    new-instance v0, Lang;

    iget-object v1, p0, Lanh$a;->d:Landroid/content/Context;

    iget-object v2, p0, Lanh$a;->m:Ljava/util/List;

    iget-object v3, p0, Lanh$a;->n:Lane;

    invoke-direct {v0, v1, v2, v3}, Lang;-><init>(Landroid/content/Context;Ljava/util/List;Lane;)V

    iput-object v0, p0, Lanh$a;->l:Lang;

    .line 207
    iget-object v0, p0, Lanh$a;->l:Lang;

    iget-object v1, p0, Lanh$a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lang;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v1, p0, Lanh$a;->l:Lang;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/PullListView;->setPullRefreshEnable(Z)V

    .line 211
    iget-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    .line 212
    iget-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/PullListView;->setXListViewListener(Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;)V

    .line 214
    iget-object v0, p0, Lanh$a;->h:Landroid/widget/TextView;

    iget v1, p0, Lanh$a;->o:I

    invoke-static {v1}, Lamj;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget v0, p0, Lanh$a;->p:I

    iget-object v1, p0, Lanh$a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    .line 217
    iget-object v0, p0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-direct {p0}, Lanh$a;->i()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->addFooterView(Landroid/view/View;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lanh$a;->j:Landroid/widget/ImageView;

    iget v1, p0, Lanh$a;->o:I

    invoke-static {v1}, Lamj;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lanh$a;->k:Landroid/widget/LinearLayout;

    new-instance v1, Lanh$a$2;

    invoke-direct {v1, p0}, Lanh$a$2;-><init>(Lanh$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lanh$a;->i:Landroid/widget/TextView;

    new-instance v1, Lanh$a$3;

    invoke-direct {v1, p0}, Lanh$a$3;-><init>(Lanh$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method private h()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lanh$a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private i()Landroid/widget/LinearLayout;
    .locals 10

    .prologue
    .line 293
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 295
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    :try_start_0
    const-string/jumbo v5, "#FCFCFC"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 296
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 297
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    iget-object v6, p0, Lanh$a;->d:Landroid/content/Context;

    const-wide/high16 v8, 0x4046000000000000L    # 44.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 298
    .local v1, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 300
    .local v4, "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 301
    .local v3, "textParams":Landroid/widget/AbsListView$LayoutParams;
    const-string/jumbo v5, "\u6ca1\u6709\u66f4\u591a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v5, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 304
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 305
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "textParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v4    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BookListDialog"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Lanh;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 71
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    .line 72
    iget-object v3, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v3, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v3, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "#FCFCFC"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 76
    iget-object v3, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030165

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lanh$a;->c:Landroid/view/View;

    .line 78
    iget-object v3, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lanh$a;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lanh;

    iget-object v3, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Lanh;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "dialog":Lanh;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lanh$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lanh;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v0, v8}, Lanh;->setCanceledOnTouchOutside(Z)V

    .line 84
    iget-object v3, p0, Lanh$a;->e:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lanh$a;->e:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Lanh;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    :cond_0
    iget-object v3, p0, Lanh$a;->f:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lanh$a;->f:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Lanh;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    :goto_0
    invoke-virtual {v0}, Lanh;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 107
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    invoke-virtual {v0}, Lanh;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lanh$a;->f()V

    .line 111
    invoke-direct {p0}, Lanh$a;->g()V

    .line 113
    iput-object v0, p0, Lanh$a;->g:Lanh;

    .line 114
    return-object v0

    .line 90
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    new-instance v3, Lanh$a$1;

    invoke-direct {v3, p0}, Lanh$a$1;-><init>(Lanh$a;)V

    invoke-virtual {v0, v3}, Lanh;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public a(III)Lanh;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lanh$a;->g:Lanh;

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lanh$a;->a()Lanh;

    move-result-object v1

    iput-object v1, p0, Lanh$a;->g:Lanh;

    .line 162
    :cond_0
    iget-object v1, p0, Lanh$a;->g:Lanh;

    invoke-virtual {v1}, Lanh;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lanh$a;->g:Lanh;

    invoke-virtual {v1}, Lanh;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 166
    const/16 p1, 0x33

    .line 168
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 169
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 170
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 172
    iget-object v1, p0, Lanh$a;->g:Lanh;

    invoke-virtual {v1}, Lanh;->show()V

    .line 175
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lanh$a;->g:Lanh;

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chapterId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "mChapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 149
    iput-object p1, p0, Lanh$a;->q:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lanh$a;->m:Ljava/util/List;

    .line 151
    iget-object v0, p0, Lanh$a;->l:Lang;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lanh$a;->l:Lang;

    invoke-virtual {v0, p1, p2}, Lang;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 155
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "mChapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lanh$a$4;

    invoke-direct {v1, p0, p1}, Lanh$a$4;-><init>(Lanh$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public b()Lanh;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lanh$a;->g:Lanh;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lanh$a;->a()Lanh;

    move-result-object v0

    iput-object v0, p0, Lanh$a;->g:Lanh;

    .line 121
    :cond_0
    iget-object v0, p0, Lanh$a;->g:Lanh;

    invoke-virtual {v0}, Lanh;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lanh$a;->a(III)Lanh;

    .line 125
    :cond_1
    iget-object v0, p0, Lanh$a;->g:Lanh;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lanh$a;->g:Lanh;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lanh$a;->g:Lanh;

    invoke-virtual {v0}, Lanh;->dismiss()V

    .line 185
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lanh$a;->g:Lanh;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lanh$a;->g:Lanh;

    invoke-virtual {v0}, Lanh;->isShowing()Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lanh$a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lanh$a$5;

    invoke-direct {v1, p0}, Lanh$a$5;-><init>(Lanh$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method public onLoadMore()V
    .locals 3

    .prologue
    .line 251
    const-string/jumbo v0, "BookListDialog"

    const-string/jumbo v1, "get more"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v0, p0, Lanh$a;->p:I

    iget-object v1, p0, Lanh$a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lanh$a;->d:Landroid/content/Context;

    const-string/jumbo v1, "\u6ca1\u6709\u66f4\u591a\u5566"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    invoke-virtual {p0}, Lanh$a;->e()V

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lanh$a;->n:Lane;

    invoke-direct {p0}, Lanh$a;->h()I

    move-result v1

    invoke-interface {v0, v1}, Lane;->a(I)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method
