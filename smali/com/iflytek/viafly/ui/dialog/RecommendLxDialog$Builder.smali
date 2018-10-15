.class public Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
.super Ljava/lang/Object;
.source "RecommendLxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final IMAGE_NAME:Ljava/lang/String; = "recommandLingxi_v3.jpg"


# instance fields
.field private bodyView:Landroid/view/View;

.field private bottomView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

.field private mIsMMSAvailable:Z

.field private mIsMMSAvailable_HTC:Z

.field private mIsMMSAvailable_IVVI:Z

.field private mIsMMSAvailable_IVVI2:Z

.field private mIsMMSAvailable_SE:Z

.field private mIsMMSAvailable_SM:Z

.field private mIsWeiboAvailable:Z

.field private mIsWeibog3Available:Z

.field private mMmsImg:Lcom/iflytek/base/skin/customView/XButton;

.field private mMoreImg:Lcom/iflytek/base/skin/customView/XButton;

.field private mMoreShareApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPath:Ljava/lang/String;

.field private mQqmobileImg:Lcom/iflytek/base/skin/customView/XButton;

.field private mQqzoneImg:Lcom/iflytek/base/skin/customView/XButton;

.field private mScrollInnerView:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

.field private mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

.field private mShareText:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mShareUrl:Ljava/lang/String;

.field private mTimeLineImg:Lcom/iflytek/base/skin/customView/XButton;

.field private mWeiboImg:Lcom/iflytek/base/skin/customView/XButton;

.field private mWeixiImg:Lcom/iflytek/base/skin/customView/XButton;

.field private neutralButtonListener:Landroid/view/View$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private rootView:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "shareUrl"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;
    .param p5, "shareText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 55
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 56
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    .line 58
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->titleView:Landroid/view/View;

    .line 60
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bottomView:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    .line 62
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    .line 63
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollInnerView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 74
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    .line 530
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$4;-><init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->getPackageNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/Share;->isMoreShareSelection(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreShareApp:Ljava/util/List;

    .line 93
    const v0, 0x7f0203bf

    sget-object v1, Lnk;->a:Ljava/lang/String;

    const-string/jumbo v2, "recommandLingxi_v3.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->saveDrawableToPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    .line 94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iput-object p3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    .line 97
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iput-object p4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    .line 100
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iput-object p5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    .line 103
    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreShareApp:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->titleView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$402(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bottomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Lcom/iflytek/base/skin/customView/XScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Lcom/iflytek/base/skin/customView/XScrollView;)Lcom/iflytek/base/skin/customView/XScrollView;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Lcom/iflytek/base/skin/customView/XScrollView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    return-object p1
.end method

.method static synthetic access$602(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Lcom/iflytek/base/skin/customView/XLinearLayout;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .param p1, "x1"    # Lcom/iflytek/base/skin/customView/XLinearLayout;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollInnerView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method private createAppItem(Landroid/content/pm/ActivityInfo;)Landroid/widget/LinearLayout;
    .locals 10
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const v9, 0x7f0b0668

    const v8, 0x7f0b0667

    const/16 v7, 0x8

    .line 460
    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03011c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 461
    .local v2, "rootView2":Landroid/view/View;
    const v4, 0x7f0b0666

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 463
    .local v3, "view":Landroid/widget/LinearLayout;
    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    .line 465
    .local v0, "appShareBtn":Lcom/iflytek/base/skin/customView/XButton;
    new-instance v4, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;-><init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    .line 473
    .local v1, "appShareName":Lcom/iflytek/base/skin/customView/XTextView;
    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const-string/jumbo v4, "RecommendLxDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "appShareName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_0
    return-object v3

    .line 476
    .end local v0    # "appShareBtn":Lcom/iflytek/base/skin/customView/XButton;
    .end local v1    # "appShareName":Lcom/iflytek/base/skin/customView/XTextView;
    :cond_0
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    .line 477
    .restart local v0    # "appShareBtn":Lcom/iflytek/base/skin/customView/XButton;
    invoke-virtual {v0, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 478
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    .line 479
    .restart local v1    # "appShareName":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {v1, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getPackageNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const-string/jumbo v1, "com.htc.sense.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string/jumbo v1, "com.sonyericsson.conversations"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const-string/jumbo v1, "com.yulong.coolmessage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v1, "com.android.messaging"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v1, "com.samsung.android.messaging"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    const-string/jumbo v1, "com.qzone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const-string/jumbo v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    return-object v0
.end method

.method private handleMoreBtn()V
    .locals 22

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0b0568

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 399
    .local v5, "appLine2":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0b056b

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 400
    .local v11, "moreLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0b056d

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 401
    .local v14, "spaceHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 402
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 405
    const/4 v9, 0x3

    .line 406
    .local v9, "lineNums":I
    const/4 v7, 0x2

    .line 407
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/base/skin/customView/XScrollView;->getHeight()I

    move-result v10

    .line 408
    .local v10, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-wide/high16 v18, 0x402e000000000000L    # 15.0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v13

    .line 410
    .local v13, "scrollOffset":I
    move-object v6, v5

    .line 411
    .local v6, "appOneLine":Landroid/widget/LinearLayout;
    const-string/jumbo v16, "RecommendLxDialog"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mMoreShareApp size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreShareApp:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreShareApp:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 413
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->createAppItem(Landroid/content/pm/ActivityInfo;)Landroid/widget/LinearLayout;

    move-result-object v15

    .line 414
    .local v15, "view":Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, 0x0

    const/16 v19, -0x2

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    add-int/lit8 v7, v7, 0x1

    .line 416
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v7, v0, :cond_0

    .line 417
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-nez v17, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollInnerView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v9, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 419
    add-int/lit8 v9, v9, 0x1

    .line 420
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v9, v0, :cond_1

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/base/skin/customView/XScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 422
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v10, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 426
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v7, 0x0

    .line 427
    new-instance v6, Landroid/widget/LinearLayout;

    .end local v6    # "appOneLine":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 428
    .restart local v6    # "appOneLine":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    invoke-static/range {v17 .. v19}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4022000000000000L    # 9.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4035000000000000L    # 21.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 432
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "view":Landroid/widget/LinearLayout;
    :cond_2
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    if-eqz v7, :cond_4

    .line 433
    move v8, v7

    .local v8, "i":I
    :goto_1
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v8, v0, :cond_4

    .line 434
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->createAppItem(Landroid/content/pm/ActivityInfo;)Landroid/widget/LinearLayout;

    move-result-object v16

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, 0x0

    const/16 v19, -0x2

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    if-nez v16, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollInnerView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v16, v0

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v9, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 437
    add-int/lit8 v9, v9, 0x1

    .line 438
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v9, v0, :cond_3

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/base/skin/customView/XScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 440
    .restart local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput v10, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 445
    .end local v8    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/base/skin/customView/XScrollView;->postInvalidate()V

    .line 447
    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    new-instance v17, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$2;-><init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;I)V

    const-wide/16 v18, 0x14

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    return-void
.end method

.method private handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;
    .param p5, "shareText"    # Ljava/lang/String;
    .param p6, "isTimeLine"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/framework/ui/share/IShareResultListener;)V

    .line 393
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->dismiss()V

    .line 394
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreImg:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mWeixiImg:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.qzone"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mQqzoneImg:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sina.weibo"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsWeiboAvailable:Z

    .line 296
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sina.weibog3"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsWeibog3Available:Z

    .line 297
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsWeiboAvailable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsWeibog3Available:Z

    if-eqz v0, :cond_4

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mWeiboImg:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :goto_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isTimelinShareAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mTimeLineImg:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    :goto_3
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mQqmobileImg:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :goto_4
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.mms"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable:Z

    .line 316
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.htc.sense.mms"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_HTC:Z

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sonyericsson.conversations"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_SE:Z

    .line 318
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.yulong.coolmessage"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_IVVI:Z

    .line 319
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.messaging"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_IVVI2:Z

    .line 320
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.messaging"

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_SM:Z

    .line 322
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_HTC:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_SE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_IVVI:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_IVVI2:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_SM:Z

    if-eqz v0, :cond_7

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMmsImg:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :goto_5
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mWeixiImg:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "image.ic_weixin_dim"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mQqzoneImg:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "image.ic_qqzone_dim"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_1

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mWeiboImg:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "image.ic_weibo_dim"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_2

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mTimeLineImg:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "image.ic_timeline_dim"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_3

    .line 312
    :cond_6
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mQqmobileImg:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "image.ic_translation_qq_dim"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_4

    .line 325
    :cond_7
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMmsImg:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "image.ic_translation_message_dim"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_5
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b0563

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollInnerView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b0562

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XScrollView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mScrollView:Lcom/iflytek/base/skin/customView/XScrollView;

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b0564

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mWeixiImg:Lcom/iflytek/base/skin/customView/XButton;

    .line 263
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b0565

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mTimeLineImg:Lcom/iflytek/base/skin/customView/XButton;

    .line 264
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b0566

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mWeiboImg:Lcom/iflytek/base/skin/customView/XButton;

    .line 265
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b0567

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mQqzoneImg:Lcom/iflytek/base/skin/customView/XButton;

    .line 266
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b0569

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mQqmobileImg:Lcom/iflytek/base/skin/customView/XButton;

    .line 267
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b056a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMmsImg:Lcom/iflytek/base/skin/customView/XButton;

    .line 268
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    const v1, 0x7f0b056c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreImg:Lcom/iflytek/base/skin/customView/XButton;

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreShareApp:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreShareApp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mMoreImg:Lcom/iflytek/base/skin/customView/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 274
    :cond_1
    return-void
.end method

.method private saveDrawableToPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "picID"    # I
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v6, 0x0

    .line 488
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 490
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, "wholeFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v7, "picFlie":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 518
    if-eqz v4, :cond_0

    .line 519
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 521
    :cond_0
    if-eqz v6, :cond_1

    .line 522
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 526
    .end local v7    # "picFlie":Ljava/io/File;
    .end local v8    # "wholeFilePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 524
    .restart local v7    # "picFlie":Ljava/io/File;
    .restart local v8    # "wholeFilePath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 525
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "RecommendLxDialog"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 497
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 499
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 502
    :cond_3
    iget-object v9, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 503
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x2000

    :try_start_3
    new-array v0, v9, [B

    .line 505
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 508
    .local v1, "count":I
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_5

    .line 509
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 513
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_1
    move-exception v3

    move-object v4, v5

    .line 514
    .end local v2    # "dir":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "picFlie":Ljava/io/File;
    .end local v8    # "wholeFilePath":Ljava/lang/String;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    const-string/jumbo v9, "RecommendLxDialog"

    const-string/jumbo v10, "saveDrawableToPath"

    invoke-static {v9, v10, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 515
    const/4 v8, 0x0

    .line 518
    if-eqz v4, :cond_4

    .line 519
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 521
    :cond_4
    if-eqz v6, :cond_1

    .line 522
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 524
    :catch_2
    move-exception v3

    .line 525
    const-string/jumbo v9, "RecommendLxDialog"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 518
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "picFlie":Ljava/io/File;
    .restart local v8    # "wholeFilePath":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 519
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 521
    :cond_6
    if-eqz v6, :cond_7

    .line 522
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_3
    move-object v4, v5

    .line 526
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 524
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    .line 525
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "RecommendLxDialog"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 517
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "picFlie":Ljava/io/File;
    .end local v8    # "wholeFilePath":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v9

    .line 518
    :goto_4
    if-eqz v4, :cond_8

    .line 519
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 521
    :cond_8
    if-eqz v6, :cond_9

    .line 522
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 526
    :cond_9
    :goto_5
    throw v9

    .line 524
    :catch_4
    move-exception v3

    .line 525
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "RecommendLxDialog"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 517
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "picFlie":Ljava/io/File;
    .restart local v8    # "wholeFilePath":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 513
    .end local v2    # "dir":Ljava/io/File;
    .end local v7    # "picFlie":Ljava/io/File;
    .end local v8    # "wholeFilePath":Ljava/lang/String;
    :catch_5
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 106
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 107
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 111
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->titleView:Landroid/view/View;

    .line 112
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->titleView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300e4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    .line 114
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomSingleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bottomView:Landroid/view/View;

    .line 115
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bottomView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->titleView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bodyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bottomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "dialog":Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 123
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->setCancelable(Z)V

    .line 125
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    :goto_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 148
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 149
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->initView()V

    .line 152
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->initListener()V

    .line 154
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    .line 155
    return-object v0

    .line 131
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    new-instance v3, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;-><init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)V

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->dismiss()V

    .line 215
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->isShowing()Z

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 349
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsWeiboAvailable:Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.sina.weibo"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 357
    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsWeibog3Available:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.sina.weibog3"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 362
    :pswitch_4
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.qzone"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 365
    :pswitch_5
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mobileqq"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 368
    :pswitch_6
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable:Z

    if-eqz v0, :cond_2

    .line 369
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.android.mms"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 370
    :cond_2
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_HTC:Z

    if-eqz v0, :cond_3

    .line 371
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.htc.sense.mms"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 372
    :cond_3
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_SE:Z

    if-eqz v0, :cond_4

    .line 373
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.sonyericsson.conversations"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 374
    :cond_4
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_IVVI:Z

    if-eqz v0, :cond_5

    .line 375
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.yulong.coolmessage"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 376
    :cond_5
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_IVVI2:Z

    if-eqz v0, :cond_6

    .line 377
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.android.messaging"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 378
    :cond_6
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mIsMMSAvailable_SM:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.messaging"

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mShareText:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 384
    :pswitch_7
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleMoreBtn()V

    goto/16 :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x7f0b0564
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 248
    return-object p0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 253
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    .line 239
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->bottomView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->titleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 188
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 195
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 196
    const/16 p1, 0x33

    .line 198
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 199
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 200
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 202
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;->show()V

    .line 205
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 174
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 176
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 180
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 181
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 182
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 184
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;

    move-result-object v5

    return-object v5
.end method
