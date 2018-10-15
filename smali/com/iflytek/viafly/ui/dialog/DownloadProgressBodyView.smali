.class public Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;
.super Landroid/widget/LinearLayout;
.source "DownloadProgressBodyView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProgressBodyView"


# instance fields
.field private mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

.field private mPercent:I

.field private mPercentageView:Lcom/iflytek/base/skin/customView/XTextView;

.field private mSizeInfoView:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercent:I

    .line 34
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;)Lcom/iflytek/base/skin/customView/XImageProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    .prologue
    .line 21
    iget v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercent:I

    return v0
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercent:I

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 38
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->setOrientation(I)V

    .line 42
    new-instance v2, Lcom/iflytek/base/skin/customView/XImageProgressBar;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XImageProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    .line 43
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    const-string/jumbo v3, "color.plugin_download_progress_color"

    const-string/jumbo v4, "color.plugin_download_progress_bg_color"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->setProgressBarAndBg(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->addView(Landroid/view/View;)V

    .line 45
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    const-string/jumbo v3, "40"

    const-string/jumbo v4, "80"

    const-string/jumbo v5, "40"

    const-string/jumbo v6, "0"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 48
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;

    invoke-direct {v2, p0, v1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;-><init>(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "progressInfoLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 75
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 77
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mSizeInfoView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 78
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mSizeInfoView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_plugin_download_size_info"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 79
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mSizeInfoView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mSizeInfoView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v2

    const-string/jumbo v3, "16"

    sget-object v4, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 82
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercentageView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 83
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercentageView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_plugin_download_size_info"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 84
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercentageView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    const-string/jumbo v3, "14"

    sget-object v4, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 86
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    const-string/jumbo v3, "60"

    sget-object v4, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method


# virtual methods
.method public setPercent(I)V
    .locals 6
    .param p1, "precent"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercent:I

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercentageView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mPercentageView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mDownloadProgressBar:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    int-to-long v2, p1

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->setProgress(JJ)V

    .line 105
    :cond_1
    return-void
.end method

.method public setSizeInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "sizeInfo"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mSizeInfoView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->mSizeInfoView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-void
.end method
