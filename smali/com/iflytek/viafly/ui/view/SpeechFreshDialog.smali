.class public Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;
.super Landroid/widget/LinearLayout;
.source "SpeechFreshDialog.java"


# instance fields
.field private btnOk:Landroid/widget/Button;

.field private tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/4 v6, 0x0

    .line 38
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->setGravity(I)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000f

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 42
    .local v1, "rootView":Landroid/widget/LinearLayout;
    const v2, 0x7f0b00af

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->btnOk:Landroid/widget/Button;

    .line 44
    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->tvContent:Landroid/widget/TextView;

    .line 45
    invoke-static {}, Laza;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 47
    .local v0, "bottom":I
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v6, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49
    .end local v0    # "bottom":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getOkButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->btnOk:Landroid/widget/Button;

    return-object v0
.end method
