.class public Lcom/iflytek/viafly/ui/view/banner/BannerCardView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "BannerCardView.java"

# interfaces
.implements Lajg;
.implements Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;
    }
.end annotation


# static fields
.field public static final MSG_HIDE_BANNER_VIEW:I = 0x2

.field public static final MSG_UPDATE_BANNER_VIEW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TestBannerCardView"


# instance fields
.field private final BANNER_HIDE:I

.field private final BANNER_SHOW:I

.field private final BANNER_SHOWANIMATION_START_HEIGHT:I

.field private final BANNER_SHOW_HIDE_ANIMATION_TIME:J

.field private adIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bannerCardViewHeight:I

.field private bannerDataManager:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

.field private bannerType:I

.field private convenientBanner:Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

.field private curBannerShowState:I

.field private downX:I

.field private downY:I

.field private imgUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;

.field private nowShowingData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private upX:I

.field private upY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, -0x3e7

    .line 66
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput v6, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->BANNER_SHOWANIMATION_START_HEIGHT:I

    .line 42
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-wide v2, 0x4064400000000000L    # 162.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerCardViewHeight:I

    .line 43
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->BANNER_SHOW_HIDE_ANIMATION_TIME:J

    .line 46
    iput v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->BANNER_HIDE:I

    .line 47
    iput v6, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->BANNER_SHOW:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->imgUrlList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->adIconList:Ljava/util/List;

    .line 54
    iput v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->curBannerShowState:I

    .line 57
    iput v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->downX:I

    .line 58
    iput v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->downY:I

    .line 59
    iput v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->upX:I

    .line 60
    iput v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->upY:I

    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerType:I

    .line 69
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->initView()V

    .line 70
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->initListener()V

    .line 71
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->loadDate()V

    .line 72
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->requestData()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->recordBannerADShowed()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->imgUrlList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->adIconList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->convenientBanner:Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->downX:I

    return v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->downY:I

    return v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->upX:I

    return v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->upY:I

    return v0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerDataManager:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->curBannerShowState:I

    return v0
.end method

.method static synthetic access$702(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->curBannerShowState:I

    return p1
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerCardViewHeight:I

    return v0
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerType:I

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerDataManager:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerDataManager:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->setADResultCallback(Lcom/iflytek/viafly/ui/view/banner/BannerDataManager$BannerADResultCallback;)V

    .line 88
    new-instance v0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;-><init>(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mHandler:Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;

    .line 89
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030161

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->layout:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->layout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->convenientBanner:Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->convenientBanner:Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    invoke-virtual {v1, p0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setOnItemClickListener(Lajg;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 80
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->layout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    const-string/jumbo v1, "TestBannerCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bannerCardViewHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerCardViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private loadDate()V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerDataManager:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->getBannerADCacheData()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 96
    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->updateBannerView(Ljava/util/List;Z)V

    .line 99
    :cond_0
    return-void
.end method

.method private recordBannerADClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT69321"

    .line 310
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private recordBannerADShowed()V
    .locals 6

    .prologue
    .line 283
    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 298
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 287
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 288
    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;

    .line 289
    .local v0, "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 290
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_id"

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v4

    const-string/jumbo v5, "FT69320"

    .line 293
    invoke-virtual {v4, v5, v1}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 287
    .end local v1    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestData()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerDataManager:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->requestNewBannerADData()V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public onBannerADResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->updateBannerView(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public onItemClick(IIIII)V
    .locals 21
    .param p1, "position"    # I
    .param p2, "downX"    # I
    .param p3, "downY"    # I
    .param p4, "upX"    # I
    .param p5, "upY"    # I

    .prologue
    .line 161
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->nowShowingData:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;

    .line 162
    .local v16, "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    if-eqz v16, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 164
    .local v15, "appContext":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->recordBannerADClick(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->bannerDataManager:Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    sget-object v3, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adclick:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    .line 166
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getPlatformslotid()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getPlatformid()I

    move-result v6

    .line 169
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getClicknoticeurls()Ljava/util/List;

    move-result-object v7

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 165
    invoke-virtual/range {v2 .. v11}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->bannerReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IIII)V

    .line 170
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getAction()I

    move-result v14

    .line 171
    .local v14, "action":I
    const-string/jumbo v2, "TestBannerCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v13, 0x1

    .line 173
    .local v13, "ACTION_OUTER_BROWSER":I
    const/4 v12, 0x7

    .line 174
    .local v12, "ACTION_INNER_BROWSER":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1

    .line 175
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getClickurl()Ljava/lang/String;

    move-result-object v17

    .line 176
    .local v17, "clickUrl":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 178
    .local v20, "uri":Landroid/net/Uri;
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v19, "itent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    .end local v12    # "ACTION_INNER_BROWSER":I
    .end local v13    # "ACTION_OUTER_BROWSER":I
    .end local v14    # "action":I
    .end local v15    # "appContext":Landroid/content/Context;
    .end local v16    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    .end local v17    # "clickUrl":Ljava/lang/String;
    .end local v19    # "itent":Landroid/content/Intent;
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v12    # "ACTION_INNER_BROWSER":I
    .restart local v13    # "ACTION_OUTER_BROWSER":I
    .restart local v14    # "action":I
    .restart local v15    # "appContext":Landroid/content/Context;
    .restart local v16    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    :cond_1
    const/4 v2, 0x7

    if-ne v14, v2, :cond_0

    .line 183
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getClickurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lazo;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v12    # "ACTION_INNER_BROWSER":I
    .end local v13    # "ACTION_OUTER_BROWSER":I
    .end local v14    # "action":I
    .end local v15    # "appContext":Landroid/content/Context;
    .end local v16    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    :catch_0
    move-exception v18

    .line 187
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TestBannerCardView"

    const-string/jumbo v3, "clicked bannerAD Pic exception"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateBannerView(Ljava/util/List;Z)V
    .locals 8
    .param p2, "hasAnimation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "bannerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;>;"
    const/4 v7, 0x1

    .line 109
    const-string/jumbo v5, "TestBannerCardView"

    const-string/jumbo v6, "updateBannerView"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->imgUrlList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 113
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->adIconList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;

    .line 116
    .local v0, "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->imgUrlList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getMaturl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getAdmarkflag()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->getAdmark()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "mark":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->adIconList:Ljava/util/List;

    const-string/jumbo v6, "\u5e7f\u544a"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v3    # "mark":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .restart local v3    # "mark":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->adIconList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    .end local v0    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    .end local v2    # "i":I
    .end local v3    # "mark":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TestBannerCardView"

    const-string/jumbo v6, "updateBannerView exception "

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 125
    .restart local v0    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->adIconList:Ljava/util/List;

    const-string/jumbo v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    .end local v0    # "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    :cond_3
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mHandler:Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;

    if-eqz v5, :cond_1

    .line 130
    const-string/jumbo v5, "TestBannerCardView"

    const-string/jumbo v6, "mhandler is not null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 132
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 133
    if-eqz p2, :cond_4

    .line 134
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 138
    :goto_3
    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->mHandler:Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;

    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 136
    :cond_4
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
