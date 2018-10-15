.class public Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ServiceManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;,
        Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/iflytek/base/skin/customView/XImageView;

.field private m:I

.field private n:Landroid/content/SharedPreferences;

.field private o:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

.field private p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

.field private q:Laic;

.field private r:Laic;

.field private s:Laic;

.field private t:Laic;

.field private u:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

.field private v:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->m:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->c:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->d:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$1;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->u:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    .line 80
    new-instance v0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$2;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->v:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->setTitleBarVisible(Z)V

    .line 103
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 179
    invoke-static {}, Laic;->p()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 182
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 183
    .local v0, "homeCardItem":Laic;
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0}, Laic;->e()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    const-string/jumbo v3, "Schedule"

    invoke-virtual {v0}, Laic;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 191
    .end local v0    # "homeCardItem":Laic;
    :cond_2
    if-nez v1, :cond_3

    .line 234
    :goto_1
    return-void

    .line 194
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 195
    .restart local v0    # "homeCardItem":Laic;
    const/4 v4, 0x1

    invoke-virtual {v0}, Laic;->e()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 196
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    :cond_4
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v0    # "homeCardItem":Laic;
    :cond_5
    new-instance v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;Ljava/util/List;)V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    .line 204
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    new-instance v4, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$3;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$3;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    new-instance v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;Ljava/util/List;)V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->o:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    .line 220
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->f:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->o:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->f:Landroid/widget/ListView;

    new-instance v4, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$4;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$4;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->o:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 237
    const v0, 0x7f0b0653

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->f:Landroid/widget/ListView;

    .line 239
    const v0, 0x7f0b0654

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->u:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDropListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;)V

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->v:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setRemoveListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$m;)V

    .line 245
    const v0, 0x7f0b0651

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->h:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 246
    const v0, 0x7f0b0652

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->g:Landroid/widget/ImageView;

    .line 247
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->m:I

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->h:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 250
    :cond_0
    const v0, 0x7f0b0650

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->j:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f0b064e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    .line 252
    const v0, 0x7f0b064f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->k:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0b064d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->i:Landroid/widget/ImageView;

    .line 255
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Laic;->t()Laic;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->q:Laic;

    .line 488
    invoke-static {}, Laic;->s()Laic;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->s:Laic;

    .line 489
    invoke-static {}, Laic;->u()Laic;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->r:Laic;

    .line 490
    invoke-static {}, Laic;->q()Laic;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->t:Laic;

    .line 491
    return-void
.end method


# virtual methods
.method public a(Laic;)V
    .locals 4
    .param p1, "homeCardItem"    # Laic;

    .prologue
    .line 398
    if-nez p1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "ListenBook"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "ListenBook"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 406
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 409
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.LISTENBOOK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 412
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v2, "Weather"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "Weather"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 416
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 419
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.WEATHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v2, "Movie"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "Movie"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 426
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.MOVIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 432
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v2, "Food"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 434
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "Food"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 436
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 439
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.FOOD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 442
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v2, "Fee"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 444
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "Fee"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 446
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 449
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.CMCC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 452
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v2, "Music"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 454
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "Music"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 456
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 459
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.MUSIC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 462
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v2, "News"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 464
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "News"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 466
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 469
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.NEWS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 472
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v2, "AudioNews"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    const-string/jumbo v2, "d_group"

    const-string/jumbo v3, "AudioNews"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90017"

    .line 476
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.setting.card.AUDIO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 495
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->overridePendingTransition(II)V

    .line 496
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 109
    :pswitch_1
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->h:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->n:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "delete_hint"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT90015"

    .line 115
    invoke-virtual {v3, v4, v1}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 118
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragEnabled(Z)V

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->o:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 125
    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->d:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 134
    .end local v2    # "i":I
    :pswitch_3
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragEnabled(Z)V

    .line 135
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 139
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->o:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 141
    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 143
    :cond_2
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->d:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 147
    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 150
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 153
    .end local v2    # "i":I
    :pswitch_4
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->e:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragEnabled(Z)V

    .line 158
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 159
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->o:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 160
    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 162
    :cond_4
    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->d:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->p:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 166
    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 171
    .end local v2    # "i":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->finish()V

    goto/16 :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0b064d
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a()V

    .line 91
    const-string/jumbo v0, "service_hint_setting"

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->n:Landroid/content/SharedPreferences;

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->n:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "delete_hint"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->m:I

    .line 93
    const v0, 0x7f030116

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->setContentView(I)V

    .line 94
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->c()V

    .line 95
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->d()V

    .line 96
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b()V

    .line 97
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100117"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    const-string/jumbo v3, "ServiceManageActivity"

    const-string/jumbo v4, "\u6392\u5e8f\u53d1\u751f\u6539\u53d8"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v2, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->t:Laic;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 372
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->q:Laic;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->s:Laic;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->r:Laic;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b:Ljava/util/List;

    .line 376
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 379
    .local v0, "changeOrderEvent":Laia;
    invoke-virtual {v0, v2}, Laia;->a(Ljava/util/List;)V

    .line 380
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "changeOrderEvent":Laia;
    .end local v2    # "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    :goto_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 389
    return-void

    .line 382
    :cond_0
    :try_start_1
    const-string/jumbo v3, "ServiceManageActivity"

    const-string/jumbo v4, "\u6392\u5e8f\u672a\u53d1\u751f\u6539\u53d8"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ServiceManageActivity"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method
