.class public abstract Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler2;
.super Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler;
.source "PtrDefaultHandler2.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/view/ptr/PtrHandler2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler;-><init>()V

    return-void
.end method

.method public static canChildScrollDown(Landroid/view/View;)Z
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_5

    .line 11
    instance-of v4, p0, Landroid/widget/AbsListView;

    if-eqz v4, :cond_2

    move-object v0, p0

    .line 12
    check-cast v0, Landroid/widget/AbsListView;

    .line 13
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 27
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    move v2, v3

    .line 15
    goto :goto_0

    .line 16
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    instance-of v4, p0, Landroid/widget/ScrollView;

    if-eqz v4, :cond_4

    move-object v1, p0

    .line 17
    check-cast v1, Landroid/widget/ScrollView;

    .line 18
    .local v1, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 19
    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .end local v1    # "scrollView":Landroid/widget/ScrollView;
    :cond_4
    move v2, v3

    .line 24
    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    goto :goto_0
.end method

.method public static checkContentCanBePulledUp(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p0, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p1, "content"    # Landroid/view/View;
    .param p2, "header"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler2;->canChildScrollDown(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkCanDoLoadMore(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "footer"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler2;->checkContentCanBePulledUp(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
