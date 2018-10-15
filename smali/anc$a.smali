.class public Lanc$a;
.super Ljava/lang/Object;
.source "BookCloseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Lanc;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamu;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentLevel"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lanc$a;->a:Landroid/widget/LinearLayout;

    .line 40
    iput-object v0, p0, Lanc$a;->d:Lanc;

    .line 62
    iput-object p1, p0, Lanc$a;->c:Landroid/content/Context;

    .line 63
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v0

    invoke-virtual {v0}, Lamf;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanc$a;->s:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanc$a;->t:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanc$a;->u:Ljava/util/List;

    .line 66
    iput p2, p0, Lanc$a;->v:I

    .line 67
    return-void
.end method

.method static synthetic a(Lanc$a;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lanc$a;

    .prologue
    .line 36
    iget-object v0, p0, Lanc$a;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 252
    iget-object v3, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v3, p0, Lanc$a;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 257
    .local v1, "imageView":Landroid/widget/ImageView;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 260
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v3, p0, Lanc$a;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 261
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 264
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_3
    iget v3, p0, Lanc$a;->v:I

    if-ne p1, v3, :cond_5

    .line 265
    iput v6, p0, Lanc$a;->v:I

    .line 266
    iget-object v3, p0, Lanc$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 267
    iget-object v3, p0, Lanc$a;->f:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_3
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v3

    iget v4, p0, Lanc$a;->v:I

    invoke-virtual {v3, v4}, Lamf;->a(I)V

    .line 273
    iget v3, p0, Lanc$a;->v:I

    if-eq v6, v3, :cond_0

    .line 276
    iget-object v3, p0, Lanc$a;->s:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lanc$a;->t:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lanc$a;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lanc$a;->u:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lanc$a;->u:Ljava/util/List;

    .line 277
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v3, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 281
    iget-object v3, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lamu;

    invoke-virtual {v3}, Lamu;->a()I

    move-result v3

    iget v4, p0, Lanc$a;->v:I

    if-ne v3, v4, :cond_6

    .line 282
    iget-object v3, p0, Lanc$a;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v3, p0, Lanc$a;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    :cond_4
    iget v3, p0, Lanc$a;->v:I

    if-nez v3, :cond_0

    .line 288
    iget-object v3, p0, Lanc$a;->f:Landroid/widget/TextView;

    const-string/jumbo v4, "#FCFCFC"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 289
    iget-object v3, p0, Lanc$a;->f:Landroid/widget/TextView;

    const-string/jumbo v4, "\u64ad\u5b8c\u5f53\u524d\u540e,\u5c06\u81ea\u52a8\u6682\u505c\u6b63\u5728\u64ad\u653e\u7684\u542c\u4e66"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 269
    .end local v0    # "i":I
    :cond_5
    iput p1, p0, Lanc$a;->v:I

    goto/16 :goto_3

    .line 280
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private e()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b07fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0800

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0803

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0806

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0809

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b080c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b080f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lanc$a;->e:Landroid/widget/LinearLayout;

    .line 173
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b07ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanc$a;->g:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0802

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanc$a;->h:Landroid/widget/ImageView;

    .line 175
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0805

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanc$a;->i:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0808

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanc$a;->j:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b080b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanc$a;->k:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b080e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanc$a;->l:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b07fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc$a;->m:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0801

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc$a;->n:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0804

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc$a;->o:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b0807

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc$a;->p:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b080a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc$a;->q:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b080d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc$a;->r:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lanc$a;->t:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->g:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lanc$a;->t:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->h:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lanc$a;->t:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->i:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lanc$a;->t:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->j:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lanc$a;->t:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->k:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lanc$a;->t:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->l:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lanc$a;->u:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->m:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lanc$a;->u:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->n:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lanc$a;->u:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->o:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lanc$a;->u:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->p:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lanc$a;->u:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->q:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lanc$a;->u:Ljava/util/List;

    iget-object v1, p0, Lanc$a;->r:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lanc$a;->b:Landroid/view/View;

    const v1, 0x7f0b07fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc$a;->f:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lanc$a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const/4 v0, -0x1

    iget v1, p0, Lanc$a;->v:I

    if-eq v0, v1, :cond_0

    .line 201
    invoke-direct {p0}, Lanc$a;->f()V

    .line 203
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Lanc$a;->s:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanc$a;->t:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanc$a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lanc$a;->u:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanc$a;->u:Ljava/util/List;

    .line 235
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 239
    iget-object v1, p0, Lanc$a;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamu;

    invoke-virtual {v1}, Lamu;->a()I

    move-result v1

    iget v2, p0, Lanc$a;->v:I

    if-ne v1, v2, :cond_3

    .line 240
    iget-object v1, p0, Lanc$a;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lanc$a;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v1, p0, Lanc$a;->f:Landroid/widget/TextView;

    const-string/jumbo v2, "#FCFCFC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 246
    :cond_2
    iget v1, p0, Lanc$a;->v:I

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lanc$a;->f:Landroid/widget/TextView;

    const-string/jumbo v2, "\u64ad\u5b8c\u5f53\u524d\u540e,\u5c06\u81ea\u52a8\u6682\u505c\u6b63\u5728\u64ad\u653e\u7684\u542c\u4e66"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Lanc;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 70
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lanc$a;->a:Landroid/widget/LinearLayout;

    .line 71
    iget-object v3, p0, Lanc$a;->a:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v3, p0, Lanc$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v3, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030164

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lanc$a;->b:Landroid/view/View;

    .line 76
    iget-object v3, p0, Lanc$a;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lanc$a;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v0, Lanc;

    iget-object v3, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-direct {v0, v3}, Lanc;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "dialog":Lanc;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lanc$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lanc;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {v0, v8}, Lanc;->setCanceledOnTouchOutside(Z)V

    .line 84
    invoke-virtual {v0}, Lanc;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 85
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    invoke-virtual {v0}, Lanc;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    invoke-direct {p0}, Lanc$a;->e()V

    .line 90
    iput-object v0, p0, Lanc$a;->d:Lanc;

    .line 91
    return-object v0
.end method

.method public a(III)Lanc;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lanc$a;->d:Lanc;

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lanc$a;->a()Lanc;

    move-result-object v1

    iput-object v1, p0, Lanc$a;->d:Lanc;

    .line 128
    :cond_0
    iget-object v1, p0, Lanc$a;->d:Lanc;

    invoke-virtual {v1}, Lanc;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    iget-object v1, p0, Lanc$a;->d:Lanc;

    invoke-virtual {v1}, Lanc;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 131
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 132
    const/16 p1, 0x33

    .line 134
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 135
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 138
    iget-object v1, p0, Lanc$a;->d:Lanc;

    invoke-virtual {v1}, Lanc;->show()V

    .line 141
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lanc$a;->d:Lanc;

    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lanc$a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lanc$a$1;

    invoke-direct {v1, p0, p1}, Lanc$a$1;-><init>(Lanc$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method

.method public b()Lanc;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lanc$a;->d:Lanc;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lanc$a;->a()Lanc;

    move-result-object v0

    iput-object v0, p0, Lanc$a;->d:Lanc;

    .line 98
    :cond_0
    iget-object v0, p0, Lanc$a;->d:Lanc;

    invoke-virtual {v0}, Lanc;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lanc$a;->a(III)Lanc;

    .line 102
    :cond_1
    iget-object v0, p0, Lanc$a;->d:Lanc;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lanc$a;->d:Lanc;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lanc$a;->d:Lanc;

    invoke-virtual {v0}, Lanc;->dismiss()V

    .line 151
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lanc$a;->d:Lanc;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lanc$a;->d:Lanc;

    invoke-virtual {v0}, Lanc;->isShowing()Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 209
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lanc$a;->a(I)V

    goto :goto_0

    .line 212
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lanc$a;->a(I)V

    goto :goto_0

    .line 215
    :sswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lanc$a;->a(I)V

    goto :goto_0

    .line 218
    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lanc$a;->a(I)V

    goto :goto_0

    .line 221
    :sswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lanc$a;->a(I)V

    goto :goto_0

    .line 224
    :sswitch_5
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lanc$a;->a(I)V

    goto :goto_0

    .line 227
    :sswitch_6
    invoke-virtual {p0}, Lanc$a;->c()V

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x7f0b07fd -> :sswitch_0
        0x7f0b0800 -> :sswitch_1
        0x7f0b0803 -> :sswitch_2
        0x7f0b0806 -> :sswitch_3
        0x7f0b0809 -> :sswitch_4
        0x7f0b080c -> :sswitch_5
        0x7f0b080f -> :sswitch_6
    .end sparse-switch
.end method
