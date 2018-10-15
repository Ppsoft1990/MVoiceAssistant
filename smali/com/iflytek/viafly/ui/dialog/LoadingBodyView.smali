.class public Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;
.super Landroid/widget/LinearLayout;
.source "LoadingBodyView.java"


# instance fields
.field private mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->initView(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 28
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->setOrientation(I)V

    .line 32
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 36
    invoke-virtual {v0, v9}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 37
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    const-string/jumbo v3, "30"

    const-string/jumbo v4, "70"

    const-string/jumbo v5, "30"

    const-string/jumbo v6, "70"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XProgressBar;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, "loadingProgressBar":Lcom/iflytek/base/skin/customView/XProgressBar;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203c9

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    .line 43
    invoke-static {p1, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    .line 47
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 50
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_dialog_content_text_new"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 51
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v2

    const-string/jumbo v3, "24"

    sget-object v4, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->addView(Landroid/view/View;)V

    .line 55
    return-void
.end method


# virtual methods
.method public setTipText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->mLoadingTip:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method
