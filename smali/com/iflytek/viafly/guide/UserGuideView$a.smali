.class Lcom/iflytek/viafly/guide/UserGuideView$a;
.super Lba;
.source "UserGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/guide/UserGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/guide/UserGuideView;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/guide/UserGuideView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideView$a;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/guide/UserGuideView;Lcom/iflytek/viafly/guide/UserGuideView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/guide/UserGuideView;
    .param p2, "x1"    # Lcom/iflytek/viafly/guide/UserGuideView$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/UserGuideView$a;-><init>(Lcom/iflytek/viafly/guide/UserGuideView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$a;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->d(Lcom/iflytek/viafly/guide/UserGuideView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 207
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 233
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$a;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->d(Lcom/iflytek/viafly/guide/UserGuideView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$a;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->d(Lcom/iflytek/viafly/guide/UserGuideView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lba;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 211
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$a;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->d(Lcom/iflytek/viafly/guide/UserGuideView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$a;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->d(Lcom/iflytek/viafly/guide/UserGuideView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 196
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 218
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 228
    return-void
.end method
