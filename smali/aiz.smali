.class public Laiz;
.super Lajj;
.source "HomeBannerPresenter.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lajk;

.field private d:Laja;


# direct methods
.method public constructor <init>(Lajk;Landroid/content/Context;Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V
    .locals 1
    .param p1, "homeBannerView"    # Lajk;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bannerADDataManager"    # Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .prologue
    .line 24
    invoke-direct {p0}, Lajj;-><init>()V

    .line 18
    const-string/jumbo v0, "HomeBannerPresenter"

    iput-object v0, p0, Laiz;->b:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Laiz;->c:Lajk;

    .line 26
    new-instance v0, Laja;

    invoke-direct {v0, p2, p3}, Laja;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V

    iput-object v0, p0, Laiz;->d:Laja;

    .line 27
    return-void
.end method

.method static synthetic a(Laiz;)Lajk;
    .locals 1
    .param p0, "x0"    # Laiz;

    .prologue
    .line 17
    iget-object v0, p0, Laiz;->c:Lajk;

    return-object v0
.end method

.method static synthetic a(Laiz;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laiz;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Laiz;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Laiz;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laiz;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Laiz;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Laiz;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laiz;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Laiz;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 68
    iput-object p1, p0, Laiz;->a:Lail;

    .line 69
    return-void
.end method

.method public a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lajj;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "HomeBannerPresenter"

    const-string/jumbo v1, "HomeBannerPresenter getBusinessInfo"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Laiz;->d:Laja;

    new-instance v1, Laiz$1;

    invoke-direct {v1, p0}, Laiz$1;-><init>(Laiz;)V

    invoke-virtual {v0, v1}, Laja;->a(Lajm;)V

    .line 59
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "Bannerbanner_category"

    return-object v0
.end method
