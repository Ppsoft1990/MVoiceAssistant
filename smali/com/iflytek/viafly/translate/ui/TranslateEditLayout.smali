.class public Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;
.super Landroid/widget/LinearLayout;
.source "TranslateEditLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/RotateAnimation;

.field private h:Lcom/iflytek/viafly/translate/TranslateMode;

.field private i:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

.field private j:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->j:Landroid/text/TextWatcher;

    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->j:Landroid/text/TextWatcher;

    .line 55
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

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
    const v3, 0x7f03013f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 63
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const v3, 0x7f0b0704

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    .line 66
    const v3, 0x7f0b0706

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c:Landroid/widget/RelativeLayout;

    .line 67
    const v3, 0x7f0b0705

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->b:Landroid/widget/ImageView;

    .line 68
    const v3, 0x7f0b0709

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->e:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f0b0708

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->f:Landroid/widget/ImageView;

    .line 70
    const v3, 0x7f0b0707

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->d:Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->j:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 100
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/translate/TranslateMode;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "butText"    # Ljava/lang/String;
    .param p3, "EditTip"    # Ljava/lang/String;
    .param p4, "mode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 82
    const-string/jumbo v0, "TranslateEditLayout"

    const-string/jumbo v1, "show "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iput-object p4, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->h:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->g:Landroid/view/animation/RotateAnimation;

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->g:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->g:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->g:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->g:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method public getmContentText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "\u7f51\u7edc\u4e0d\u7ed9\u529b"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "\u7ffb\u8bd1\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->i:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->h:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->i:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

    invoke-interface {v1, v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0705
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnTranslateBtnClickListener(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->i:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

    .line 79
    return-void
.end method
