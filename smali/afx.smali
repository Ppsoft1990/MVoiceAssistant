.class public Lafx;
.super Ljava/lang/Object;
.source "SmsInputItemViewDelegate.java"

# interfaces
.implements Ladv;
.implements Lafu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;",
        "Lafu;"
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Landroid/view/View$OnTouchListener;

.field private C:Landroid/text/TextWatcher;

.field private a:Lade;

.field private b:Landroid/widget/EditText;

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Laee;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lorg/json/JSONArray;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lorg/json/JSONArray;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lafx;->x:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lafx;->y:Ljava/lang/String;

    .line 347
    new-instance v0, Lafx$3;

    invoke-direct {v0, p0}, Lafx$3;-><init>(Lafx;)V

    iput-object v0, p0, Lafx;->B:Landroid/view/View$OnTouchListener;

    .line 386
    new-instance v0, Lafx$4;

    invoke-direct {v0, p0}, Lafx$4;-><init>(Lafx;)V

    iput-object v0, p0, Lafx;->C:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lafx;I)I
    .locals 0
    .param p0, "x0"    # Lafx;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lafx;->x:I

    return p1
.end method

.method static synthetic a(Lafx;)Lade;
    .locals 1
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    iget-object v0, p0, Lafx;->a:Lade;

    return-object v0
.end method

.method static synthetic a(Lafx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lafx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lafx;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lafx;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lafx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lafx;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 337
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 338
    .local v0, "array":Lorg/json/JSONArray;
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, p2, v3

    .line 339
    .local v2, "ss":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v2    # "ss":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "arrayString":Ljava/lang/String;
    const-string/jumbo v3, "\\\\"

    const-string/jumbo v4, "\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 344
    iget-object v3, p0, Lafx;->a:Lade;

    invoke-virtual {v3, p1, v1}, Lade;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 345
    return-void
.end method

.method static synthetic a(Lafx;Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "x0"    # Lafx;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lafx;->a(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/widget/EditText;)Z
    .locals 7
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x0

    .line 371
    invoke-virtual {p1}, Landroid/widget/EditText;->getScrollY()I

    move-result v3

    .line 373
    .local v3, "scrollY":I
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 375
    .local v2, "scrollRange":I
    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v1, v5, v6

    .line 377
    .local v1, "scrollExtent":I
    sub-int v0, v2, v1

    .line 379
    .local v0, "scrollDifference":I
    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v4

    :cond_1
    if-gtz v3, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lafx;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    iget-object v0, p0, Lafx;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lafx;)Z
    .locals 1
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    iget-boolean v0, p0, Lafx;->r:Z

    return v0
.end method

.method static synthetic d(Lafx;)Z
    .locals 1
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    iget-boolean v0, p0, Lafx;->c:Z

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lafx;->a:Lade;

    iget-object v0, v0, Lade;->a:Ljava/lang/String;

    iput-object v0, p0, Lafx;->m:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lafx;->a:Lade;

    iget-object v0, v0, Lade;->b:Ljava/lang/String;

    iput-object v0, p0, Lafx;->n:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lafx;->a:Lade;

    iget-object v0, v0, Lade;->c:Ljava/lang/String;

    iput-object v0, p0, Lafx;->o:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lafx;->a:Lade;

    iget-object v0, v0, Lade;->e:Lorg/json/JSONArray;

    iput-object v0, p0, Lafx;->p:Lorg/json/JSONArray;

    .line 327
    iget-object v0, p0, Lafx;->a:Lade;

    iget-boolean v0, v0, Lade;->f:Z

    iput-boolean v0, p0, Lafx;->q:Z

    .line 328
    iget-object v0, p0, Lafx;->a:Lade;

    iget-boolean v0, v0, Lade;->g:Z

    iput-boolean v0, p0, Lafx;->r:Z

    .line 329
    iget-object v0, p0, Lafx;->a:Lade;

    iget-object v0, v0, Lade;->h:Ljava/lang/String;

    iput-object v0, p0, Lafx;->s:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lafx;->a:Lade;

    iget-boolean v0, v0, Lade;->j:Z

    iput-boolean v0, p0, Lafx;->t:Z

    .line 331
    iget-object v0, p0, Lafx;->a:Lade;

    iget-boolean v0, v0, Lade;->k:Z

    iput-boolean v0, p0, Lafx;->u:Z

    .line 332
    iget-object v0, p0, Lafx;->a:Lade;

    iget-boolean v0, v0, Lade;->l:Z

    iput-boolean v0, p0, Lafx;->v:Z

    .line 333
    iget-object v0, p0, Lafx;->a:Lade;

    iget-object v0, v0, Lade;->o:Lorg/json/JSONArray;

    iput-object v0, p0, Lafx;->w:Lorg/json/JSONArray;

    .line 334
    return-void
.end method

.method static synthetic e(Lafx;)Z
    .locals 1
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    iget-boolean v0, p0, Lafx;->d:Z

    return v0
.end method

.method static synthetic f(Lafx;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    iget-object v0, p0, Lafx;->A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lafx;->i:Landroid/widget/Button;

    const-string/jumbo v1, "#C0D2EB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 412
    iget-object v0, p0, Lafx;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lafx;->j:Landroid/widget/Button;

    const-string/jumbo v1, "#C0D2EB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 414
    iget-object v0, p0, Lafx;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 415
    iget-object v0, p0, Lafx;->k:Landroid/widget/Button;

    const-string/jumbo v1, "#C0D2EB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 416
    iget-object v0, p0, Lafx;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lafx;->i:Landroid/widget/Button;

    const-string/jumbo v1, "#2076EA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lafx;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 420
    iget-object v0, p0, Lafx;->j:Landroid/widget/Button;

    const-string/jumbo v1, "#2076EA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 421
    iget-object v0, p0, Lafx;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Lafx;->k:Landroid/widget/Button;

    const-string/jumbo v1, "#2076EA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 423
    iget-object v0, p0, Lafx;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic g(Lafx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    iget-object v0, p0, Lafx;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lafx;)V
    .locals 0
    .param p0, "x0"    # Lafx;

    .prologue
    .line 31
    invoke-direct {p0}, Lafx;->f()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f03006c

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 12
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 84
    instance-of v9, p2, Lafy;

    if-eqz v9, :cond_0

    move-object v8, p2

    .line 85
    check-cast v8, Lafy;

    .line 86
    .local v8, "smsInputMessage":Lafy;
    iget-object v9, v8, Lafy;->a:Lade;

    iput-object v9, p0, Lafx;->a:Lade;

    .line 88
    iget-object v9, p0, Lafx;->a:Lade;

    if-nez v9, :cond_1

    .line 316
    .end local v8    # "smsInputMessage":Lafy;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v8    # "smsInputMessage":Lafy;
    :cond_1
    iget-object v9, p0, Lafx;->a:Lade;

    invoke-virtual {v9, p0}, Lade;->a(Lafu;)V

    .line 94
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    .line 96
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b02e2

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lafx;->e:Landroid/widget/TextView;

    .line 97
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b02e6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lafx;->f:Landroid/widget/TextView;

    .line 98
    iget-object v9, p0, Lafx;->f:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b0327

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, "addImg":Landroid/widget/ImageView;
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b0326

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lafx;->g:Landroid/widget/ImageView;

    .line 101
    iget-object v9, p0, Lafx;->g:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b0328

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    .line 103
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b032b

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lafx;->h:Landroid/widget/TextView;

    .line 104
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b0329

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 105
    .local v1, "blessChange":Landroid/widget/Button;
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b032a

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 106
    .local v3, "contactChange":Landroid/widget/Button;
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b02f3

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 107
    .local v2, "cancel":Landroid/widget/Button;
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b032d

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 108
    .local v5, "line":Landroid/view/View;
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b032e

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lafx;->i:Landroid/widget/Button;

    .line 109
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b02f7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lafx;->j:Landroid/widget/Button;

    .line 110
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b02f8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lafx;->k:Landroid/widget/Button;

    .line 111
    iget-object v9, p0, Lafx;->A:Landroid/view/ViewGroup;

    const v10, 0x7f0b032c

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 113
    .local v6, "micImg":Landroid/widget/ImageView;
    invoke-direct {p0}, Lafx;->e()V

    .line 115
    iget-boolean v9, p0, Lafx;->r:Z

    if-eqz v9, :cond_5

    .line 116
    iget-object v9, p0, Lafx;->e:Landroid/widget/TextView;

    iget-object v10, p0, Lafx;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v10, p0, Lafx;->f:Landroid/widget/TextView;

    iget-object v9, p0, Lafx;->n:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lafx;->n:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_2
    iget-object v9, p0, Lafx;->y:Ljava/lang/String;

    if-nez v9, :cond_e

    .line 153
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    iget-object v10, p0, Lafx;->s:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_3
    iget-boolean v9, p0, Lafx;->u:Z

    if-eqz v9, :cond_10

    .line 165
    iget-object v9, p0, Lafx;->h:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    new-instance v9, Lafx$1;

    invoke-direct {v9, p0}, Lafx$1;-><init>(Lafx;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :goto_4
    iget-boolean v9, p0, Lafx;->v:Z

    if-eqz v9, :cond_13

    .line 198
    const-string/jumbo v9, "#70A7F4"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 199
    iget-object v9, p0, Lafx;->i:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v9, p0, Lafx;->j:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v9, p0, Lafx;->k:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    iget-object v9, p0, Lafx;->j:Landroid/widget/Button;

    iget-object v10, p0, Lafx;->w:Lorg/json/JSONArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v9, p0, Lafx;->k:Landroid/widget/Button;

    iget-object v10, p0, Lafx;->w:Lorg/json/JSONArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_5
    new-instance v9, Lafx$6;

    invoke-direct {v9, p0}, Lafx$6;-><init>(Lafx;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v9, p0, Lafx;->i:Landroid/widget/Button;

    new-instance v10, Lafx$7;

    invoke-direct {v10, p0}, Lafx$7;-><init>(Lafx;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v9, p0, Lafx;->j:Landroid/widget/Button;

    new-instance v10, Lafx$8;

    invoke-direct {v10, p0}, Lafx$8;-><init>(Lafx;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v9, p0, Lafx;->k:Landroid/widget/Button;

    new-instance v10, Lafx$9;

    invoke-direct {v10, p0}, Lafx$9;-><init>(Lafx;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v9, p0, Lafx;->g:Landroid/widget/ImageView;

    new-instance v10, Lafx$10;

    invoke-direct {v10, p0}, Lafx$10;-><init>(Lafx;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v9, Lafx$11;

    invoke-direct {v9, p0}, Lafx$11;-><init>(Lafx;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    iget-object v10, p0, Lafx;->C:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    new-instance v9, Lafx$12;

    invoke-direct {v9, p0}, Lafx$12;-><init>(Lafx;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    new-instance v10, Lafx$2;

    invoke-direct {v10, p0}, Lafx$2;-><init>(Lafx;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 295
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    iget-object v10, p0, Lafx;->B:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    invoke-direct {p0}, Lafx;->f()V

    .line 300
    iget-object v9, p0, Lafx;->l:Laee;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lafx;->l:Laee;

    if-ne v9, p2, :cond_14

    .line 301
    iget-object v9, p0, Lafx;->z:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 302
    iget-object v9, p0, Lafx;->f:Landroid/widget/TextView;

    iget-object v10, p0, Lafx;->z:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_2
    iget v9, p0, Lafx;->x:I

    iget-object v10, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-gt v9, v10, :cond_3

    iget v9, p0, Lafx;->x:I

    if-ltz v9, :cond_3

    .line 306
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    iget v10, p0, Lafx;->x:I

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 307
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 314
    :cond_3
    :goto_6
    iput-object p2, p0, Lafx;->l:Laee;

    goto/16 :goto_0

    .line 117
    :cond_4
    iget-object v9, p0, Lafx;->o:Ljava/lang/String;

    goto/16 :goto_1

    .line 120
    :cond_5
    iget-object v9, p0, Lafx;->g:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v9, p0, Lafx;->o:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 123
    iget-object v9, p0, Lafx;->f:Landroid/widget/TextView;

    iget-object v10, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_6
    const-string/jumbo v7, ""

    .line 127
    .local v7, "nameString":Ljava/lang/String;
    iget-object v9, p0, Lafx;->p:Lorg/json/JSONArray;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    .line 128
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget-object v9, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 128
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 136
    :cond_8
    iget-object v9, p0, Lafx;->e:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v9, p0, Lafx;->f:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 138
    .end local v4    # "i":I
    :cond_9
    iget-object v9, p0, Lafx;->m:Ljava/lang/String;

    iget-object v10, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 139
    iget-object v9, p0, Lafx;->e:Landroid/widget/TextView;

    iget-object v10, p0, Lafx;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v10, p0, Lafx;->f:Landroid/widget/TextView;

    iget-object v9, p0, Lafx;->n:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lafx;->n:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    iget-object v9, p0, Lafx;->o:Ljava/lang/String;

    goto :goto_8

    .line 141
    :cond_b
    iget-object v9, p0, Lafx;->m:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lafx;->o:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 142
    iget-object v9, p0, Lafx;->e:Landroid/widget/TextView;

    const-string/jumbo v10, "\u65e0\u6536\u4ef6\u4eba"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v9, p0, Lafx;->f:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 146
    :cond_c
    iget-object v9, p0, Lafx;->e:Landroid/widget/TextView;

    const-string/jumbo v10, "\u672a\u77e5\u8054\u7cfb\u4eba"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v10, p0, Lafx;->f:Landroid/widget/TextView;

    iget-object v9, p0, Lafx;->n:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lafx;->n:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_9
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    iget-object v9, p0, Lafx;->o:Ljava/lang/String;

    goto :goto_9

    .line 156
    .end local v7    # "nameString":Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lafx;->l:Laee;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lafx;->l:Laee;

    if-ne v9, p2, :cond_f

    .line 157
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    iget-object v10, p0, Lafx;->y:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 159
    :cond_f
    const/4 v9, 0x0

    iput-object v9, p0, Lafx;->y:Ljava/lang/String;

    .line 160
    iget-object v9, p0, Lafx;->b:Landroid/widget/EditText;

    iget-object v10, p0, Lafx;->s:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 175
    :cond_10
    iget-boolean v9, p0, Lafx;->t:Z

    if-eqz v9, :cond_11

    .line 176
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v9, p0, Lafx;->h:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    new-instance v9, Lafx$5;

    invoke-direct {v9, p0}, Lafx$5;-><init>(Lafx;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 186
    :cond_11
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v9, p0, Lafx;->h:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-boolean v9, p0, Lafx;->q:Z

    if-eqz v9, :cond_12

    .line 190
    iget-object v9, p0, Lafx;->h:Landroid/widget/TextView;

    const-string/jumbo v10, "\u8bf7\u624b\u52a8\u8f93\u5165\u77ed\u4fe1\u5185\u5bb9"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 192
    :cond_12
    iget-object v9, p0, Lafx;->h:Landroid/widget/TextView;

    const-string/jumbo v10, "\u70b9\u51fb\u53f3\u4fa7\u9ea6\u514b\u98ce\u8f93\u5165\u77ed\u4fe1\u5185\u5bb9"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 206
    :cond_13
    const-string/jumbo v9, "#2076ea"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 207
    iget-object v9, p0, Lafx;->i:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v9, p0, Lafx;->j:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v9, p0, Lafx;->k:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 310
    :cond_14
    const-string/jumbo v9, ""

    iput-object v9, p0, Lafx;->z:Ljava/lang/String;

    .line 311
    const/4 v9, -0x1

    iput v9, p0, Lafx;->x:I

    goto/16 :goto_6
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lafx;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 320
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "filterStr"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    .line 437
    invoke-direct {p0}, Lafx;->e()V

    .line 439
    iget-object v2, p0, Lafx;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lafx;->b:Landroid/widget/EditText;

    iget-object v3, p0, Lafx;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-boolean v2, p0, Lafx;->r:Z

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lafx;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lafx;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, p0, Lafx;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lafx;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v2, p0, Lafx;->p:Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 449
    const-string/jumbo v1, ""

    .line 450
    .local v1, "nameString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lafx;->p:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    :cond_2
    iget-object v2, p0, Lafx;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v2, p0, Lafx;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    .end local v0    # "i":I
    .end local v1    # "nameString":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lafx;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 459
    :cond_3
    iget-object v2, p0, Lafx;->m:Ljava/lang/String;

    iget-object v3, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 460
    iget-object v2, p0, Lafx;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lafx;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v2, p0, Lafx;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lafx;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 462
    :cond_4
    iget-object v2, p0, Lafx;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lafx;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 463
    iget-object v2, p0, Lafx;->e:Landroid/widget/TextView;

    const-string/jumbo v3, "\u65e0\u6536\u4ef6\u4eba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v2, p0, Lafx;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 466
    :cond_5
    iget-object v2, p0, Lafx;->e:Landroid/widget/TextView;

    const-string/jumbo v3, "\u672a\u77e5\u8054\u7cfb\u4eba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v2, p0, Lafx;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lafx;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lafx;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "realNum"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafx;->z:Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lafx;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lafx;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isNetError"    # Z

    .prologue
    .line 477
    iget-boolean v0, p0, Lafx;->t:Z

    if-nez v0, :cond_0

    .line 478
    if-eqz p1, :cond_1

    .line 479
    iget-object v0, p0, Lafx;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8bf7\u624b\u52a8\u8f93\u5165\u77ed\u4fe1\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lafx;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u70b9\u51fb\u53f3\u4fa7\u9ea6\u514b\u98ce\u8f93\u5165\u77ed\u4fe1\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 79
    instance-of v0, p1, Lafy;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lafx;->a(Laee;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafx;->c:Z

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafx;->d:Z

    .line 490
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 506
    const-string/jumbo v2, "smsSpeech"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    iget v2, p0, Lafx;->x:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 509
    iget-object v2, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 510
    .local v0, "editable":Landroid/text/Editable;
    iget v2, p0, Lafx;->x:I

    invoke-interface {v0, v2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 511
    iget v2, p0, Lafx;->x:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lafx;->x:I

    .line 519
    .end local v0    # "editable":Landroid/text/Editable;
    :goto_0
    iget v2, p0, Lafx;->x:I

    iget-object v3, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lafx;->x:I

    if-ltz v2, :cond_0

    .line 520
    iget-object v2, p0, Lafx;->b:Landroid/widget/EditText;

    iget v3, p0, Lafx;->x:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 528
    :cond_0
    :goto_1
    iget-object v2, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lafx;->y:Ljava/lang/String;

    .line 529
    const-string/jumbo v2, "contentChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lafx;->y:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lafx;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 532
    return-void

    .line 514
    :cond_1
    iget-object v2, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "lastContent":Ljava/lang/String;
    iget-object v2, p0, Lafx;->b:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lafx;->x:I

    goto :goto_0

    .line 524
    .end local v1    # "lastContent":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "\\n"

    const-string/jumbo v3, "\n"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 525
    iget-object v2, p0, Lafx;->b:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafx;->c:Z

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafx;->d:Z

    .line 496
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lafx;->c:Z

    .line 501
    iput-boolean v0, p0, Lafx;->d:Z

    .line 502
    return-void
.end method
