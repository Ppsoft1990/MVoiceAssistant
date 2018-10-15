.class public Lcom/migu/voiceads/utils/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/voiceads/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;

.field private f:Landroid/content/DialogInterface$OnClickListener;

.field private g:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/b$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->f:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/migu/voiceads/utils/b$a;
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/migu/voiceads/utils/b$a;
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/b$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/voiceads/utils/b$a;->f:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a()Lcom/migu/voiceads/utils/b;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, -0x2

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/migu/voiceads/utils/b;

    iget-object v2, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v4, "style"

    const-string/jumbo v5, "iflyad_AutoUpdateDialog"

    invoke-static {v3, v4, v5}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/migu/voiceads/utils/b;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "layout"

    const-string/jumbo v4, "iflyad_diag_layout"

    invoke-static {v2, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Lcom/migu/voiceads/utils/b;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "confirmButton"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/migu/voiceads/utils/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->f:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "confirmButton"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/migu/voiceads/utils/c;

    invoke-direct {v3, p0, v1}, Lcom/migu/voiceads/utils/c;-><init>(Lcom/migu/voiceads/utils/b$a;Lcom/migu/voiceads/utils/b;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "cancelButton"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/migu/voiceads/utils/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->g:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "cancelButton"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/migu/voiceads/utils/d;

    invoke-direct {v3, p0, v1}, Lcom/migu/voiceads/utils/d;-><init>(Lcom/migu/voiceads/utils/b$a;Lcom/migu/voiceads/utils/b;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "updatedetail"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/migu/voiceads/utils/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    invoke-virtual {v1, v2}, Lcom/migu/voiceads/utils/b;->setContentView(Landroid/view/View;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "confirmButton"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "cancelButton"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "content"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/b$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "content"

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/migu/voiceads/utils/b$a;->e:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/migu/voiceads/utils/b$a;
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/b$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/voiceads/utils/b$a;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
