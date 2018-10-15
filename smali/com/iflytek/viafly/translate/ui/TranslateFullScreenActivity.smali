.class public Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "TranslateFullScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ScrollView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->g:Z

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f0a0012

    const v2, 0x7f0a0014

    .line 103
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->g:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->b:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->g:Z

    .line 119
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->b:Landroid/widget/ScrollView;

    const-string/jumbo v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02039a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string/jumbo v1, "extraContent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0    # "content":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "TranslateFullScreenActivity"

    const-string/jumbo v2, "parseIntent fail, content is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->a()V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->finish()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x7f0b070c
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 39
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->setRequestedOrientation(I)V

    .line 45
    const v0, 0x7f030140

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f0b070b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->b:Landroid/widget/ScrollView;

    .line 48
    const v0, 0x7f0b070c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->c:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0b070d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->d:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0b070e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->e:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0b070f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->f:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0b070a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;->a(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
