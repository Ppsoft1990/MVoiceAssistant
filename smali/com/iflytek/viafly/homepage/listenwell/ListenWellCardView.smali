.class public Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "ListenWellCardView.java"

# interfaces
.implements Laij;
.implements Lala;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;",
        "Laij;",
        "Lala",
        "<",
        "Lale;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private final E:I

.field private F:Lale;

.field private G:I

.field private o:Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;

.field private p:Lalc;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->E:I

    .line 67
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->setCallBack(Laij;)V

    .line 70
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->g()V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->n()V

    return-void
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 92
    const v0, 0x7f0b044a

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->s:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0b0447

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->r:Landroid/widget/RelativeLayout;

    .line 94
    const v0, 0x7f0b043c

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->t:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f0b043d

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->u:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0b0440

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->v:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0b043f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->w:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0b0441

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->x:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0b0444

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->y:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0b0446

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->z:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0b0442

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->A:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f0b0443

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->B:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0b0445

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->C:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0b043e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->D:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;-><init>(Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->o:Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;

    .line 113
    return-void
.end method

.method private getListOptions()Lbcu;
    .locals 3

    .prologue
    .line 250
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 251
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 255
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 256
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const v4, 0x7f0a002e

    const/4 v3, 0x0

    .line 120
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->h()V

    .line 125
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const-string/jumbo v1, "ListenWellCardView"

    const-string/jumbo v2, "refreshView: "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->D:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 132
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 133
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 134
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 136
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    invoke-virtual {v2}, Lale;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    invoke-virtual {v2}, Lale;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    invoke-virtual {v1}, Lale;->g()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "author":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    invoke-virtual {v2}, Lale;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    invoke-virtual {v2}, Lale;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->u:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getListOptions()Lbcu;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89606"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private setVisibility(Z)V
    .locals 4
    .param p1, "visibility"    # Z

    .prologue
    .line 156
    new-instance v0, Lajh;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lajh;-><init>(Landroid/view/View;)V

    .line 157
    .local v0, "showBannerAnim":Lajh;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lajh;->setDuration(J)V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->G:I

    invoke-virtual {v0, v1, v2}, Lajh;->a(II)V

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lajh;->a(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 195
    const-string/jumbo v0, "ListenWellCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->f()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-static {p1}, Lald;->a(Ljava/lang/String;)Lale;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    .line 235
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->F:Lale;

    if-nez v0, :cond_1

    .line 236
    const-string/jumbo v0, "ListenWellCardView"

    const-string/jumbo v1, "close card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->k()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->o:Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->o:Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->p:Lalc;

    invoke-virtual {v1}, Lalc;->a()V

    .line 268
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100110"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "more_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89605"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 274
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 279
    const-string/jumbo v0, "ListenWellCardView"

    const-string/jumbo v1, "clickRefresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->f()V

    .line 281
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 75
    const-string/jumbo v1, "ListenWellCardView"

    const-string/jumbo v2, "initView: "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->b(I)V

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300a3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->b(Landroid/widget/LinearLayout;)V

    .line 82
    new-instance v1, Lalc;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lalc;-><init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->p:Lalc;

    .line 84
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->a(Landroid/widget/LinearLayout;)V

    .line 85
    const-string/jumbo v1, "\u8fdb\u5165\u60a6\u542c\u5496"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->b(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->p:Lalc;

    invoke-virtual {v0}, Lalc;->g()V

    .line 220
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100110"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->d(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 173
    :sswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->p:Lalc;

    invoke-virtual {v1}, Lalc;->a()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "more_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89605"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 181
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->p:Lalc;

    invoke-virtual {v1}, Lalc;->b()V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "card_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89605"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x7f0b043c -> :sswitch_1
        0x7f0b044a -> :sswitch_0
    .end sparse-switch
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;->p:Lalc;

    invoke-virtual {v0, p1}, Lalc;->a(Lail;)V

    .line 225
    return-void
.end method
