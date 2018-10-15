.class public Laja;
.super Ljava/lang/Object;
.source "HomeBannerRequestHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lajm;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/viafly/ad/business/BannerADDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bannerADDataManager"    # Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "HomeBannerRequestHelper"

    iput-object v0, p0, Laja;->a:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Laja;->c:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Laja;->d:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .line 26
    return-void
.end method

.method static synthetic a(Laja;)Lajm;
    .locals 1
    .param p0, "x0"    # Laja;

    .prologue
    .line 17
    iget-object v0, p0, Laja;->b:Lajm;

    return-object v0
.end method


# virtual methods
.method public a(Lajm;)V
    .locals 2
    .param p1, "listener"    # Lajm;

    .prologue
    .line 30
    iput-object p1, p0, Laja;->b:Lajm;

    .line 31
    iget-object v0, p0, Laja;->d:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    new-instance v1, Laja$1;

    invoke-direct {v1, p0}, Laja$1;-><init>(Laja;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->setADResultCallback(Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;)V

    .line 49
    iget-object v0, p0, Laja;->d:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->requestNewBannerADData()J

    .line 50
    return-void
.end method
