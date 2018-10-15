.class public Lanj$a;
.super Ljava/lang/Object;
.source "BookOrderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Lane;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field public final a:Ljava/lang/String;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Lanj;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;Lane;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .param p3, "callback"    # Lane;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "BookOrderDialog"

    iput-object v0, p0, Lanj$a;->a:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lanj$a;->e:Lanj;

    .line 71
    iput-object p1, p0, Lanj$a;->d:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 73
    iput-object p3, p0, Lanj$a;->A:Lane;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;Lane;ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .param p3, "callback"    # Lane;
    .param p4, "isAutoBuy"    # Z
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "isShowCheckBox"    # Z

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "BookOrderDialog"

    iput-object v0, p0, Lanj$a;->a:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lanj$a;->e:Lanj;

    .line 77
    iput-object p1, p0, Lanj$a;->d:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 79
    iput-object p3, p0, Lanj$a;->A:Lane;

    .line 80
    iput-boolean p4, p0, Lanj$a;->B:Z

    .line 81
    iput-object p5, p0, Lanj$a;->C:Ljava/lang/String;

    .line 82
    iput-boolean p6, p0, Lanj$a;->D:Z

    .line 83
    return-void
.end method

.method static synthetic a(Lanj$a;)Lane;
    .locals 1
    .param p0, "x0"    # Lanj$a;

    .prologue
    .line 35
    iget-object v0, p0, Lanj$a;->A:Lane;

    return-object v0
.end method

.method static synthetic b(Lanj$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lanj$a;

    .prologue
    .line 35
    iget-object v0, p0, Lanj$a;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lanj$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lanj$a;

    .prologue
    .line 35
    iget-object v0, p0, Lanj$a;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lanj$a;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .locals 1
    .param p0, "x0"    # Lanj$a;

    .prologue
    .line 35
    iget-object v0, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    return-object v0
.end method

.method static synthetic e(Lanj$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lanj$a;

    .prologue
    .line 35
    iget-object v0, p0, Lanj$a;->z:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0822

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->g:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0824

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lanj$a;->f:Landroid/widget/LinearLayout;

    .line 194
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0823

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->h:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0825

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lanj$a;->i:Landroid/widget/CheckBox;

    .line 196
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0826

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lanj$a;->j:Landroid/widget/Button;

    .line 197
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0827

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->l:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0828

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lanj$a;->k:Landroid/widget/Button;

    .line 199
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0829

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->m:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0819

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lanj$a;->n:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0821

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lanj$a;->o:Landroid/widget/LinearLayout;

    .line 203
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b081a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->p:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b081b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->q:Landroid/widget/TextView;

    .line 205
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b081c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->r:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b081d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->s:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b081e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lanj$a;->t:Landroid/widget/RelativeLayout;

    .line 208
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b0820

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->u:Landroid/widget/TextView;

    .line 209
    iget-object v0, p0, Lanj$a;->c:Landroid/view/View;

    const v1, 0x7f0b081f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj$a;->v:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lanj$a;->k:Landroid/widget/Button;

    const-string/jumbo v1, "\u53bb\u8ba2\u8d2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lanj$a;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lanj$a;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    invoke-direct {p0}, Lanj$a;->f()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lanj$a;->k:Landroid/widget/Button;

    const-string/jumbo v1, "\u652f\u4ed8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lanj$a;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lanj$a;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    invoke-direct {p0}, Lanj$a;->g()V

    goto :goto_0
.end method

.method static synthetic f(Lanj$a;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lanj$a;

    .prologue
    .line 35
    iget-object v0, p0, Lanj$a;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    move-result-object v0

    .line 232
    .local v0, "packageDetail":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanj$a;->y:Ljava/lang/String;

    .line 233
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanj$a;->z:Ljava/lang/String;

    .line 234
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lanj$a;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p0, Lanj$a;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_1
    const-string/jumbo v1, "1"

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lanj$a;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lanj$a;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lanj$a;->r:Landroid/widget/TextView;

    const-string/jumbo v2, "\u4e00\u5e74"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    iget-object v1, p0, Lanj$a;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_2
    :goto_0
    return-void

    .line 248
    :cond_3
    iget-object v1, p0, Lanj$a;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lanj$a;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lanj$a;->r:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5f53\u6708"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 252
    iget-object v1, p0, Lanj$a;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 260
    iget-object v5, p0, Lanj$a;->C:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    iget-object v5, p0, Lanj$a;->g:Landroid/widget/TextView;

    iget-object v6, p0, Lanj$a;->C:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    iget-boolean v5, p0, Lanj$a;->D:Z

    if-eqz v5, :cond_1

    .line 264
    iget-object v5, p0, Lanj$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    :goto_0
    :try_start_0
    iget-object v5, p0, Lanj$a;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v5, p0, Lanj$a;->j:Landroid/widget/Button;

    iget-object v6, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v6}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v5, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lanj$a;->x:Ljava/lang/String;

    .line 273
    iget-object v5, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    iget-object v5, p0, Lanj$a;->l:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v5, p0, Lanj$a;->k:Landroid/widget/Button;

    const-string/jumbo v6, "\u5b9e\u9645\u652f\u4ed80.00\u5143"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    iget-object v5, p0, Lanj$a;->i:Landroid/widget/CheckBox;

    iget-boolean v6, p0, Lanj$a;->B:Z

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    return-void

    .line 266
    :cond_1
    iget-object v5, p0, Lanj$a;->f:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 277
    :cond_2
    :try_start_1
    iget-object v5, p0, Lanj$a;->l:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v5, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float v4, v5, v8

    .line 279
    .local v4, "totalPrice":F
    iget-object v5, p0, Lanj$a;->w:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float v3, v5, v8

    .line 280
    .local v3, "totalCoupon":F
    sub-float v5, v4, v3

    float-to-int v5, v5

    int-to-float v5, v5

    div-float v1, v5, v8

    .line 281
    .local v1, "needPay":F
    const-string/jumbo v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "showNeedPay":Ljava/lang/String;
    iget-object v5, p0, Lanj$a;->k:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5b9e\u9645\u652f\u4ed8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 284
    .end local v1    # "needPay":F
    .end local v2    # "showNeedPay":Ljava/lang/String;
    .end local v3    # "totalCoupon":F
    .end local v4    # "totalPrice":F
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BookOrderDialog"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lanj$a;->u:Landroid/widget/TextView;

    new-instance v1, Lanj$a$2;

    invoke-direct {v1, p0}, Lanj$a$2;-><init>(Lanj$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lanj$a;->j:Landroid/widget/Button;

    new-instance v1, Lanj$a$3;

    invoke-direct {v1, p0}, Lanj$a$3;-><init>(Lanj$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lanj$a;->k:Landroid/widget/Button;

    new-instance v1, Lanj$a$4;

    invoke-direct {v1, p0}, Lanj$a$4;-><init>(Lanj$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lanj$a;->m:Landroid/widget/TextView;

    new-instance v1, Lanj$a$5;

    invoke-direct {v1, p0}, Lanj$a$5;-><init>(Lanj$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-void
.end method


# virtual methods
.method public a()Lanj;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 86
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lanj$a;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    .line 87
    iget-object v3, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v3, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    iget-object v3, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "#FCFCFC"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 91
    iget-object v3, p0, Lanj$a;->d:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030167

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lanj$a;->c:Landroid/view/View;

    .line 93
    iget-object v3, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lanj$a;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v0, Lanj;

    iget-object v3, p0, Lanj$a;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Lanj;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "dialog":Lanj;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 97
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lanj$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lanj;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v0, v8}, Lanj;->setCanceledOnTouchOutside(Z)V

    .line 101
    invoke-virtual {v0}, Lanj;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 102
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lanj$a;->d:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    invoke-virtual {v0}, Lanj;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    invoke-direct {p0}, Lanj$a;->e()V

    .line 106
    invoke-direct {p0}, Lanj$a;->h()V

    .line 108
    iput-object v0, p0, Lanj$a;->e:Lanj;

    .line 109
    iget-object v3, p0, Lanj$a;->e:Lanj;

    new-instance v4, Lanj$a$1;

    invoke-direct {v4, p0}, Lanj$a$1;-><init>(Lanj$a;)V

    invoke-virtual {v3, v4}, Lanj;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 117
    return-object v0
.end method

.method public a(III)Lanj;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lanj$a;->e:Lanj;

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lanj$a;->a()Lanj;

    move-result-object v1

    iput-object v1, p0, Lanj$a;->e:Lanj;

    .line 154
    :cond_0
    iget-object v1, p0, Lanj$a;->e:Lanj;

    invoke-virtual {v1}, Lanj;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lanj$a;->e:Lanj;

    invoke-virtual {v1}, Lanj;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 157
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 158
    const/16 p1, 0x33

    .line 160
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 161
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 164
    iget-object v1, p0, Lanj$a;->e:Lanj;

    invoke-virtual {v1}, Lanj;->show()V

    .line 167
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lanj$a;->e:Lanj;

    return-object v1
.end method

.method public b()Lanj;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lanj$a;->e:Lanj;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lanj$a;->a()Lanj;

    move-result-object v0

    iput-object v0, p0, Lanj$a;->e:Lanj;

    .line 124
    :cond_0
    iget-object v0, p0, Lanj$a;->e:Lanj;

    invoke-virtual {v0}, Lanj;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lanj$a;->a(III)Lanj;

    .line 128
    :cond_1
    iget-object v0, p0, Lanj$a;->e:Lanj;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lanj$a;->e:Lanj;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lanj$a;->e:Lanj;

    invoke-virtual {v0}, Lanj;->dismiss()V

    .line 177
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lanj$a;->e:Lanj;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lanj$a;->e:Lanj;

    invoke-virtual {v0}, Lanj;->isShowing()Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
