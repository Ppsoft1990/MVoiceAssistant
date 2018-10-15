.class public Ladx;
.super Landroid/widget/BaseAdapter;
.source "MultiTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ladw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Ladx;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Ladx;->b:Ljava/util/List;

    .line 32
    new-instance v0, Ladw;

    invoke-direct {v0}, Ladw;-><init>()V

    iput-object v0, p0, Ladx;->c:Ladw;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ladv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ladv",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    .local p1, "itemViewDelegate":Ladv;, "Ladv<TT;>;"
    iget-object v0, p0, Ladx;->c:Ladw;

    invoke-virtual {v0, p1}, Ladw;->a(Ladv;)V

    .line 85
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 91
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    iget-object v0, p0, Ladx;->c:Ladw;

    invoke-virtual {v0, p1}, Ladw;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 92
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    iget-object v0, p0, Ladx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    iget-object v0, p0, Ladx;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    iget-object v0, p0, Ladx;->c:Ladw;

    iget-object v1, p0, Ladx;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ladw;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    const-string/jumbo v4, "MultiTypeAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v4, p0, Ladx;->c:Ladw;

    invoke-virtual {p0, p1}, Ladx;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ladw;->a(Ljava/lang/Object;)Ladv;

    move-result-object v0

    .line 66
    .local v0, "itemViewDelegate":Ladv;
    invoke-interface {v0}, Ladv;->a()I

    move-result v1

    .line 67
    .local v1, "layoutId":I
    const/4 v3, 0x0

    .line 68
    .local v3, "viewHolder":Lady;
    if-nez p2, :cond_0

    .line 69
    iget-object v4, p0, Ladx;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lady;

    .end local v3    # "viewHolder":Lady;
    iget-object v4, p0, Ladx;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v2, p1, v1}, Lady;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 78
    .end local v2    # "view":Landroid/view/View;
    .restart local v3    # "viewHolder":Lady;
    :goto_0
    invoke-virtual {p0, p1}, Ladx;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1}, Ladv;->a(Lady;Ljava/lang/Object;I)V

    .line 80
    invoke-virtual {v3}, Lady;->b()Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "viewHolder":Lady;
    check-cast v3, Lady;

    .line 75
    .restart local v3    # "viewHolder":Lady;
    invoke-virtual {v3, p1}, Lady;->a(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Ladx;, "Ladx<TT;>;"
    iget-object v0, p0, Ladx;->c:Ladw;

    invoke-virtual {v0}, Ladw;->a()I

    move-result v0

    return v0
.end method
