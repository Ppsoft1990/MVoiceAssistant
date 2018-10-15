.class public abstract Lcom/iflytek/viafly/ui/ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemAdapter.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ltf;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Ljava/util/List",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLayoutId:I

.field private mObservable:Lazh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput p3, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mLayoutId:I

    .line 48
    iput-object p2, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    check-cast p2, Ltf;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/ui/ItemAdapter;->add(ILtf;)V

    return-void
.end method

.method public add(ILtf;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p2, "object":Ltf;, "TT;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    check-cast p1, Ltf;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/ItemAdapter;->add(Ltf;)Z

    move-result v0

    return v0
.end method

.method public add(Ltf;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p1, "object":Ltf;, "TT;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 106
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 112
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 113
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 119
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 120
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 131
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/ItemAdapter;->get(I)Ltf;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ltf;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltf;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mLayoutId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/ItemAdapter;->getItem(I)Ltf;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ltf;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltf;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getObservable()Lazh;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mObservable:Lazh;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 146
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 156
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/ItemAdapter;->remove(I)Ltf;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ltf;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltf;

    .line 172
    .local v0, "t":Ltf;, "TT;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 173
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 178
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 180
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 186
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 187
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 193
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 194
    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    check-cast p2, Ltf;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/ui/ItemAdapter;->set(ILtf;)Ltf;

    move-result-object v0

    return-object v0
.end method

.method public set(ILtf;)Ltf;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p2, "object":Ltf;, "TT;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltf;

    .line 200
    .local v0, "t":Ltf;, "TT;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/ItemAdapter;->notifyDataSetChanged()V

    .line 201
    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setObservable(Lazh;)V
    .locals 0
    .param p1, "observable"    # Lazh;

    .prologue
    .line 79
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mObservable:Lazh;

    .line 80
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 228
    .local p0, "this":Lcom/iflytek/viafly/ui/ItemAdapter;, "Lcom/iflytek/viafly/ui/ItemAdapter<TT;>;"
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
