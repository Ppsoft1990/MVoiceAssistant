.class public Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;
.super Landroid/widget/LinearLayout;
.source "TranslateTextLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/view/animation/RotateAnimation;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

.field private t:Layp;

.field private u:Layj;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private w:Layu;

.field private x:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

.field private y:Ljava/lang/String;

.field private z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a:Z

    .line 323
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->z:Landroid/text/TextWatcher;

    .line 85
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    .line 86
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a:Z

    .line 323
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->z:Landroid/text/TextWatcher;

    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    .line 92
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 96
    new-instance v3, Layj;

    invoke-direct {v3}, Layj;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->u:Layj;

    .line 98
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 100
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03014c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 101
    .local v1, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const v3, 0x7f0b0762

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->h:Landroid/widget/TextView;

    .line 104
    const v3, 0x7f0b0704

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    .line 105
    const v3, 0x7f0b0705

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->d:Landroid/widget/ImageView;

    .line 106
    const v3, 0x7f0b0768

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->g:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f0b0769

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->i:Landroid/widget/RelativeLayout;

    .line 109
    const v3, 0x7f0b076a

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f:Landroid/widget/TextView;

    .line 110
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    const v3, 0x7f0b076b

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e:Landroid/widget/ImageView;

    .line 112
    const v3, 0x7f0b0765

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->m:Landroid/widget/ListView;

    .line 113
    const v3, 0x7f0b0764

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->n:Landroid/widget/ImageView;

    .line 114
    const v3, 0x7f0b0767

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->o:Landroid/widget/ImageView;

    .line 116
    const v3, 0x7f0b0763

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j:Landroid/widget/RelativeLayout;

    .line 117
    const v3, 0x7f0b0766

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->k:Landroid/widget/LinearLayout;

    .line 119
    const v3, 0x7f0b076c

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->p:Landroid/widget/ImageView;

    .line 120
    const v3, 0x7f0b076d

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->q:Landroid/widget/TextView;

    .line 122
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->z:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 124
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 125
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 128
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->o:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    .line 137
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    new-instance v4, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 372
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Jp:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Kr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-ne v2, v3, :cond_2

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_1

    .line 376
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    const-string/jumbo v2, "\u8d85\u8fc7140\u5b57\u7b26\u4e0a\u9650"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 385
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 379
    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_3

    .line 382
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    const-string/jumbo v2, "\u8d85\u8fc7500\u5b57\u7b26\u4e0a\u9650"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 385
    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string/jumbo v0, "TranslateTextLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afterTextChanged: getTranslateIdentifyRequest text.length() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->u:Layj;

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V

    invoke-virtual {v0, p1, v1}, Layj;->a(Ljava/lang/String;Lajm;)V

    .line 456
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "languageType"    # Ljava/lang/String;

    .prologue
    .line 459
    const-string/jumbo v0, ""

    .line 460
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 462
    const-string/jumbo v2, "cn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v2, v3}, Layp;->a(Lcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 483
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 464
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "en"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->En:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    goto :goto_0

    .line 466
    :cond_1
    const-string/jumbo v2, "ja"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Jp:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    goto :goto_0

    .line 468
    :cond_2
    const-string/jumbo v2, "ko"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Kr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    goto :goto_0

    .line 470
    :cond_3
    const-string/jumbo v2, "fr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 471
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Fr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    goto :goto_0

    .line 472
    :cond_4
    const-string/jumbo v2, "es"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 473
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Es:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    goto :goto_0

    .line 474
    :cond_5
    const-string/jumbo v2, "unkown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 475
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    move-object v1, v0

    .line 476
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 478
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    move-object v1, v0

    .line 479
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1
.end method

.method static synthetic e(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Layp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 160
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u7f51\u7edc\u4e0d\u7ed9\u529b,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string/jumbo v2, ""

    .line 168
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u7ffb\u8bd1\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 173
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 174
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    invoke-interface {v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;->a()V

    goto :goto_0

    .line 181
    :cond_3
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 182
    const-string/jumbo v3, "TranslateTextLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startTranslateText: length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_4
    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v4, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-ne v3, v4, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u5f53\u524d\u8bed\u79cd\u4e0d\u652f\u6301\u81ea\u52a8\u8bc6\u522b"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 191
    :cond_5
    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v4, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-ne v3, v4, :cond_6

    .line 192
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    const-string/jumbo v4, "\u4e0d\u80fd\u8bbe\u7f6e\u4e3a\u540c\u4e00\u8bed\u79cd"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 196
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 199
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a:Z

    if-eqz v3, :cond_0

    .line 203
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    invoke-virtual {v3}, Layp;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 207
    sget-object v3, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v4, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/translate/TranslateLanguageType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 208
    sget-object v3, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v3, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 209
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    sget-object v4, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v3, v4}, Layp;->a(Lcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "targetName":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    invoke-virtual {v3}, Layp;->i()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    if-eqz v3, :cond_9

    .line 215
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    invoke-virtual {v3}, Layp;->g()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    invoke-interface {v3, v0, v2}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->y:Ljava/lang/String;

    .line 220
    .end local v0    # "language":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "submit"

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 544
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->x:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->x:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 553
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e()V

    .line 554
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    if-nez v0, :cond_2

    .line 555
    new-instance v0, Layu;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Layu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    .line 556
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 557
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    check-cast v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v1, v0}, Layu;->a(Layu$c;)V

    .line 562
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 564
    const-string/jumbo v0, "addresult"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    invoke-virtual {v0}, Layu;->notifyDataSetChanged()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;->a()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->showSoftInputDelay(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 301
    iput-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a:Z

    .line 302
    if-eqz p1, :cond_0

    if-ne v2, p1, :cond_2

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 309
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->showSoftInputDelay(Landroid/content/Context;Landroid/view/View;I)V

    .line 310
    return-void

    .line 304
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_session"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT89516"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 398
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 400
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 405
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->l:Landroid/view/animation/RotateAnimation;

    .line 409
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->l:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 410
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->l:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 411
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->l:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 412
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->l:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 413
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 496
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 501
    :cond_0
    sput-boolean v2, Laxp;->b:Z

    .line 503
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 506
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 507
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 508
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e()V

    .line 510
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->showSoftInputDelay(Landroid/content/Context;Landroid/view/View;I)V

    .line 511
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 570
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    invoke-virtual {v0}, Layu;->notifyDataSetChanged()V

    .line 571
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e()V

    .line 572
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 578
    invoke-static {}, Laxp;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Laxp;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-static {}, Laxp;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    if-nez v0, :cond_1

    .line 585
    new-instance v0, Layu;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Layu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    .line 587
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 588
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    check-cast v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v1, v0}, Layu;->a(Layu$c;)V

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->m:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 594
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    invoke-virtual {v0}, Layu;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getTextResultAdapter()Layu;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->w:Layu;

    return-object v0
.end method

.method public getTextResultItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    return-object v0
.end method

.method public getTranslateLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getmContentText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 598
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    .line 609
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 239
    :sswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/iflytek/yd/util/UIUtil;->showSoftInputDelay(Landroid/content/Context;Landroid/view/View;I)V

    .line 246
    const-string/jumbo v0, "edit"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :sswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 252
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 253
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/iflytek/yd/util/UIUtil;->showSoftInputDelay(Landroid/content/Context;Landroid/view/View;I)V

    .line 254
    const-string/jumbo v0, "edit"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :sswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a()V

    goto :goto_0

    .line 260
    :sswitch_3
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->k()V

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;->a()V

    goto :goto_0

    .line 271
    :sswitch_4
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b:Landroid/content/Context;

    const-string/jumbo v1, "\u7ffb\u8bd1\u8bb0\u5f55\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    invoke-virtual {v0}, Layp;->c()V

    goto/16 :goto_0

    .line 278
    :sswitch_5
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j()V

    goto/16 :goto_0

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0704 -> :sswitch_0
        0x7f0b0705 -> :sswitch_2
        0x7f0b0762 -> :sswitch_1
        0x7f0b0764 -> :sswitch_4
        0x7f0b0767 -> :sswitch_5
        0x7f0b076b -> :sswitch_3
    .end sparse-switch
.end method

.method public setIdentifyLanguageName(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 514
    const-string/jumbo v0, ""

    .line 515
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 518
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    invoke-virtual {v1}, Layp;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnTextTranslateBtnClickListener(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->s:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    .line 225
    return-void
.end method

.method public setSwitchResultBtnEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 619
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 620
    return-void
.end method

.method public setTranslateResult(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 2
    .param p1, "translateResultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a:Z

    .line 391
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->x:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 392
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "strTranslated":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method

.method public setTranslateTitleBarHelper(Layp;)V
    .locals 0
    .param p1, "titleBarHelper"    # Layp;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->t:Layp;

    .line 315
    return-void
.end method
