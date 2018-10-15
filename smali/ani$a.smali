.class public Lani$a;
.super Ljava/lang/Object;
.source "BookMoreDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lani;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Lani;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lane;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lane;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bookName"    # Ljava/lang/String;
    .param p3, "callBack"    # Lane;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lani$a;->a:Landroid/widget/LinearLayout;

    .line 33
    iput-object v0, p0, Lani$a;->d:Lani;

    .line 42
    iput-object p1, p0, Lani$a;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lani$a;->e:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lani$a;->j:Lane;

    .line 45
    return-void
.end method

.method static synthetic a(Lani$a;)Lane;
    .locals 1
    .param p0, "x0"    # Lani$a;

    .prologue
    .line 29
    iget-object v0, p0, Lani$a;->j:Lane;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lani$a;->b:Landroid/view/View;

    const v1, 0x7f0b0815

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lani$a;->f:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lani$a;->b:Landroid/view/View;

    const v1, 0x7f0b0818

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lani$a;->g:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lani$a;->b:Landroid/view/View;

    const v1, 0x7f0b0816

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lani$a;->h:Landroid/widget/LinearLayout;

    .line 149
    iget-object v0, p0, Lani$a;->b:Landroid/view/View;

    const v1, 0x7f0b0817

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lani$a;->i:Landroid/widget/LinearLayout;

    .line 150
    iget-object v0, p0, Lani$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lani$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lani$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lani$a;->g:Landroid/widget/TextView;

    new-instance v1, Lani$a$1;

    invoke-direct {v1, p0}, Lani$a$1;-><init>(Lani$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lani$a;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lani$a$2;

    invoke-direct {v1, p0}, Lani$a$2;-><init>(Lani$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lani$a;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lani$a$3;

    invoke-direct {v1, p0}, Lani$a$3;-><init>(Lani$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method


# virtual methods
.method public a()Lani;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 48
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lani$a;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lani$a;->a:Landroid/widget/LinearLayout;

    .line 49
    iget-object v3, p0, Lani$a;->a:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, p0, Lani$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    iget-object v3, p0, Lani$a;->a:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "#FCFCFC"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 53
    iget-object v3, p0, Lani$a;->c:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030166

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lani$a;->b:Landroid/view/View;

    .line 55
    iget-object v3, p0, Lani$a;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lani$a;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v0, Lani;

    iget-object v3, p0, Lani$a;->c:Landroid/content/Context;

    invoke-direct {v0, v3}, Lani;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "dialog":Lani;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 59
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lani$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lani;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v0, v8}, Lani;->setCanceledOnTouchOutside(Z)V

    .line 63
    invoke-virtual {v0}, Lani;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 64
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lani$a;->c:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    invoke-virtual {v0}, Lani;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    invoke-direct {p0}, Lani$a;->e()V

    .line 68
    invoke-direct {p0}, Lani$a;->f()V

    .line 70
    iput-object v0, p0, Lani$a;->d:Lani;

    .line 71
    return-object v0
.end method

.method public a(III)Lani;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lani$a;->d:Lani;

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lani$a;->a()Lani;

    move-result-object v1

    iput-object v1, p0, Lani$a;->d:Lani;

    .line 108
    :cond_0
    iget-object v1, p0, Lani$a;->d:Lani;

    invoke-virtual {v1}, Lani;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Lani$a;->d:Lani;

    invoke-virtual {v1}, Lani;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 111
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 112
    const/16 p1, 0x33

    .line 114
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 116
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    iget-object v1, p0, Lani$a;->d:Lani;

    invoke-virtual {v1}, Lani;->show()V

    .line 121
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lani$a;->d:Lani;

    return-object v1
.end method

.method public b()Lani;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lani$a;->d:Lani;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lani$a;->a()Lani;

    move-result-object v0

    iput-object v0, p0, Lani$a;->d:Lani;

    .line 78
    :cond_0
    iget-object v0, p0, Lani$a;->d:Lani;

    invoke-virtual {v0}, Lani;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lani$a;->a(III)Lani;

    .line 82
    :cond_1
    iget-object v0, p0, Lani$a;->d:Lani;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lani$a;->d:Lani;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lani$a;->d:Lani;

    invoke-virtual {v0}, Lani;->dismiss()V

    .line 131
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lani$a;->d:Lani;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lani$a;->d:Lani;

    invoke-virtual {v0}, Lani;->isShowing()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
