.class public Lcom/iflytek/viafly/music/MusicPlayerActivity;
.super Landroid/app/Activity;
.source "MusicPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/music/MusicPlayerActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private J:Landroid/os/Handler;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/SeekBar;

.field private e:Landroid/widget/SeekBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/widget/ListView;

.field private p:Lapn;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Laqj;

.field private v:Lapm;

.field private w:Lcom/iflytek/viafly/music/MusicPlayerActivity$a;

.field private x:Landroid/view/animation/RotateAnimation;

.field private y:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->z:Z

    .line 180
    new-instance v0, Lcom/iflytek/viafly/music/MusicPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity$1;-><init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->A:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 198
    new-instance v0, Lcom/iflytek/viafly/music/MusicPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity$2;-><init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 512
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->C:I

    .line 513
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->D:I

    .line 514
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->E:I

    .line 515
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->F:I

    .line 516
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->G:I

    .line 517
    const/4 v0, 0x6

    iput v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->H:I

    .line 518
    const/4 v0, 0x7

    iput v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->I:I

    .line 519
    new-instance v0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;-><init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Landroid/view/animation/RotateAnimation;)Landroid/view/animation/RotateAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;
    .param p1, "x1"    # Landroid/view/animation/RotateAnimation;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->x:Landroid/view/animation/RotateAnimation;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Laqj;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->y:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "lrc"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 469
    :cond_0
    return-void

    .line 446
    :cond_1
    invoke-static {p1}, Lapt;->a(Ljava/lang/String;)Lapt;

    move-result-object v4

    .line 447
    .local v4, "model":Lapt;
    invoke-virtual {v4}, Lapt;->a()Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 449
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_2
    invoke-virtual {v4}, Lapt;->b()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "artist":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 453
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_3
    invoke-virtual {v4}, Lapt;->c()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "album":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 457
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_4
    invoke-virtual {v4}, Lapt;->d()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "by":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 461
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_5
    invoke-virtual {v4}, Lapt;->e()Ljava/util/List;

    move-result-object v5

    .line 464
    .local v5, "musicItemList":Ljava/util/List;, "Ljava/util/List<Lapt$a;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 465
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapt$a;

    .line 466
    .local v3, "item":Lapt$a;
    iget-object v8, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    iget-object v9, v3, Lapt$a;->b:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d()Lbcu;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->j()Lbcu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 131
    const v2, 0x7f0b0260

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a:Landroid/widget/LinearLayout;

    .line 132
    const v2, 0x7f0b025f

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->b:Landroid/widget/ImageView;

    .line 133
    const v2, 0x7f0b0262

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->c:Landroid/widget/TextView;

    .line 134
    const v2, 0x7f0b0264

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->f:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f0b026d

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g:Landroid/widget/TextView;

    .line 136
    const v2, 0x7f0b026f

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->h:Landroid/widget/TextView;

    .line 137
    const v2, 0x7f0b0270

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->k:Landroid/widget/ImageView;

    .line 138
    const v2, 0x7f0b0266

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->m:Landroid/widget/FrameLayout;

    .line 139
    const v2, 0x7f0b0267

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->l:Landroid/widget/ImageView;

    .line 141
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837800"

    iget-object v4, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->l:Landroid/widget/ImageView;

    invoke-static {}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->j()Lbcu;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 142
    const v2, 0x7f0b026b

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->r:Landroid/widget/ImageView;

    .line 143
    const v2, 0x7f0b026c

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->s:Landroid/widget/ImageView;

    .line 144
    const v2, 0x7f0b0263

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->t:Landroid/widget/ImageView;

    .line 145
    const v2, 0x7f0b0268

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n:Landroid/widget/FrameLayout;

    .line 146
    const v2, 0x7f0b0269

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->o:Landroid/widget/ListView;

    .line 147
    const v2, 0x7f0b026a

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "emptyView":Landroid/view/View;
    const v2, 0x7f0b0272

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->i:Landroid/widget/ImageView;

    .line 149
    const v2, 0x7f0b0273

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->j:Landroid/widget/ImageView;

    .line 150
    const v2, 0x7f0b0265

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d:Landroid/widget/SeekBar;

    .line 151
    const v2, 0x7f0b026e

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e:Landroid/widget/SeekBar;

    .line 152
    const v2, 0x7f0b0274

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v2, 0x7f0b0271

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v2, 0x7f0b0261

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v2, 0x7f0b0275

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->A:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 162
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 163
    new-instance v2, Lapn;

    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lapn;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->p:Lapn;

    .line 164
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->o:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->p:Lapn;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 168
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v2}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v1

    .line 169
    .local v1, "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->s:Landroid/widget/ImageView;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->r:Landroid/widget/ImageView;

    const v3, 0x7f020125

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->t:Landroid/widget/ImageView;

    const v3, 0x7f020146

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->s:Landroid/widget/ImageView;

    const v3, 0x7f020132

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->r:Landroid/widget/ImageView;

    const v3, 0x7f020126

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->t:Landroid/widget/ImageView;

    const v3, 0x7f020147

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v1}, Laqj;->A()I

    move-result v0

    .line 222
    .local v0, "mode":I
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->k:Landroid/widget/ImageView;

    invoke-static {v0}, Lamj;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    return-void
.end method

.method static synthetic h(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 336
    new-instance v1, Lcom/iflytek/viafly/music/MusicPlayerActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity$a;-><init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;Lcom/iflytek/viafly/music/MusicPlayerActivity$1;)V

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->w:Lcom/iflytek/viafly/music/MusicPlayerActivity$a;

    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->w:Lcom/iflytek/viafly/music/MusicPlayerActivity$a;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 340
    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 353
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v2}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v1

    .line 354
    .local v1, "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->s:Landroid/widget/ImageView;

    const v3, 0x7f020132

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->s:Landroid/widget/ImageView;

    const v3, 0x7f020133

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "lrc"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90010"

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static j()Lbcu;
    .locals 4

    .prologue
    .line 637
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 639
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 641
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 643
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 645
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    new-instance v2, Lbdo;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lbdo;-><init>(I)V

    .line 646
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lbdm;)Lbcu$a;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 648
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->y:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Lapn;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->p:Lapn;

    return-object v0
.end method

.method static synthetic q(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/view/animation/RotateAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->x:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .param p1, "bgAlpha"    # F

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 657
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 658
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 659
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 473
    const-string/jumbo v1, "MusicPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MusicPlayerActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 475
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 476
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 477
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 386
    iget-boolean v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->z:Z

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    if-le p1, p2, :cond_2

    .line 391
    const/4 p1, 0x0

    .line 393
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 394
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 396
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 397
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 415
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 419
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 420
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "favor"    # Ljava/lang/Boolean;

    .prologue
    .line 376
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 377
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 378
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 433
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 434
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 435
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 485
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 486
    .local v0, "currentTime":I
    const-string/jumbo v1, "MusicPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    mul-int/lit8 v1, v0, 0x64

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/2addr v1, v2

    const/16 v2, 0x63

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->finish()V

    .line 494
    return-void
.end method

.method public b(I)V
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 404
    const-string/jumbo v1, "MusicPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buffering:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 406
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 407
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 408
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 346
    invoke-static {p0}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    invoke-virtual {v2, v3}, Loc;->b(I)I

    move-result v1

    .line 347
    .local v1, "max":I
    invoke-static {p0}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    invoke-virtual {v2, v3}, Loc;->a(I)I

    move-result v0

    .line 348
    .local v0, "current":I
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 349
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 350
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g()V

    .line 429
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "prev"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90010"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 233
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v1}, Laqj;->j()V

    goto :goto_0

    .line 236
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "next"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90010"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 239
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v1}, Laqj;->s()V

    goto :goto_0

    .line 242
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v2}, Laqj;->D()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 244
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "pause"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90010"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v1}, Laqj;->i()V

    goto :goto_0

    .line 246
    :cond_0
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "play"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "switch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90010"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 255
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v1}, Laqj;->t()V

    goto/16 :goto_0

    .line 258
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->finish()V

    goto/16 :goto_0

    .line 261
    :pswitch_6
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->v:Lapm;

    if-nez v1, :cond_1

    .line 262
    new-instance v1, Lapm;

    invoke-direct {v1, p0}, Lapm;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->v:Lapm;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->v:Lapm;

    const v2, 0x7f0b025e

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4, v4}, Lapm;->showAtLocation(Landroid/view/View;III)V

    .line 265
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(F)V

    .line 266
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->v:Lapm;

    new-instance v2, Lcom/iflytek/viafly/music/MusicPlayerActivity$3;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity$3;-><init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V

    invoke-virtual {v1, v2}, Lapm;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90010"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 279
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_7
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v1}, Laqj;->u()V

    goto/16 :goto_0

    .line 282
    :pswitch_8
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->i()V

    goto/16 :goto_0

    .line 285
    :pswitch_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "favor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90010"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 288
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v1}, Laqj;->w()V

    goto/16 :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x7f0b0261
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->requestWindowFeature(I)Z

    .line 105
    const v4, 0x7f030042

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->setContentView(I)V

    .line 106
    invoke-static {p0}, Laqj;->a(Landroid/content/Context;)Laqj;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    .line 107
    iget-object v4, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v4}, Laqj;->g()V

    .line 108
    iget-object v4, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v4, p0}, Laqj;->a(Lapg;)V

    .line 109
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e()V

    .line 110
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g()V

    .line 111
    iget-object v4, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v4}, Laqj;->h()V

    .line 113
    invoke-static {}, Laqi;->c()Laqi;

    move-result-object v4

    invoke-virtual {v4}, Laqi;->d()V

    .line 114
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->h()V

    .line 116
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x500

    .line 120
    .local v1, "option":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 123
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "status_bar_height"

    const-string/jumbo v6, "dimen"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, "resourceId":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 125
    .local v3, "statusBarHeight":I
    iget-object v4, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8, v3, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 127
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "option":I
    .end local v2    # "resourceId":I
    .end local v3    # "statusBarHeight":I
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_100129"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 298
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->w:Lcom/iflytek/viafly/music/MusicPlayerActivity$a;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 299
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v0, p0}, Laqj;->b(Lapg;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 303
    iput-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->J:Landroid/os/Handler;

    .line 304
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x3

    .line 318
    invoke-static {p0}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    invoke-virtual {v2, v4}, Loc;->a(I)I

    move-result v0

    .line 319
    .local v0, "current":I
    packed-switch p1, :pswitch_data_0

    .line 329
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 321
    :pswitch_0
    invoke-static {p0}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v4, v3}, Loc;->a(II)V

    goto :goto_0

    .line 324
    :pswitch_1
    invoke-static {p0}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v4, v3}, Loc;->a(II)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 310
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->c()V

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity;->u:Laqj;

    invoke-virtual {v0}, Laqj;->v()V

    .line 313
    return-void
.end method
