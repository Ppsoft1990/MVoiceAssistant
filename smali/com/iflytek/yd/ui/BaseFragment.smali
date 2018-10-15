.class public abstract Lcom/iflytek/yd/ui/BaseFragment;
.super Landroid/support/v4/app/Fragment;


# static fields
.field public static final BACK_BTN_ID:I = 0x6f0b0191

.field public static final CONTENT_VIEW_ID:I = 0x6f0b0189

.field public static final SEPARATOR_ID:I = 0x6f0b0192

.field public static final TITLE_BAR_ID:I = 0x6f0b0190


# instance fields
.field private mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

.field private mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

.field private mOperationLog:Lcom/iflytek/yd/business/IOperationLog;

.field private mRecordFlag:Z

.field private mRecordStartTime:J

.field private mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private mSeparator:Lcom/iflytek/base/skin/customView/XImageView;

.field private mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private mTitleText:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordFlag:Z

    return-void
.end method

.method private endRecord(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getRecordFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordFlag:Z

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mOperationLog:Lcom/iflytek/yd/business/IOperationLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mOperationLog:Lcom/iflytek/yd/business/IOperationLog;

    const-string/jumbo v1, "FD21000"

    iget-wide v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordStartTime:J

    const-string/jumbo v4, "success"

    invoke-direct {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->parseLogParams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/iflytek/yd/business/IOperationLog;->appendOpLog(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordStartTime:J

    :cond_1
    return-void
.end method

.method private getRecordFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordFlag:Z

    return v0
.end method

.method private parseLogParams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "page_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private setRecordFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordFlag:Z

    return-void
.end method

.method private startRecord()V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getRecordFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordFlag:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordStartTime:J

    goto :goto_0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;)V
    .locals 11

    const v10, 0x6f0b0191

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v1, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v2, 0x6f0b0190

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setId(I)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v1

    const-string/jumbo v2, "100"

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const-string/jumbo v2, "image.fluent_page_title_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    new-instance v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "style_title"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundColor(I)V

    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v1, v0}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v10}, Lcom/iflytek/base/skin/customView/XImageView;->setId(I)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "image.ic_browser_back_arrow"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "statelist.fluepage_title_btn_states"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    new-instance v2, Lcom/iflytek/yd/ui/a;

    invoke-direct {v2, p0}, Lcom/iflytek/yd/ui/a;-><init>(Lcom/iflytek/yd/ui/BaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v1, v0}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mSeparator:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mSeparator:Lcom/iflytek/base/skin/customView/XImageView;

    const v2, 0x6f0b0192

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setId(I)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mSeparator:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "image.browser_title_line"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    const-wide/high16 v2, 0x4046000000000000L    # 44.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v0, v6, v0, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v3, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v3, p0, Lcom/iflytek/yd/ui/BaseFragment;->mSeparator:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v2, 0x6f0b0192

    invoke-virtual {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, p1, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast p2, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dispatchKeyEvent()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dispatchTouchEvent()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "finish()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "finish()"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->pop()Lcom/iflytek/yd/ui/BaseFragment;

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/ui/BaseFragment;->onFragmentResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-class v1, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFragmentResult()"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    return-object v0
.end method

.method public getTitleBar()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    return-object v0
.end method

.method public onClickBackButton(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const-string/jumbo v1, "color.window_bg"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/iflytek/yd/ui/BaseFragment;->setResult(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    :cond_0
    iput-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v2, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    return-void
.end method

.method public onFragmentResult(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onFragmentResult()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKeyDown()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKeyUp()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getRecordFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordFlag:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRecordStartTime:J

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/yd/ui/BaseFragment;->endRecord(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTouchEvent()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected final removeFragment(Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/yd/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lh;

    move-result-object v0

    invoke-virtual {v0}, Lh;->a()Lj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj;->a(Landroid/support/v4/app/Fragment;)Lj;

    invoke-virtual {v0}, Lj;->b()I

    return-void
.end method

.method public setBackBtnResource(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mBackBtn:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    :cond_0
    return-void
.end method

.method protected final setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, p1, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method setMediator(Lcom/iflytek/yd/ui/FragmentMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    return-void
.end method

.method protected final setResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0, p0}, Lcom/iflytek/yd/ui/FragmentMediator;->isTop(Lcom/iflytek/yd/ui/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->pop()Lcom/iflytek/yd/ui/BaseFragment;

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onFragmentResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFragmentResult()"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setTitleBarBg(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    :cond_0
    return-void
.end method

.method protected setTitleBarVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitleStyle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/yd/ui/BaseFragment;->setTitleBarVisible(Z)V

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mTitleText:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/ui/BaseFragment;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
