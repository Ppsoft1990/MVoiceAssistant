.class public Lcom/iflytek/base/skin/customView/SpaceViewHelper;
.super Ljava/lang/Object;
.source "SpaceViewHelper.java"


# instance fields
.field protected mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;


# direct methods
.method public constructor <init>(Lcom/iflytek/base/skin/customView/SpaceTools;)V
    .locals 0
    .param p1, "spaceTools"    # Lcom/iflytek/base/skin/customView/SpaceTools;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    .line 24
    return-void
.end method

.method public static inflate(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layout"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layout"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 141
    check-cast v0, Landroid/view/ViewParent;

    .line 142
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_0
    instance-of v2, v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    if-eqz v2, :cond_1

    .line 146
    check-cast v0, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;

    .line 147
    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-interface {v0}, Lcom/iflytek/base/skin/customView/ISpaceViewSetting;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setRootParams()V

    .line 149
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getSpaceAttr()Lcom/iflytek/base/skin/space/SpaceAttr;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getSpaceAttr()Lcom/iflytek/base/skin/space/SpaceAttr;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMargin()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setMargin()V

    .line 127
    :cond_0
    return-void
.end method

.method public setSkinHeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSkinHeight(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/iflytek/base/skin/space/SpaceType;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/SpaceTools;->setMarginParam(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "top"    # Ljava/lang/String;
    .param p3, "right"    # Ljava/lang/String;
    .param p4, "bottom"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/base/skin/customView/SpaceTools;->setAllMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/iflytek/base/skin/space/SpaceType;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/SpaceTools;->setPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setSkinPaddings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "top"    # Ljava/lang/String;
    .param p3, "right"    # Ljava/lang/String;
    .param p4, "bottom"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/base/skin/customView/SpaceTools;->setAllPaddings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setSkinWidth(Ljava/lang/String;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSkinWidth(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method
