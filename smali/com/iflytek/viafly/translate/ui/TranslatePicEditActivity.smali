.class public Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "TranslatePicEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lays;


# instance fields
.field private a:Layv;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/EditText;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->f:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 190
    .local v0, "isShow":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 191
    const v2, 0x7f0b0748

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->f:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    :cond_0
    return v0

    .end local v0    # "isShow":Z
    :cond_1
    move v0, v1

    .line 189
    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 172
    return-void
.end method

.method public a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->h:Z

    .line 177
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a()Z

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->h:Z

    .line 200
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->finish()V

    goto :goto_0

    .line 104
    :pswitch_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->setResult(I)V

    .line 105
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->finish()V

    .line 106
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "editShoot"

    invoke-virtual {v1, v2}, Lxq;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_3
    const v1, 0x7f0b0748

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 114
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 115
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/UIUtil;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "edit"

    invoke-virtual {v1, v2}, Lxq;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_4
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1, v2}, Layv;->b(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    goto :goto_0

    .line 122
    :pswitch_5
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1, v2}, Layv;->d(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    goto :goto_0

    .line 125
    :pswitch_6
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1, v2}, Layv;->e(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    goto :goto_0

    .line 128
    :pswitch_7
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1, v2}, Layv;->c(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    goto :goto_0

    .line 131
    :pswitch_8
    iget-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->h:Z

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a()Z

    .line 135
    invoke-static {p0}, Lazw;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 138
    :pswitch_9
    iget-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->h:Z

    if-nez v1, :cond_0

    .line 141
    invoke-static {p0}, Lazw;->a(Landroid/content/Context;)V

    .line 142
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const-string/jumbo v1, "\u8bf7\u8f93\u5165\u5185\u5bb9"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 148
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_2

    .line 149
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "invalidTra"

    invoke-virtual {v1, v2}, Lxq;->g(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "\u8d85\u51fa\u5b57\u7b26\u9650\u5236\uff0c\u8bf7\u5220\u9664\u90e8\u5206\u82f1\u6587"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    invoke-virtual {v1, v0}, Layv;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->h:Z

    .line 155
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0745
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0b0749

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->requestWindowFeature(I)Z

    .line 50
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030146

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->setContentView(I)V

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 53
    const v0, 0x7f0b074e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->f:Landroid/widget/LinearLayout;

    .line 54
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->b:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0b073d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0b0734

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->d:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0b0745

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0b0746

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0b0748

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0b074a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0b074b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0b074c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0b074d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "TRANSLATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->e:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v0, Layv;

    invoke-direct {v0, p0, p0}, Layv;-><init>(Landroid/content/Context;Lays;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    .line 76
    const v0, 0x7f0b0751

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->g:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f0b0752

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f0b0753

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0b0750

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a:Layv;

    invoke-virtual {v0}, Layv;->b()V

    .line 210
    :cond_0
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
