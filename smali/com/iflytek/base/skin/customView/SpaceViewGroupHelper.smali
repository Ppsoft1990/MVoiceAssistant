.class public Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;
.super Lcom/iflytek/base/skin/customView/SpaceViewHelper;
.source "SpaceViewGroupHelper.java"


# direct methods
.method public constructor <init>(Lcom/iflytek/base/skin/customView/SpaceTools;)V
    .locals 0
    .param p1, "spaceHelper"    # Lcom/iflytek/base/skin/customView/SpaceTools;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;-><init>(Lcom/iflytek/base/skin/customView/SpaceTools;)V

    .line 10
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->addView(Landroid/view/View;)V

    .line 28
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/base/skin/customView/SpaceTools;->addView(Landroid/view/View;II)V

    .line 45
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/SpaceTools;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    :cond_0
    return-void
.end method

.method public setRootParams()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setRootParams()V

    .line 19
    :cond_0
    return-void
.end method
