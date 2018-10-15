.class public Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "BookPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lane;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Lamp;

.field private G:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

.field private I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

.field private J:Lamm;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Landroid/view/animation/Animation;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Z

.field private U:I

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:I

.field a:Lanh$a;

.field private aa:Z

.field private ab:Lame;

.field private ac:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private ad:Ljava/lang/Runnable;

.field private ae:Landroid/os/Handler;

.field private af:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

.field b:Lanj$a;

.field c:Lanc$a;

.field d:Lani$a;

.field e:Landroid/widget/RelativeLayout$LayoutParams;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Lcom/iflytek/base/skin/customView/XImageView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Lcom/iflytek/base/skin/customView/XSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 189
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    .line 190
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    .line 191
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->N:Z

    .line 202
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->T:Z

    .line 205
    const-string/jumbo v0, "mic"

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->V:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, "h5"

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->W:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "history"

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->X:Ljava/lang/String;

    .line 211
    iput v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Z:I

    .line 215
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->aa:Z

    .line 516
    new-instance v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$1;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    .line 1108
    new-instance v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ac:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1276
    new-instance v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ad:Ljava/lang/Runnable;

    .line 1378
    new-instance v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    .line 1870
    new-instance v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->af:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    return-void
.end method

.method static synthetic A(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method static synthetic B(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic E(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic F(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic G(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->p()V

    return-void
.end method

.method static synthetic H(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Z:I

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lamm;)Lamm;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Lamm;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->O:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->P:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lamm;)V
    .locals 6
    .param p1, "bookInfo"    # Lamm;

    .prologue
    .line 1330
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v3}, Lamp;->A()Z

    move-result v1

    .line 1332
    .local v1, "isCollected":Z
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const v3, 0x7f020327

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1334
    const-string/jumbo v3, "BookPlayerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4e66\u672c\u4fe1\u606f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lamm;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual {p1}, Lamm;->b()Ljava/lang/String;

    move-result-object v2

    .line 1337
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1338
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    :cond_0
    invoke-virtual {p1}, Lamm;->f()Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "coverUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1343
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e()Lbcu;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 1344
    new-instance v3, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)V

    invoke-static {v0, v3}, Laqc;->a(Ljava/lang/String;Laqc$a;)V

    .line 1362
    :cond_1
    return-void

    .line 1332
    .end local v0    # "coverUrl":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    const v3, 0x7f020326

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const-wide/16 v8, 0x64

    .line 355
    if-eqz p1, :cond_0

    .line 357
    const-string/jumbo v5, "entry"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    .line 359
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string/jumbo v5, "contentId"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "contentId":Ljava/lang/String;
    const-string/jumbo v5, "chapterId"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "chapterId":Ljava/lang/String;
    const-string/jumbo v5, "offset"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 368
    .local v4, "offset":I
    if-ltz v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_2
    const-string/jumbo v5, "listenBookPage"

    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "history"

    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    .line 373
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "mic_voice"

    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    .line 374
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 375
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 376
    :cond_4
    const-string/jumbo v5, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_5
    const-string/jumbo v5, "BookPlayerActivity"

    const-string/jumbo v6, "parseIntent EXTRA_LISTEN_BOOK_PAGE"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v5

    invoke-virtual {v5}, Lamk;->k()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "currentContentId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 383
    const-string/jumbo v5, "BookPlayerActivity"

    const-string/jumbo v6, "parseIntent currentContentId and requestContentId is not same"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->C()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 386
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->x()V

    .line 390
    :cond_6
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->s()Z

    .line 392
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v5

    invoke-virtual {v5}, Lamz;->f()V

    .line 394
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->b()I

    move-result v5

    if-nez v5, :cond_7

    .line 395
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->c()V

    .line 398
    :cond_7
    invoke-static {}, Lami;->a()Lami;

    move-result-object v5

    invoke-virtual {v5}, Lami;->m()V

    .line 400
    const-string/jumbo v5, "BookPlayerActivity"

    const-string/jumbo v6, "parseIntent clear current info"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v5

    invoke-virtual {v5}, Lamk;->n()V

    .line 404
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v5

    invoke-virtual {v5}, Lamk;->f()V

    .line 406
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v5

    invoke-virtual {v5, v0}, Lamk;->e(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v5

    invoke-virtual {v5, v1}, Lamk;->f(Ljava/lang/String;)V

    .line 410
    const-string/jumbo v5, "BookPlayerActivity"

    const-string/jumbo v6, "parseIntent request chapter info"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 416
    :cond_8
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->C()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 418
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->P()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 420
    const-string/jumbo v5, "BookPlayerActivity"

    const-string/jumbo v6, "parseIntent current play the same chapter, return"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i()V

    goto/16 :goto_0

    .line 429
    .end local v3    # "id":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->C()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 430
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->x()V

    .line 435
    :cond_a
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->s()Z

    .line 437
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v5

    invoke-virtual {v5}, Lamz;->f()V

    .line 439
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->b()I

    move-result v5

    if-nez v5, :cond_b

    .line 440
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->c()V

    .line 443
    :cond_b
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v5

    invoke-virtual {v5, v0}, Lamk;->e(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v5

    invoke-virtual {v5, v1}, Lamk;->f(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v5, "BookPlayerActivity"

    const-string/jumbo v6, "parseIntent request chapter info"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 448
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 450
    :cond_c
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 451
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v6

    invoke-virtual {v6}, Lamk;->g()Lamm;

    move-result-object v6

    invoke-virtual {v5, v6}, Lame;->a(Lamm;)V

    .line 453
    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v5}, Lamp;->u()V

    goto/16 :goto_0

    .line 455
    .end local v2    # "currentContentId":Ljava/lang/String;
    :cond_d
    const-string/jumbo v5, "notification"

    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 457
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i()V

    goto/16 :goto_0

    .line 458
    :cond_e
    const-string/jumbo v5, "notificationCharge"

    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i()V

    .line 461
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "operateValue"    # Ljava/lang/String;

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1043
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_msisdn"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v2

    invoke-virtual {v2}, Lanv;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string/jumbo v1, "d_contentid"

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v2}, Lamm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string/jumbo v1, "d_chapterid"

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1047
    const-string/jumbo v1, "d_operation"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    :cond_2
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    .line 1050
    invoke-virtual {v1, p1, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "wxFriendUrl"    # Ljava/lang/String;
    .param p2, "wxTimeLineUrl"    # Ljava/lang/String;
    .param p3, "weiboUrl"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0}, Lamm;->b()Ljava/lang/String;

    move-result-object v9

    .line 833
    .local v9, "contentName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6211\u5728\u542c\u300a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6211\u5728\u542c\u300a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u300b-\u4f5c\u8005\u662f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    .line 835
    invoke-virtual {v2}, Lamm;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6211\u6b63\u5728\u542c\u300a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u300b\u7684"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 836
    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",\u5185\u5bb9\u5f88\u6709\u8da3,\u5feb\u6765\u542c\u5427"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    .line 838
    invoke-virtual {v0}, Lamm;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->af:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 833
    invoke-static/range {v0 .. v8}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 843
    .end local v9    # "contentName":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    .line 844
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Z)V

    .line 846
    :cond_0
    return-void

    .line 841
    :cond_1
    const-string/jumbo v0, "\u672a\u83b7\u53d6\u5230\u4e66\u672c\u4fe1\u606f\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->N:Z

    return p1
.end method

.method private b(I)I
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v1}, Lamp;->E()I

    move-result v0

    .line 1168
    .local v0, "duration":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1172
    .end local p1    # "progress":I
    :goto_0
    return p1

    .restart local p1    # "progress":I
    :cond_0
    int-to-float v1, v0

    int-to-float v2, p1

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int p1, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    const-string/jumbo v1, "charge"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 469
    .local v0, "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    if-eqz v0, :cond_1

    .line 470
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-virtual {v1, v0}, Lame;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    invoke-static {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v4, "listenBook"

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lamm;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Lamm;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lamm;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Z)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->U:I

    return p1
.end method

.method static synthetic c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->R:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    .line 1306
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 1307
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1308
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1309
    .local v0, "message":Landroid/os/Message;
    const/16 v4, 0x13

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1310
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1311
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1313
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    const-string/jumbo v4, "BookPlayerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currentX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Z:I

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->aa:Z

    if-nez v4, :cond_2

    .line 1315
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c()I

    move-result v4

    mul-int/lit16 v2, v4, 0x3e8

    .line 1316
    .local v2, "totalTime":I
    sub-int v4, v2, p1

    div-int/lit16 v1, v4, 0x3e8

    .line 1317
    .local v1, "remain":I
    if-lez v1, :cond_1

    .line 1319
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1320
    .restart local v0    # "message":Landroid/os/Message;
    const/16 v4, 0x1a

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u8bd5\u542c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1322
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1324
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1326
    .end local v1    # "remain":I
    .end local v2    # "totalTime":I
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    return p1
.end method

.method private d(I)Ljava/lang/String;
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v1}, Lamp;->E()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 1367
    const-string/jumbo v1, "BookPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "time is illegal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const-string/jumbo v1, "00:00"

    .line 1374
    :goto_0
    return-object v1

    .line 1371
    :cond_0
    :try_start_0
    invoke-static {p1}, Lbaa;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1374
    const-string/jumbo v1, "00:00"

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->S:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Z)V

    return-void
.end method

.method private declared-synchronized d(Z)V
    .locals 2
    .param p1, "isLoading"    # Z

    .prologue
    .line 1809
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    .line 1810
    if-eqz p1, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1816
    :goto_0
    if-nez p1, :cond_0

    .line 1817
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1819
    :cond_0
    monitor-exit p0

    return-void

    .line 1813
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->N:Z

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->K:Ljava/lang/String;

    return-object p1
.end method

.method private e(Z)V
    .locals 2
    .param p1, "isLoading"    # Z

    .prologue
    .line 1823
    if-eqz p1, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1828
    :goto_0
    return-void

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private e(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1677
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, "position valid?"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    if-nez v2, :cond_1

    .line 1690
    :cond_0
    :goto_0
    return v1

    .line 1681
    :cond_1
    if-lez p1, :cond_0

    .line 1685
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v2}, Lamp;->E()I

    move-result v0

    .line 1686
    .local v0, "duration":I
    add-int/lit16 v2, v0, -0x1388

    if-ge p1, v2, :cond_0

    .line 1689
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "position is valid"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(I)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->aa:Z

    return p1
.end method

.method static synthetic f(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Z:I

    return p1
.end method

.method static synthetic f(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->G:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v1}, Lamp;->f()I

    move-result v0

    .line 272
    .local v0, "result":I
    const-string/jumbo v1, "BookPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindService result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 277
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ad:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()V
    .locals 13

    .prologue
    const v8, 0x7f0b0064

    const/4 v12, 0x0

    .line 283
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 284
    const v6, 0x7f0b005e

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f:Landroid/widget/ImageView;

    .line 285
    const v6, 0x7f0b0061

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g:Landroid/widget/ImageView;

    .line 286
    const v6, 0x7f0b0067

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h:Landroid/widget/ImageView;

    .line 287
    const v6, 0x7f0b0063

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i:Landroid/widget/ImageView;

    .line 288
    const v6, 0x7f0b0062

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j:Landroid/widget/ImageView;

    .line 289
    const v6, 0x7f0b0066

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k:Landroid/widget/ImageView;

    .line 290
    const v6, 0x7f0b0069

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l:Landroid/widget/ImageView;

    .line 291
    const v6, 0x7f0b0076

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m:Landroid/widget/ImageView;

    .line 292
    const v6, 0x7f0b0079

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->n:Landroid/widget/ImageView;

    .line 293
    const v6, 0x7f0b0077

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o:Landroid/widget/ImageView;

    .line 294
    const v6, 0x7f0b007a

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->p:Landroid/widget/ImageView;

    .line 295
    const v6, 0x7f0b0078

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->q:Landroid/widget/ImageView;

    .line 296
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->u:Landroid/widget/TextView;

    .line 297
    const v6, 0x7f0b0073

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->y:Landroid/widget/TextView;

    .line 298
    const v6, 0x7f0b0065

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->v:Landroid/widget/TextView;

    .line 299
    const v6, 0x7f0b006e

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->w:Landroid/widget/TextView;

    .line 300
    const v6, 0x7f0b006f

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->x:Landroid/widget/TextView;

    .line 301
    const v6, 0x7f0b0072

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/skin/customView/XSeekBar;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    .line 302
    const v6, 0x7f0b0075

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s:Lcom/iflytek/base/skin/customView/XImageView;

    .line 303
    const v6, 0x7f0b0074

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->t:Landroid/widget/LinearLayout;

    .line 304
    const v6, 0x7f0b0060

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->A:Landroid/view/View;

    .line 305
    const v6, 0x7f0b005f

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->B:Landroid/view/View;

    .line 306
    const v6, 0x7f0b0070

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->r:Landroid/view/View;

    .line 307
    const v6, 0x7f0b0071

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->C:Landroid/widget/ImageView;

    .line 308
    const v6, 0x7f0b006b

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->D:Landroid/widget/TextView;

    .line 309
    const v6, 0x7f0b006a

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->E:Landroid/widget/LinearLayout;

    .line 310
    invoke-static {p0}, Lhl;->g(Landroid/content/Context;)I

    move-result v2

    .line 312
    .local v2, "height":I
    if-lez v2, :cond_0

    .line 314
    const/16 v6, 0x500

    if-lt v2, v6, :cond_1

    .line 315
    int-to-double v6, v2

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 319
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->B:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    int-to-double v6, v2

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 322
    .local v5, "width":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 323
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 324
    const/4 v6, 0x2

    const v7, 0x7f0b0064

    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 325
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    invoke-static {p0, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 326
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "width":I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    iget-object v7, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ac:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 342
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->G:Ljava/util/concurrent/ConcurrentHashMap;

    .line 345
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020320

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 346
    .local v1, "enableDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 347
    .local v4, "progressDrawableBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v6, v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 349
    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v6, v12}, Lcom/iflytek/base/skin/customView/XSeekBar;->setEnabled(Z)V

    .line 350
    return-void

    .line 317
    .end local v1    # "enableDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "progressDrawableBounds":Landroid/graphics/Rect;
    :cond_1
    int-to-double v6, v2

    const-wide v8, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v6, v8

    double-to-int v2, v6

    goto/16 :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BookPlayerActivity"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic i(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamm;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    return-object v0
.end method

.method private i()V
    .locals 8

    .prologue
    .line 480
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v4

    invoke-virtual {v4}, Lamk;->g()Lamm;

    move-result-object v1

    .line 481
    .local v1, "bookInfo":Lamm;
    const/4 v2, 0x0

    .line 483
    .local v2, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-static {}, Lami;->a()Lami;

    move-result-object v4

    invoke-virtual {v4}, Lami;->c()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 484
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 485
    check-cast v2, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 487
    :cond_0
    if-eqz v1, :cond_1

    .line 488
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-virtual {v4, v1}, Lame;->a(Lamm;)V

    .line 490
    :cond_1
    if-eqz v2, :cond_3

    .line 492
    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 493
    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 495
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-virtual {v4, v2}, Lame;->a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    .line 496
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 497
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v4}, Lamp;->C()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 498
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m:Landroid/widget/ImageView;

    const v5, 0x7f02032e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ad:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    :cond_3
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v4

    invoke-virtual {v4}, Lamf;->b()I

    move-result v4

    if-nez v4, :cond_4

    .line 505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 506
    .local v3, "message":Landroid/os/Message;
    const/16 v4, 0x10

    iput v4, v3, Landroid/os/Message;->what:I

    .line 507
    const-string/jumbo v4, "\u64ad\u5b8c\u5f53\u524d\u540e\uff0c\u5c06\u81ea\u52a8\u6682\u505c\u6b63\u5728\u64ad\u653e\u7684\u542c\u4e66"

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    .end local v3    # "message":Landroid/os/Message;
    :cond_4
    return-void

    .line 500
    :cond_5
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m:Landroid/widget/ImageView;

    const v5, 0x7f02032f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    return-object v0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 850
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->R:Ljava/lang/String;

    .line 851
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->S:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v0

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->S:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic k(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->U:I

    return v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1054
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1055
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->j()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lame;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    return-object v0
.end method

.method private l()V
    .locals 10

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    if-nez v0, :cond_1

    .line 1213
    :cond_0
    const-string/jumbo v0, "\u4fe1\u606f\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    .line 1273
    :goto_0
    return-void

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-virtual {v0}, Lanh$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-virtual {v0}, Lanh$a;->c()V

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d:Lani$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d:Lani$a;

    invoke-virtual {v0}, Lani$a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d:Lani$a;

    invoke-virtual {v0}, Lani$a;->c()V

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    invoke-virtual {v0}, Lanc$a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1223
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    invoke-virtual {v0}, Lanc$a;->c()V

    .line 1225
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    invoke-virtual {v0}, Lanj$a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1226
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    invoke-virtual {v0}, Lanj$a;->c()V

    .line 1228
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1230
    new-instance v0, Lanj$a;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-direct {v0, p0, v1, p0}, Lanj$a;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;Lane;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    .line 1268
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    if-nez v0, :cond_e

    .line 1269
    const-string/jumbo v0, "\u4fe1\u606f\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :cond_6
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1233
    const-string/jumbo v5, ""

    .line 1235
    .local v5, "title":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1236
    .local v6, "isShowCheckBox":Z
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v1}, Lamm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u60a8\u5c06\u8d2d\u4e70\u5168\u4e66\u300a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v1}, Lamm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1238
    const/4 v6, 0x0

    .line 1263
    :cond_7
    :goto_2
    new-instance v0, Lanj$a;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v1}, Lamm;->l()Z

    move-result v4

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lanj$a;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;Lane;ZLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    goto :goto_1

    .line 1239
    :cond_8
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v1}, Lamm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1240
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u60a8\u5c06\u8d2d\u4e70"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1243
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1245
    :try_start_0
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    invoke-virtual {v0}, Lamk;->b()Ljava/util/List;

    move-result-object v8

    .line 1246
    .local v8, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1247
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 1248
    .local v7, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u60a8\u5c06\u8d2d\u4e70"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1258
    .end local v7    # "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .end local v8    # "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    :cond_b
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1259
    const-string/jumbo v5, "\u60a8\u5c06\u8d2d\u4e70\u6b64\u7ae0\u8282"

    .line 1261
    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1254
    :catch_0
    move-exception v9

    .line 1255
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1265
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "isShowCheckBox":Z
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d
    const-string/jumbo v0, "\u4fe1\u606f\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1272
    :cond_e
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    invoke-virtual {v0}, Lanj$a;->b()Lanj;

    goto/16 :goto_0
.end method

.method private m()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1695
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1696
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1697
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 1698
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1699
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1700
    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 1941
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    const-string/jumbo v1, "listenBookPage"

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1945
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1946
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "h5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90036"

    .line 1948
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1949
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "history"

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1951
    .restart local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "history"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90036"

    .line 1953
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1954
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v1, "mic_voice"

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1955
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1956
    .restart local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "mic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90036"

    .line 1958
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k()V

    return-void
.end method

.method static synthetic o(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1967
    const/4 v0, 0x1

    .line 1969
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method private p()V
    .locals 6

    .prologue
    .line 1977
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1978
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->E:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1981
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {p0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    add-int/2addr v2, v3

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    .line 1982
    invoke-static {p0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    add-int/2addr v2, v3

    const-wide v4, 0x4040800000000000L    # 33.0

    .line 1983
    invoke-static {p0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int v1, v2, v3

    .line 1984
    .local v1, "leftWidth":I
    const-string/jumbo v2, "BookPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "left width is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_1

    .line 1986
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1987
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x2

    const v4, 0x7f0b0068

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1989
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1990
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->E:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    .end local v1    # "leftWidth":I
    :goto_0
    return-void

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic q(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->E:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic v(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l()V

    return-void
.end method

.method static synthetic w(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic x(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->O:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic y(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic z(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    if-nez v0, :cond_0

    .line 1720
    const/4 v0, 0x0

    .line 1724
    :goto_0
    return v0

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->B()V

    .line 1724
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->F()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    if-nez v0, :cond_0

    .line 1734
    :goto_0
    return-void

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0, p1}, Lamp;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    .locals 5
    .param p1, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    const/16 v2, 0x9

    .line 1178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Z)V

    .line 1179
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-nez v0, :cond_3

    .line 1184
    :cond_2
    const-string/jumbo v0, "\u4fe1\u606f\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1190
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 1191
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0}, Lamm;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1196
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 1197
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0}, Lamm;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1198
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "user allow auto buy and money enough"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v1}, Lamm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lamp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1202
    :cond_5
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "user not allow auto buy or money not enough,show order dialog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1206
    :cond_6
    const-string/jumbo v0, "\u4fe1\u606f\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "chapterId"    # Ljava/lang/String;

    .prologue
    .line 1738
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1739
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v1, :cond_2

    .line 1740
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Z)V

    .line 1741
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1743
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lamk;->e(Ljava/lang/String;)V

    .line 1745
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v1}, Lamp;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v1}, Lamp;->h()V

    .line 1748
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1749
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1750
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1752
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1755
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v1

    invoke-virtual {v1}, Lamf;->b()I

    move-result v1

    if-nez v1, :cond_2

    .line 1756
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v1

    invoke-virtual {v1}, Lamf;->c()V

    .line 1760
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 5
    .param p1, "isCheck"    # Z

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1765
    :cond_0
    const-string/jumbo v0, "\u4fe1\u606f\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    .line 1774
    :goto_0
    return-void

    .line 1768
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0}, Lamm;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1769
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0, p1}, Lamm;->b(Z)V

    .line 1770
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0, v1}, Lamk;->a(Lamm;)V

    .line 1773
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v1}, Lamm;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lamp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1779
    const-string/jumbo v0, "FT89614"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    const-string/jumbo v0, "\u672a\u83b7\u53d6\u5230\u8be6\u60c5\u5730\u5740"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    .line 1789
    :goto_0
    return-void

    .line 1783
    :cond_0
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Lazo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1786
    :cond_1
    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 1903
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1904
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1905
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1906
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1907
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1909
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 6
    .param p1, "isForward"    # Z

    .prologue
    .line 1069
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v4}, Lamp;->D()I

    move-result v0

    .line 1070
    .local v0, "currentPosition":I
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v4}, Lamp;->E()I

    move-result v1

    .line 1071
    .local v1, "duration":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1106
    .end local v0    # "currentPosition":I
    .end local v1    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 1075
    .restart local v0    # "currentPosition":I
    .restart local v1    # "duration":I
    :cond_1
    if-eqz p1, :cond_4

    .line 1076
    add-int/lit16 v3, v0, 0x3a98

    .line 1078
    .local v3, "position":I
    if-lt v3, v1, :cond_3

    .line 1080
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1082
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v4

    invoke-virtual {v4}, Lamz;->e()V

    .line 1083
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v4

    invoke-virtual {v4}, Lamz;->f()V

    .line 1085
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-virtual {v4}, Lame;->k()V

    .line 1086
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    iget-object v5, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-virtual {v4, v5}, Lame;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1103
    .end local v0    # "currentPosition":I
    .end local v1    # "duration":I
    .end local v3    # "position":I
    :catch_0
    move-exception v2

    .line 1104
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BookPlayerActivity"

    const-string/jumbo v5, "getSeekPosition"

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1089
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentPosition":I
    .restart local v1    # "duration":I
    .restart local v3    # "position":I
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k()V

    goto :goto_0

    .line 1092
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v4, v3}, Lamp;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1093
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    goto :goto_0

    .line 1097
    .end local v3    # "position":I
    :cond_4
    add-int/lit16 v3, v0, -0x3a98

    .line 1098
    .restart local v3    # "position":I
    if-ltz v3, :cond_5

    .line 1099
    :goto_1
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v4, v3}, Lamp;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1098
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1794
    const-string/jumbo v0, "FT89613"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    new-instance v0, Lanc$a;

    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v1

    invoke-virtual {v1}, Lamf;->b()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lanc$a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    .line 1796
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    invoke-virtual {v0}, Lanc$a;->b()Lanc;

    .line 1797
    return-void
.end method

.method public declared-synchronized c(Z)V
    .locals 1
    .param p1, "seeking"    # Z

    .prologue
    .line 1936
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    monitor-exit p0

    return-void

    .line 1936
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1802
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->Q()V

    .line 1805
    :cond_0
    return-void
.end method

.method public e()Lbcu;
    .locals 3

    .prologue
    .line 1704
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 1706
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 1708
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 1710
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1712
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 1713
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 1714
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    .prologue
    .line 1932
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 894
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 896
    :sswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->finish()V

    goto :goto_0

    .line 899
    :sswitch_1
    const-string/jumbo v8, ""

    .line 900
    .local v8, "bookName":Ljava/lang/String;
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0}, Lamm;->b()Ljava/lang/String;

    move-result-object v8

    .line 904
    :cond_1
    new-instance v0, Lani$a;

    invoke-direct {v0, p0, v8, p0}, Lani$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lane;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d:Lani$a;

    .line 905
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d:Lani$a;

    invoke-virtual {v0}, Lani$a;->b()Lani;

    goto :goto_0

    .line 908
    .end local v8    # "bookName":Ljava/lang/String;
    :sswitch_2
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v0, :cond_0

    .line 909
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    if-eqz v0, :cond_2

    .line 910
    const-string/jumbo v0, "\u6b63\u5728\u83b7\u53d6\u5206\u4eab\u4fe1\u606f\uff0c\u8bf7\u7a0d\u540e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-nez v0, :cond_4

    .line 913
    :cond_3
    const-string/jumbo v0, "\u672a\u83b7\u53d6\u5230\u4e66\u672c\u4fe1\u606f\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_4
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    .line 916
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->M:Z

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Z)V

    .line 919
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->Q:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->P:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->R:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 922
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->w()V

    goto :goto_0

    .line 930
    :sswitch_3
    const-string/jumbo v0, "FT89612"

    invoke-direct {p0, v0, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    if-eqz v0, :cond_8

    .line 934
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    invoke-virtual {v0}, Lamk;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 935
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    invoke-virtual {v0}, Lamk;->b()Ljava/util/List;

    move-result-object v2

    .line 939
    .local v2, "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    :goto_1
    const-string/jumbo v6, ""

    .line 940
    .local v6, "currentPlayChapter":Ljava/lang/String;
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 941
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v6

    .line 943
    :cond_6
    new-instance v0, Lanh$a;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v1}, Lamp;->F()I

    move-result v4

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v1}, Lamm;->k()I

    move-result v5

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lanh$a;-><init>(Landroid/content/Context;Ljava/util/List;Lane;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    .line 944
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a:Lanh$a;

    invoke-virtual {v0}, Lanh$a;->b()Lanh;

    goto/16 :goto_0

    .line 937
    .end local v2    # "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .end local v6    # "currentPlayChapter":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->J:Lamm;

    invoke-virtual {v0}, Lamm;->n()Ljava/util/List;

    move-result-object v2

    .restart local v2    # "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    goto :goto_1

    .line 946
    .end local v2    # "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    :cond_8
    const-string/jumbo v0, "\u6b63\u5728\u83b7\u53d6\u4e66\u672c\u4fe1\u606f,\u8bf7\u7a0d\u540e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->v()V

    goto/16 :goto_0

    .line 951
    :sswitch_4
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v0, :cond_0

    .line 953
    const-string/jumbo v0, "FT89610"

    invoke-direct {p0, v0, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 955
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->N:Z

    if-eqz v0, :cond_9

    .line 956
    const-string/jumbo v0, "\u6b63\u5728\u83b7\u53d6\u6536\u85cf\u72b6\u6001\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 958
    :cond_9
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->N:Z

    .line 960
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->A()Z

    move-result v0

    if-nez v0, :cond_a

    .line 961
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->y()V

    goto/16 :goto_0

    .line 963
    :cond_a
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->z()V

    goto/16 :goto_0

    .line 967
    :cond_b
    const-string/jumbo v0, "\u60a8\u8fd8\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    .line 968
    invoke-static {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v3, "listenBook"

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :sswitch_5
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "play"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 976
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "isSeeking is true, return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 980
    :cond_c
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->N()Z

    move-result v0

    if-nez v0, :cond_10

    .line 982
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    invoke-virtual {v0}, Lamk;->k()Ljava/lang/String;

    move-result-object v7

    .line 984
    .local v7, "bookInfoId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 985
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->v()V

    .line 988
    :cond_d
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 989
    .local v10, "msg":Landroid/os/Message;
    const/16 v0, 0xa

    iput v0, v10, Landroid/os/Message;->what:I

    .line 990
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v0, :cond_e

    .line 991
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 993
    :cond_e
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 995
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 996
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "is try listen"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    invoke-virtual {v0, v7}, Lamk;->g(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v9

    .line 998
    .local v9, "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->I:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    const-string/jumbo v0, "BookPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " offset is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1003
    .end local v9    # "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_f
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "is not try listen"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1007
    .end local v7    # "bookInfoId":Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_10
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->h()V

    goto/16 :goto_0

    .line 1011
    :sswitch_6
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1012
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1015
    :cond_11
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v0}, Lamp;->i()V

    goto/16 :goto_0

    .line 1020
    :sswitch_7
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k()V

    goto/16 :goto_0

    .line 1023
    :sswitch_8
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v0, :cond_0

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Z)V

    goto/16 :goto_0

    .line 1028
    :sswitch_9
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->L:Z

    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Z)V

    goto/16 :goto_0

    .line 894
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0061 -> :sswitch_0
        0x7f0b0062 -> :sswitch_2
        0x7f0b0066 -> :sswitch_3
        0x7f0b0067 -> :sswitch_1
        0x7f0b0069 -> :sswitch_4
        0x7f0b0076 -> :sswitch_5
        0x7f0b0077 -> :sswitch_7
        0x7f0b0078 -> :sswitch_9
        0x7f0b0079 -> :sswitch_6
        0x7f0b007a -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const-string/jumbo v4, "BookPlayerActivity"

    const-string/jumbo v5, "onCreate"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->setContentView(I)V

    .line 225
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h()V

    .line 230
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    .line 232
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    const-string/jumbo v5, "viewActivity"

    iget-object v6, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-virtual {v4, v5, v6}, Lamp;->a(Ljava/lang/String;Lamh;)V

    .line 233
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v4}, Lamp;->g()V

    .line 235
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g()V

    .line 238
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v4

    invoke-virtual {v4}, Lamz;->b()V

    .line 241
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Landroid/content/Intent;)V

    .line 244
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 246
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_100128"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->n()V

    .line 251
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x500

    .line 255
    .local v1, "option":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 256
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 258
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "status_bar_height"

    const-string/jumbo v6, "dimen"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 259
    .local v2, "resourceId":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 260
    .local v3, "statusBarHeight":I
    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->A:Landroid/view/View;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "option":I
    .end local v2    # "resourceId":I
    .end local v3    # "statusBarHeight":I
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 879
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    const-string/jumbo v1, "viewActivity"

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-virtual {v0, v1, v2}, Lamp;->b(Ljava/lang/String;Lamh;)V

    .line 885
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 886
    iput-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    .line 887
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 888
    iput-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    .line 889
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 890
    return-void
.end method

.method public onEvent(Lamn;)V
    .locals 2
    .param p1, "event"    # Lamn;

    .prologue
    .line 1847
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1851
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onEvent(Lamv;)V
    .locals 3
    .param p1, "event"    # Lamv;

    .prologue
    .line 1855
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    invoke-virtual {p1}, Lamv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1859
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "BookCloseTimeEvent dismiss"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1862
    :cond_2
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "BookCloseTimeEvent show"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1864
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1865
    invoke-virtual {p1}, Lamv;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1866
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 3
    .param p1, "event"    # Lti;

    .prologue
    .line 1831
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "get login change event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    if-nez p1, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1839
    const-string/jumbo v1, "UserRealLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1840
    const-string/jumbo v1, "BookPlayerActivity"

    const-string/jumbo v2, "get USER_REAL_LOGIN Event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const-string/jumbo v1, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1919
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "onKeyDown"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    const-string/jumbo v1, "viewActivity"

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ab:Lame;

    invoke-virtual {v0, v1, v2}, Lamp;->b(Ljava/lang/String;Lamh;)V

    .line 1925
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->ae:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1928
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1913
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Landroid/content/Intent;)V

    .line 1914
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 866
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 868
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1998
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 2000
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F:Lamp;

    invoke-virtual {v2}, Lamp;->A()Z

    move-result v1

    .line 2001
    .local v1, "isCollected":Z
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v2, 0x7f020327

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2003
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, "refresh coolect info "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    .end local v1    # "isCollected":Z
    :goto_1
    return-void

    .line 2001
    .restart local v1    # "isCollected":Z
    :cond_0
    const v2, 0x7f020326

    goto :goto_0

    .line 2004
    .end local v1    # "isCollected":Z
    :catch_0
    move-exception v0

    .line 2005
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BookPlayerActivity"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 872
    const-string/jumbo v0, "BookPlayerActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    .line 874
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStop()V

    .line 875
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method
