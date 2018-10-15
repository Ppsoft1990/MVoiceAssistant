.class public abstract Lcom/iflytek/viafly/ui/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field public mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field protected mGroupMainTitleName:Lcom/iflytek/base/skin/customView/XTextView;

.field protected mGroupSubTitleName:Lcom/iflytek/base/skin/customView/XTextView;

.field protected mGroupTitle:Landroid/widget/LinearLayout;

.field public mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mPopupWindowContainer:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mResidenceTimeLogHelper:Lxl;

.field public mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

.field protected mSeperatorButton:Lcom/iflytek/base/skin/customView/XImageView;

.field private mSkinDir:Ljava/lang/String;

.field protected mSkinDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSkinPackageContext:Landroid/content/Context;

.field protected mSkinPackageName:Ljava/lang/String;

.field protected mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

.field public mTitle:Lcom/iflytek/base/skin/customView/XTextView;

.field public mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field protected mTitleLeftButton:Lcom/iflytek/base/skin/customView/XImageView;

.field protected mTitleLeftLayout:Landroid/widget/LinearLayout;

.field protected mTitleName:Lcom/iflytek/base/skin/customView/XTextView;

.field private mTitlePopupWindow:Landroid/widget/PopupWindow;

.field protected mTitlePopupWindowButton:Lcom/iflytek/base/skin/customView/XImageView;

.field protected mTitleRightButton:Lcom/iflytek/base/skin/customView/XImageView;

.field protected mTitleRightLayout:Landroid/widget/LinearLayout;

.field protected mTitleShade:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0282

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b028e

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0283

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0286

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0287

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupTitle:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0288

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupMainTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0289

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupSubTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0285

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mSeperatorButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b028c

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b0284

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftLayout:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b028b

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightLayout:Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b028d

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleShade:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const v1, 0x7f0b028a

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitlePopupWindowButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitlePopupWindowButton:Lcom/iflytek/base/skin/customView/XImageView;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity$1;-><init>(Lcom/iflytek/viafly/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity$2;-><init>(Lcom/iflytek/viafly/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity$3;-><init>(Lcom/iflytek/viafly/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/BaseActivity$4;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity$4;-><init>(Lcom/iflytek/viafly/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/BaseActivity$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity$5;-><init>(Lcom/iflytek/viafly/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 202
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void
.end method

.method public getTitleBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    return-object v0
.end method

.method protected loadSkin()V
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeManager;->getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mSkinDir:Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->setSkin()V

    .line 252
    return-void
.end method

.method public onClickTitleLeftButton()V
    .locals 0

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 308
    return-void
.end method

.method protected onClickTitleRightButton()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 79
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 81
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->initView()V

    .line 82
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->loadSkin()V

    .line 83
    new-instance v1, Lxl;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lxl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mResidenceTimeLogHelper:Lxl;

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 90
    .local v0, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 92
    .end local v0    # "statusBarColor":I
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 369
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->removeAllViews()V

    .line 381
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->removeAllViews()V

    .line 386
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupTitle:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 391
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupTitle:Landroid/widget/LinearLayout;

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz v1, :cond_4

    .line 395
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->removeAllViews()V

    .line 396
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 400
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 401
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftLayout:Landroid/widget/LinearLayout;

    .line 404
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 405
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 406
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightLayout:Landroid/widget/LinearLayout;

    .line 408
    :cond_6
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupMainTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    .line 409
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupSubTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    .line 410
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleShade:Landroid/widget/ImageView;

    .line 411
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    .line 412
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 413
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleRightButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 414
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 415
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

    .line 416
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mSkinDir:Ljava/lang/String;

    .line 417
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitlePopupWindowButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 418
    iput-object v3, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mPopupWindowContainer:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 420
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 421
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BaseActivity"

    const-string/jumbo v2, "onDestroy()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 330
    const-string/jumbo v0, "BaseActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mSkinDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mSkinDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mThemeManager:Lcom/iflytek/base/skin/ThemeManager;

    .line 318
    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeManager;->getCurrentThemeInfo()Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->loadSkin()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mResidenceTimeLogHelper:Lxl;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mResidenceTimeLogHelper:Lxl;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxl;->a(Landroid/content/Context;)V

    .line 324
    :cond_1
    const-string/jumbo v0, "BaseActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 336
    invoke-static {p0}, Lwt;->a(Landroid/content/Context;)Lwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwt;->a(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 342
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mResidenceTimeLogHelper:Lxl;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mResidenceTimeLogHelper:Lxl;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-static {p0}, Lwt;->a(Landroid/content/Context;)Lwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwt;->b(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v3, -0x1

    .line 234
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    return-void
.end method

.method public setGroupTitleName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mainTitleName"    # Ljava/lang/String;
    .param p2, "subTitleName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupTitle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupMainTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mGroupSubTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    return-void
.end method

.method public setSeperatorButton(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mSeperatorButton:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 222
    return-void
.end method

.method public abstract setSkin()V
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_title"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundColor(I)V

    .line 259
    return-void
.end method

.method public setTitleBarBg()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundResource(I)V

    .line 359
    return-void
.end method

.method public setTitleBarBg(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 354
    return-void
.end method

.method public setTitleBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 349
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 350
    return-void

    .line 349
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setTitleLeftButtonHigh()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public setTitleLeftButtonImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "image"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleLeftButton:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 226
    return-void
.end method

.method protected setTitleLeftButtonNormal()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public setTitleName(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->setTitleName(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setTitleNameStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceString"    # Ljava/lang/String;

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitleName:Lcom/iflytek/base/skin/customView/XTextView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 288
    :cond_0
    return-void
.end method

.method protected setTitleRightButtonHigh()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method protected setTitleRightButtonNormal()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public showTitlePopupWindowButton()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity;->mTitlePopupWindowButton:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 230
    return-void
.end method
