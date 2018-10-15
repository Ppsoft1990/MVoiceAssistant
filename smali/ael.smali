.class public Lael;
.super Ljava/lang/Object;
.source "CallMessageItemViewDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/animation/ObjectAnimator;

.field private b:Lacz;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lael;)V
    .locals 0
    .param p0, "x0"    # Lael;

    .prologue
    .line 29
    invoke-direct {p0}, Lael;->b()V

    return-void
.end method

.method static synthetic a(Lael;ZZ)V
    .locals 0
    .param p0, "x0"    # Lael;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lael;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 7
    .param p1, "isCardOneSelected"    # Z
    .param p2, "isCardTwoSelected"    # Z

    .prologue
    const v2, 0x7f080027

    const v1, 0x7f080026

    const v3, 0x7f020087

    const v4, 0x7f020086

    .line 165
    iget-object v5, p0, Lael;->d:Landroid/widget/Button;

    iget-object v0, p0, Lael;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v6, v0}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 166
    iget-object v0, p0, Lael;->e:Landroid/widget/Button;

    iget-object v5, p0, Lael;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v5, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 167
    iget-object v1, p0, Lael;->d:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 168
    iget-object v0, p0, Lael;->e:Landroid/widget/Button;

    if-eqz p2, :cond_3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 169
    return-void

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    :cond_1
    move v1, v2

    .line 166
    goto :goto_1

    :cond_2
    move v0, v4

    .line 167
    goto :goto_2

    :cond_3
    move v3, v4

    .line 168
    goto :goto_3
.end method

.method static synthetic b(Lael;)Lacz;
    .locals 1
    .param p0, "x0"    # Lael;

    .prologue
    .line 29
    iget-object v0, p0, Lael;->b:Lacz;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f030058

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 13
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 55
    instance-of v11, p2, Laek;

    if-eqz v11, :cond_0

    move-object v0, p2

    .line 56
    check-cast v0, Laek;

    .line 57
    .local v0, "callMessage":Laek;
    iget-object v11, v0, Laek;->a:Lacz;

    iput-object v11, p0, Lael;->b:Lacz;

    .line 59
    iget-object v11, p0, Lael;->b:Lacz;

    if-nez v11, :cond_1

    .line 162
    .end local v0    # "callMessage":Laek;
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v0    # "callMessage":Laek;
    :cond_1
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lael;->c:Landroid/view/View;

    .line 65
    iget-object v11, p0, Lael;->c:Landroid/view/View;

    const v12, 0x7f0b02e2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 66
    .local v6, "nameText":Landroid/widget/TextView;
    iget-object v11, p0, Lael;->c:Landroid/view/View;

    const v12, 0x7f0b02e6

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 67
    .local v8, "numberText":Landroid/widget/TextView;
    iget-object v11, p0, Lael;->c:Landroid/view/View;

    const v12, 0x7f0b02e7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lael;->d:Landroid/widget/Button;

    .line 68
    iget-object v11, p0, Lael;->c:Landroid/view/View;

    const v12, 0x7f0b02e8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lael;->e:Landroid/widget/Button;

    .line 69
    iget-object v11, p0, Lael;->c:Landroid/view/View;

    const v12, 0x7f0b02ea

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 70
    .local v1, "cancelBtn":Landroid/widget/Button;
    iget-object v11, p0, Lael;->c:Landroid/view/View;

    const v12, 0x7f0b02e9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    .line 72
    .local v9, "progressBar":Landroid/widget/ProgressBar;
    iget-object v11, p0, Lael;->b:Lacz;

    iget-object v4, v11, Lacz;->d:Ljava/lang/String;

    .line 73
    .local v4, "locatioin":Ljava/lang/String;
    iget-object v11, p0, Lael;->b:Lacz;

    iget-object v7, v11, Lacz;->c:Ljava/lang/String;

    .line 74
    .local v7, "number":Ljava/lang/String;
    iget-object v11, p0, Lael;->b:Lacz;

    iget-object v5, v11, Lacz;->b:Ljava/lang/String;

    .line 75
    .local v5, "name":Ljava/lang/String;
    iget-object v11, p0, Lael;->b:Lacz;

    iget-wide v2, v11, Lacz;->g:J

    .line 76
    .local v2, "delayTime":J
    iget-object v11, p0, Lael;->b:Lacz;

    iget-object v10, v11, Lacz;->l:Ljava/util/List;

    .line 80
    .local v10, "simNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lael;->b:Lacz;

    iget-boolean v11, v11, Lacz;->e:Z

    if-eqz v11, :cond_2

    .line 81
    invoke-static {v7}, Lazk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "\u672a\u77e5"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 85
    :cond_3
    move-object v5, v7

    .line 86
    move-object v7, v4

    .line 91
    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v11, p0, Lael;->b:Lacz;

    iget-boolean v11, v11, Lacz;->i:Z

    if-eqz v11, :cond_9

    .line 97
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 98
    iget-object v12, p0, Lael;->d:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v12, p0, Lael;->e:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_4
    iget-object v11, p0, Lael;->d:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v11, p0, Lael;->e:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    sget-object v11, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v12, p0, Lael;->b:Lacz;

    iget-object v12, v12, Lacz;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v11, v12}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 107
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lael;->a(ZZ)V

    .line 118
    :goto_2
    iget-object v11, p0, Lael;->d:Landroid/widget/Button;

    new-instance v12, Lael$1;

    invoke-direct {v12, p0}, Lael$1;-><init>(Lael;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v11, p0, Lael;->e:Landroid/widget/Button;

    new-instance v12, Lael$2;

    invoke-direct {v12, p0}, Lael$2;-><init>(Lael;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v11, Lael$3;

    invoke-direct {v11, p0}, Lael$3;-><init>(Lael;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const-string/jumbo v11, "progress"

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iput-object v11, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    .line 158
    iget-object v11, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 159
    iget-object v11, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 88
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    goto/16 :goto_1

    .line 108
    :cond_7
    sget-object v11, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v12, p0, Lael;->b:Lacz;

    iget-object v12, v12, Lacz;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v11, v12}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 109
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lael;->a(ZZ)V

    goto :goto_2

    .line 111
    :cond_8
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lael;->a(ZZ)V

    goto :goto_2

    .line 114
    :cond_9
    iget-object v11, p0, Lael;->d:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v11, p0, Lael;->e:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 157
    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lael;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 174
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lael;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lael;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lael;->b:Lacz;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lael;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 188
    :cond_0
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 49
    instance-of v0, p1, Laek;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 29
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lael;->a(Laee;)Z

    move-result v0

    return v0
.end method
