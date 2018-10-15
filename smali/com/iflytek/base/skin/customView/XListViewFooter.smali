.class public Lcom/iflytek/base/skin/customView/XListViewFooter;
.super Landroid/widget/LinearLayout;
.source "XListViewFooter.java"


# static fields
.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1


# instance fields
.field private mContentView:Landroid/view/View;

.field private mProgressBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->initView()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->initView()V

    .line 34
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030170

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 94
    .local v0, "moreView":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->addView(Landroid/view/View;)V

    .line 95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const v1, 0x7f0b085b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    .line 98
    const v1, 0x7f0b085c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mProgressBar:Landroid/view/View;

    .line 99
    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method public loading()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public normal()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 46
    if-gez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 49
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 88
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method
