.class public abstract Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;
.super Landroid/widget/LinearLayout;
.source "AbsOperationTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;
    }
.end annotation


# instance fields
.field public mBackBtn:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field protected mListener:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;

.field protected mMoreBtn:Lcom/iflytek/base/skin/customView/XImageView;

.field protected mRightIndicator:Lcom/iflytek/base/skin/customView/XImageView;

.field protected mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field public mTitle:Lcom/iflytek/base/skin/customView/XTextView;

.field protected operation_page_left_image:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->initView(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->setTitleName()V

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->setViewTag()V

    .line 51
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d3

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 56
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x60

    invoke-static {v2, v3}, Lazk;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->addView(Landroid/view/View;II)V

    .line 57
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f0b0524

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 58
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 59
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 60
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f0b02a1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mBackBtn:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 61
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f0b0525

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mMoreBtn:Lcom/iflytek/base/skin/customView/XImageView;

    .line 62
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mMoreBtn:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mMoreBtn:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mBackBtn:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f0b0526

    .line 66
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRightIndicator:Lcom/iflytek/base/skin/customView/XImageView;

    .line 67
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mRootView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f0b0523

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->operation_page_left_image:Lcom/iflytek/base/skin/customView/XImageView;

    .line 68
    return-void
.end method


# virtual methods
.method public abstract isNeedMenu()Z
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mMoreBtn:Lcom/iflytek/base/skin/customView/XImageView;

    if-ne v0, p1, :cond_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mListener:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;

    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mListener:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->onClick(Landroid/view/View;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public abstract onClick(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public refreshTitle()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public setOperationTitleEventListener(Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->mListener:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;

    .line 95
    return-void
.end method

.method public abstract setTitleName()V
.end method

.method public abstract setViewTag()V
.end method

.method public showOrHideMenu()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->isNeedMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :cond_0
    return-void
.end method
