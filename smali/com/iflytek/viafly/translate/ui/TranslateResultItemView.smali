.class public Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;
.super Landroid/widget/LinearLayout;
.source "TranslateResultItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Layv;

.field private e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->d:Layv;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->d:Layv;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1, v2}, Layv;->a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->d:Layv;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->d:Layv;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1, v2}, Layv;->b(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 74
    .local v0, "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 80
    .end local v0    # "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    :pswitch_3
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->d:Layv;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->d:Layv;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1, v2}, Layv;->c(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b06fa
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setText(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 2
    .param p1, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateResultItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
