.class public Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;
.super Landroid/widget/LinearLayout;
.source "ContactSearchItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;

.field private h:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->h:Landroid/view/LayoutInflater;

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f03006b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->e:Landroid/widget/LinearLayout;

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->c:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->d:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02fb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->f:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->g:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->g:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->g:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;->b()V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "isMobile"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "phoneTag"    # Ljava/lang/String;
    .param p5, "markPhoneNum"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 51
    if-gtz p1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :goto_0
    move-object v0, p5

    .line 59
    .local v0, "number":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 60
    invoke-static {v0}, Lazk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$1;

    invoke-direct {v2, p0, p3, p5}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$1;-><init>(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;

    invoke-direct {v2, p0, p5, p3}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;-><init>(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->e:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$3;

    invoke-direct {v2, p0, p5, p3}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$3;-><init>(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void

    .line 54
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    .restart local v0    # "number":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setItemClickEvent(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;)V
    .locals 0
    .param p1, "itemClickEvent"    # Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->g:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$a;

    .line 47
    return-void
.end method
