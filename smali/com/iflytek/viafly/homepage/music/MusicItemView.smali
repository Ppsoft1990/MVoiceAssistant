.class public Lcom/iflytek/viafly/homepage/music/MusicItemView;
.super Landroid/widget/RelativeLayout;
.source "MusicItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/music/MusicItemView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

.field private h:Lcom/iflytek/viafly/homepage/music/MusicItemView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;Lcom/iflytek/viafly/homepage/music/MusicItemView$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicModel"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .param p3, "callBack"    # Lcom/iflytek/viafly/homepage/music/MusicItemView$a;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 33
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->h:Lcom/iflytek/viafly/homepage/music/MusicItemView$a;

    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->a()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/music/MusicItemView;)Lcom/iflytek/viafly/homepage/music/MusicItemView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/music/MusicItemView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->h:Lcom/iflytek/viafly/homepage/music/MusicItemView$a;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 38
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300a6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 41
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 42
    .local v2, "view":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    const v3, 0x7f0b0458

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->b:Landroid/widget/ImageView;

    .line 44
    const v3, 0x7f0b0459

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->c:Landroid/widget/ImageView;

    .line 45
    const v3, 0x7f0b045a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->d:Landroid/widget/TextView;

    .line 46
    const v3, 0x7f0b045b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->e:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f0b045c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->f:Landroid/widget/TextView;

    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->b()V

    .line 49
    new-instance v3, Lcom/iflytek/viafly/homepage/music/MusicItemView$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView$1;-><init>(Lcom/iflytek/viafly/homepage/music/MusicItemView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/music/MusicItemView;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/music/MusicItemView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0a002e

    .line 60
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    if-nez v2, :cond_0

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 65
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 66
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 67
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-string/jumbo v1, "\u672a\u77e5"

    .line 69
    .local v1, "singer":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v1

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6b4c\u624b    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const-string/jumbo v0, "\u672a\u77e5"

    .line 74
    .local v0, "album":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4e13\u8f91    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laqc;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 1
    .param p1, "musicModel"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView;->g:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->b()V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->setVisibility(I)V

    goto :goto_0
.end method
