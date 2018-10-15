.class public Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
.super Lqj;
.source "NewsDetailPageBusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;
    }
.end annotation


# instance fields
.field private i:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Laqq;

.field private q:J

.field private r:Landroid/os/Handler;

.field private s:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lwd;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V
    .locals 4
    .param p1, "lxWebView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lqj;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 56
    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->stop:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    iput-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->i:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->l:I

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->q:J

    .line 96
    new-instance v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;-><init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)V

    iput-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->r:Landroid/os/Handler;

    .line 139
    new-instance v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;-><init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)V

    iput-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->s:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    .line 195
    new-instance v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$3;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$3;-><init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)V

    iput-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->t:Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;-><init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)V

    iput-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u:Lwd;

    .line 83
    iget-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->s:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->setComponentListener(Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;)V

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.NEWS_TTS_STOP_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 90
    iget-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u:Lwd;

    invoke-static {v1, v2}, Laqq;->a(Landroid/content/Context;Lwd;)Laqq;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->p:Laqq;

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setIsNeedTitlePlayBtn(Z)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;)Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
    .param p1, "x1"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->i:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->k:Ljava/util/List;

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->k:Ljava/util/List;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->k:Ljava/util/List;

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 264
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "curUrl"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "isUrlMatch":Z
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 292
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "lx_focus"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "focus":Ljava/lang/String;
    const-string/jumbo v3, "news"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    const/4 v1, 0x1

    .line 298
    :cond_0
    const-string/jumbo v3, "NewsBusinessAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "curUrl :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isurlmatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->l:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    const/4 v3, 0x0

    .line 286
    :cond_0
    :goto_0
    return-object v3

    .line 271
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v3, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 274
    .local v1, "length":I
    const/16 v4, 0x1f4

    if-gt v1, v4, :cond_2

    .line 275
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    add-int/lit16 v4, v0, 0x1f4

    if-gt v4, v1, :cond_3

    .line 279
    add-int/lit16 v4, v0, 0x1f4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit16 v0, v0, 0x1f4

    goto :goto_1

    .line 281
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "str2":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 283
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->q:J

    return-wide v0
.end method

.method static synthetic e(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Laqq;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->p:Laqq;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->l:I

    return v0
.end method

.method static synthetic l(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->l:I

    return v0
.end method

.method static synthetic m(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic s(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic t(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic u(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic v(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 304
    const-string/jumbo v3, "NewsBusinessAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPageStarted begin, url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 310
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "lx_focus"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "lx_focus":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string/jumbo v3, "news"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    const-string/jumbo v3, "newsid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->o:Ljava/lang/String;

    .line 313
    const-string/jumbo v3, "dataSrcId"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->m:Ljava/lang/String;

    .line 314
    const-string/jumbo v3, "dataSrcName"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_2
    const-string/jumbo v3, "null"

    iget-object v4, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    iput-object v6, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->o:Ljava/lang/String;

    .line 326
    :cond_3
    const-string/jumbo v3, "null"

    iget-object v4, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    iput-object v6, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->m:Ljava/lang/String;

    .line 330
    :cond_4
    const-string/jumbo v3, "null"

    iget-object v4, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 331
    iput-object v6, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->n:Ljava/lang/String;

    .line 336
    :cond_5
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->q:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->p:Laqq;

    iget-object v4, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->n:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Laqq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->q:J

    goto :goto_0

    .line 316
    .end local v1    # "lx_focus":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NewsBusinessAdapter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 6
    .param p1, "isLongPress"    # Z

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    const-string/jumbo v1, "\u7075\u7280\u4e3a\u60a8\u64ad\u65b0\u95fb"

    const-string/jumbo v2, ""

    sget v3, Lof;->k:I

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lazq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 389
    :cond_1
    invoke-super {p0, p1}, Lqj;->b(Z)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    sget v1, Lof;->k:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    .line 351
    :cond_0
    invoke-super {p0}, Lqj;->g()V

    .line 352
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 356
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->r:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 358
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 359
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->r:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-super {p0}, Lqj;->k()V

    .line 377
    return-void

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->i:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    sget-object v3, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->stop:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    if-ne v2, v3, :cond_3

    .line 362
    iget v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->l:I

    invoke-direct {p0, v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v2

    const-string/jumbo v3, "1045"

    invoke-virtual {v2, v3}, Lwr;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->i:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    sget-object v3, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->pause:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    if-ne v2, v3, :cond_4

    .line 369
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->resume()V

    .line 370
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v2

    const-string/jumbo v3, "1045"

    invoke-virtual {v2, v3}, Lwr;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_4
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->i:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    sget-object v3, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->playing:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    if-ne v2, v3, :cond_0

    .line 373
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->pause()V

    goto :goto_0
.end method

.method public n()V
    .locals 3

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->r:Landroid/os/Handler;

    .line 395
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->p:Laqq;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->p:Laqq;

    invoke-virtual {v0}, Laqq;->a()V

    .line 401
    :cond_1
    invoke-super {p0}, Lqj;->n()V

    .line 402
    return-void
.end method
