.class public Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;
.super Landroid/widget/LinearLayout;
.source "TranslateFullScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ScrollView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:I

.field private h:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->g:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->i:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->g:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->i:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f0a0012

    const v2, 0x7f0a0014

    .line 123
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->i:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->b:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->i:Z

    .line 139
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->b:Landroid/widget/ScrollView;

    const-string/jumbo v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02039a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 66
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030140

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 69
    .local v1, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const v3, 0x7f0b070b

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->b:Landroid/widget/ScrollView;

    .line 72
    const v3, 0x7f0b070c

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->c:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f0b070d

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->d:Landroid/widget/ImageView;

    .line 74
    const v3, 0x7f0b070e

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->e:Landroid/widget/ImageView;

    .line 75
    const v3, 0x7f0b070f

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->f:Landroid/widget/ImageView;

    .line 76
    const v3, 0x7f0b070a

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    iput p2, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->g:I

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->h:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->h:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->g:I

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;->a(I)V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a()V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->h:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->h:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;->a()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x7f0b070c
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnBtnClickCallback(Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;)V
    .locals 0
    .param p1, "clickCallback"    # Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->h:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    .line 48
    return-void
.end method
