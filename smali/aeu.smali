.class public Laeu;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lada;

.field private f:Laee;

.field private g:Lady;

.field private h:I

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Laeu;->a:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Laeu;->h:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeu;->k:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Laeu;->l:Ljava/lang/String;

    .line 258
    new-instance v0, Laeu$7;

    invoke-direct {v0, p0}, Laeu$7;-><init>(Laeu;)V

    iput-object v0, p0, Laeu;->m:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Laeu;I)I
    .locals 0
    .param p0, "x0"    # Laeu;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Laeu;->h:I

    return p1
.end method

.method static synthetic a(Laeu;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Laeu;

    .prologue
    .line 43
    iget-object v0, p0, Laeu;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Laeu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Laeu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Laeu;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Laeu;Landroid/widget/EditText;)V
    .locals 0
    .param p0, "x0"    # Laeu;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Laeu;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Laeu;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Laeu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Laeu;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 5
    .param p1, "currentEditText"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    iget-object v1, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 420
    .local v0, "editText":Landroid/widget/EditText;
    if-ne v0, p1, :cond_0

    .line 421
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 422
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 425
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 428
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 13
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 284
    iget-object v7, p0, Laeu;->c:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 406
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Laeu;->c:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "editLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 290
    iget-object v7, p0, Laeu;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Laeu;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 293
    .local v6, "view":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v3, "lineParam":Landroid/widget/LinearLayout$LayoutParams;
    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 295
    const-string/jumbo v7, "#212325"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 296
    invoke-virtual {v0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Laeu;->c:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 299
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 301
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Laeu;->c:Landroid/content/Context;

    const-wide/high16 v8, 0x404a000000000000L    # 52.0

    .line 302
    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    invoke-direct {v4, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 304
    new-instance v1, Landroid/widget/EditText;

    iget-object v7, p0, Laeu;->c:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 306
    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 307
    const-string/jumbo v7, "\u7535\u8bdd\u53f7\u7801\uff1a"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 308
    const-string/jumbo v7, "#C2C2C2"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 309
    const/4 v7, 0x2

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v1, v7, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 310
    const-string/jumbo v7, "#212325"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 311
    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 314
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1
    new-instance v7, Laeu$8;

    invoke-direct {v7, p0, v1}, Laeu$8;-><init>(Laeu;Landroid/widget/EditText;)V

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 340
    new-instance v7, Laeu$9;

    invoke-direct {v7, p0, p2, v1}, Laeu$9;-><init>(Laeu;ILandroid/widget/EditText;)V

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 360
    new-instance v7, Laeu$10;

    invoke-direct {v7, p0, v1}, Laeu$10;-><init>(Laeu;Landroid/widget/EditText;)V

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    iget-object v7, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 381
    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v5, Landroid/widget/ImageView;

    iget-object v7, p0, Laeu;->c:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 384
    .local v5, "subImg":Landroid/widget/ImageView;
    const v7, 0x7f020088

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    const-string/jumbo v7, "sub_image"

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 386
    new-instance v7, Laeu$2;

    invoke-direct {v7, p0, v1, v0}, Laeu$2;-><init>(Laeu;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    invoke-direct {p0}, Laeu;->b()V

    .line 405
    invoke-direct {p0}, Laeu;->c()V

    goto/16 :goto_0
.end method

.method static synthetic b(Laeu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Laeu;

    .prologue
    .line 43
    iget-object v0, p0, Laeu;->k:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v1, p0, Laeu;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 410
    iget-object v1, p0, Laeu;->d:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "sub_image"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Laeu;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 414
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const-string/jumbo v1, "sub_image"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Laeu;)Lada;
    .locals 1
    .param p0, "x0"    # Laeu;

    .prologue
    .line 43
    iget-object v0, p0, Laeu;->e:Lada;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 431
    const/4 v1, 0x0

    .line 433
    .local v1, "isContentAvailable":Z
    iget-object v4, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 434
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v2

    .line 436
    :goto_0
    if-eqz v1, :cond_0

    .line 442
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    if-eqz v1, :cond_3

    .line 443
    iget-object v3, p0, Laeu;->j:Landroid/widget/Button;

    const-string/jumbo v4, "#2076EA"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 444
    iget-object v3, p0, Laeu;->j:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 450
    :goto_1
    return-void

    .restart local v0    # "editText":Landroid/widget/EditText;
    :cond_2
    move v1, v3

    .line 434
    goto :goto_0

    .line 446
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_3
    iget-object v2, p0, Laeu;->j:Landroid/widget/Button;

    const-string/jumbo v4, "#C0D2EB"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 447
    iget-object v2, p0, Laeu;->j:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic d(Laeu;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Laeu;

    .prologue
    .line 43
    iget-object v0, p0, Laeu;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Laeu;)V
    .locals 0
    .param p0, "x0"    # Laeu;

    .prologue
    .line 43
    invoke-direct {p0}, Laeu;->c()V

    return-void
.end method

.method static synthetic f(Laeu;)V
    .locals 0
    .param p0, "x0"    # Laeu;

    .prologue
    .line 43
    invoke-direct {p0}, Laeu;->b()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f03005b

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 12
    .param p1, "viewHolder"    # Lady;
    .param p2, "chatMessage"    # Laee;
    .param p3, "position"    # I

    .prologue
    const/16 v11, 0xbb8

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 82
    const-string/jumbo v6, "ContactCreateItemViewDelegate"

    const-string/jumbo v7, "convert "

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    instance-of v6, p2, Laev;

    if-eqz v6, :cond_0

    move-object v2, p2

    .line 84
    check-cast v2, Laev;

    .line 86
    .local v2, "createMessage":Laev;
    iget-object v6, v2, Laev;->a:Lada;

    iput-object v6, p0, Laeu;->e:Lada;

    .line 88
    iget-object v6, p0, Laeu;->e:Lada;

    if-nez v6, :cond_1

    .line 256
    .end local v2    # "createMessage":Laev;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v2    # "createMessage":Laev;
    :cond_1
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 94
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Laeu;->c:Landroid/content/Context;

    .line 96
    const v6, 0x7f0b02f0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    .line 97
    const v6, 0x7f0b02f1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Laeu;->d:Landroid/widget/LinearLayout;

    .line 98
    const v6, 0x7f0b02f2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "addText":Landroid/widget/TextView;
    const v6, 0x7f0b02f3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 100
    .local v1, "cancel":Landroid/widget/Button;
    const v6, 0x7f0b02f4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Laeu;->j:Landroid/widget/Button;

    .line 104
    iget-object v6, p0, Laeu;->f:Laee;

    if-eqz v6, :cond_9

    iget-object v6, p0, Laeu;->f:Laee;

    if-ne v6, p2, :cond_9

    .line 106
    iget-object v6, p0, Laeu;->l:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Laeu;->l:Ljava/lang/String;

    iput-object v6, p0, Laeu;->a:Ljava/lang/String;

    .line 111
    :cond_2
    iget-object v6, p0, Laeu;->g:Lady;

    if-eq v6, p1, :cond_8

    .line 113
    iget-object v6, p0, Laeu;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-object v6, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 115
    iget-object v6, p0, Laeu;->k:Ljava/util/List;

    iget-object v7, p0, Laeu;->i:Landroid/widget/EditText;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_5

    .line 118
    const-string/jumbo v6, ""

    invoke-direct {p0, v6, v8}, Laeu;->a(Ljava/lang/String;I)V

    .line 127
    :cond_3
    :goto_1
    iget-object v6, p0, Laeu;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 128
    iget-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    iget-object v7, p0, Laeu;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_2
    iget v6, p0, Laeu;->h:I

    if-le v6, v9, :cond_4

    iget v6, p0, Laeu;->h:I

    iget-object v7, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 135
    iget-object v6, p0, Laeu;->k:Ljava/util/List;

    iget v7, p0, Laeu;->h:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 136
    .local v3, "editText":Landroid/widget/EditText;
    invoke-direct {p0, v3}, Laeu;->a(Landroid/widget/EditText;)V

    .line 137
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 138
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 180
    .end local v3    # "editText":Landroid/widget/EditText;
    :cond_4
    :goto_3
    new-instance v6, Laeu$1;

    invoke-direct {v6, p0}, Laeu$1;-><init>(Laeu;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v6, Laeu$3;

    invoke-direct {v6, p0, v11}, Laeu$3;-><init>(Laeu;I)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v6, p0, Laeu;->j:Landroid/widget/Button;

    new-instance v7, Laeu$4;

    invoke-direct {v7, p0, v11}, Laeu$4;-><init>(Laeu;I)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    new-instance v7, Laeu$5;

    invoke-direct {v7, p0}, Laeu$5;-><init>(Laeu;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    iget-object v7, p0, Laeu;->m:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    iget-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    new-instance v7, Laeu$6;

    invoke-direct {v7, p0}, Laeu$6;-><init>(Laeu;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iput-object p2, p0, Laeu;->f:Laee;

    .line 254
    iput-object p1, p0, Laeu;->g:Lady;

    goto/16 :goto_0

    .line 119
    :cond_5
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 120
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Laeu;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 122
    :cond_6
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 123
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Laeu;->a(Ljava/lang/String;I)V

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 130
    .end local v4    # "i":I
    :cond_7
    iget-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 144
    :cond_8
    iget v6, p0, Laeu;->h:I

    if-le v6, v9, :cond_4

    iget v6, p0, Laeu;->h:I

    iget-object v7, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 145
    iget-object v6, p0, Laeu;->k:Ljava/util/List;

    iget v7, p0, Laeu;->h:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 146
    .restart local v3    # "editText":Landroid/widget/EditText;
    invoke-direct {p0, v3}, Laeu;->a(Landroid/widget/EditText;)V

    .line 147
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 152
    .end local v3    # "editText":Landroid/widget/EditText;
    :cond_9
    const/4 v6, 0x0

    iput-object v6, p0, Laeu;->l:Ljava/lang/String;

    .line 153
    iget-object v6, p0, Laeu;->e:Lada;

    iget-object v6, v6, Lada;->a:Ljava/lang/String;

    iput-object v6, p0, Laeu;->a:Ljava/lang/String;

    .line 154
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 155
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v7, p0, Laeu;->e:Lada;

    iget-object v7, v7, Lada;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v6, p0, Laeu;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 159
    iget-object v6, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 161
    iget-object v6, p0, Laeu;->k:Ljava/util/List;

    iget-object v7, p0, Laeu;->i:Landroid/widget/EditText;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_b

    .line 164
    const-string/jumbo v6, ""

    invoke-direct {p0, v6, v8}, Laeu;->a(Ljava/lang/String;I)V

    .line 173
    :cond_a
    :goto_5
    iget-object v6, p0, Laeu;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 174
    iget-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    iget-object v7, p0, Laeu;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 165
    :cond_b
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ne v6, v10, :cond_c

    .line 166
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Laeu;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 168
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_a

    .line 169
    iget-object v6, p0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Laeu;->a(Ljava/lang/String;I)V

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 176
    .end local v4    # "i":I
    :cond_d
    iget-object v6, p0, Laeu;->i:Landroid/widget/EditText;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laeu;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 280
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 76
    instance-of v0, p1, Laev;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 43
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laeu;->a(Laee;)Z

    move-result v0

    return v0
.end method
