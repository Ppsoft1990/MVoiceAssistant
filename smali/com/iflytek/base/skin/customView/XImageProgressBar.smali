.class public Lcom/iflytek/base/skin/customView/XImageProgressBar;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "XImageProgressBar.java"

# interfaces
.implements Lcom/iflytek/base/skin/IRecyleResource;


# static fields
.field private static final TAG:Ljava/lang/String; = "XImageProgressBar"


# instance fields
.field private mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

.field private mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->initView()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->initView()V

    .line 29
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 32
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300ad

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 35
    .local v2, "root":Landroid/view/View;
    const v3, 0x7f0b048d

    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v3, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    .line 37
    const v3, 0x7f0b048e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v3, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    .line 38
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v1, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getProgressBar()Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method public getProgressBarBg()Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method public recyleResource()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->recyleResource()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->recyleResource()V

    .line 100
    :cond_1
    return-void
.end method

.method public setProgress(JJ)V
    .locals 9
    .param p1, "currentByte"    # J
    .param p3, "totalByte"    # J

    .prologue
    .line 48
    const-string/jumbo v3, "XImageProgressBar"

    const-string/jumbo v4, "setProgress"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XImageView;->getWidth()I

    move-result v2

    .line 50
    .local v2, "width":I
    const-string/jumbo v3, "XImageProgressBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 53
    long-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    long-to-double v6, p3

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    .line 55
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v1, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    const/16 v3, 0xf

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 65
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 66
    iget-object v3, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v1    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 58
    :cond_1
    long-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    long-to-double v6, p3

    div-double/2addr v4, v6

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 59
    .local v0, "len":I
    const-string/jumbo v3, "XImageProgressBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method

.method public setProgressBar(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageSrc"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 85
    return-void
.end method

.method public setProgressBarAndBg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "barImage"    # Ljava/lang/String;
    .param p2, "BgImage"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBar:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p2, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 90
    return-void
.end method

.method public setProgressBarBg(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageSrc"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XImageProgressBar;->mProgressBarBg:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 81
    return-void
.end method
