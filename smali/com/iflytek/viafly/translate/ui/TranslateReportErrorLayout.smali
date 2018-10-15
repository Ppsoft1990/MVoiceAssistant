.class public Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;
.super Landroid/widget/LinearLayout;
.source "TranslateReportErrorLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/RadioGroup;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/Button;

.field private g:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

.field private h:Layn;

.field private i:Ljava/lang/String;

.field private j:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->i:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a(Landroid/content/Context;)V

    .line 45
    new-instance v0, Layn;

    invoke-direct {v0}, Layn;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->h:Layn;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->i:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a:Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a(Landroid/content/Context;)V

    .line 52
    new-instance v0, Layn;

    invoke-direct {v0}, Layn;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->h:Layn;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;)Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->g:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 60
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030147

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 63
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const v3, 0x7f0b0754

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->b:Landroid/widget/RadioGroup;

    .line 66
    const v3, 0x7f0b0756

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->c:Landroid/widget/RadioButton;

    .line 67
    const v3, 0x7f0b0755

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->d:Landroid/widget/RadioButton;

    .line 68
    const v3, 0x7f0b0757

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->e:Landroid/widget/RadioButton;

    .line 69
    const v3, 0x7f0b0758

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->f:Landroid/widget/Button;

    .line 71
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 72
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->f:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->i:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->d:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 79
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->i:Ljava/lang/String;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 81
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->i:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 83
    const-string/jumbo v0, "3"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->h:Layn;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->j:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->i:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    new-instance v5, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;)V

    invoke-virtual/range {v0 .. v5}, Layn;->a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lajm;)V

    goto :goto_0
.end method

.method public setOnBtnClickCallback(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;)V
    .locals 0
    .param p1, "clickCallback"    # Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->g:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    .line 57
    return-void
.end method

.method public setTranslateResultItem(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 0
    .param p1, "translateResultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->j:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 116
    return-void
.end method
