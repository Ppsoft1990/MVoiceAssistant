.class public abstract Lcom/iflytek/viafly/settings/ui/ItemAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/iflytek/viafly/settings/ui/Item;",
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

.field private mObservable:Lcom/iflytek/viafly/settings/ui/DataObservable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mLayoutId:I

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILcom/iflytek/viafly/settings/ui/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/iflytek/viafly/settings/ui/Item;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->add(ILcom/iflytek/viafly/settings/ui/Item;)V

    return-void
.end method

.method public add(Lcom/iflytek/viafly/settings/ui/Item;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/iflytek/viafly/settings/ui/Item;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->add(Lcom/iflytek/viafly/settings/ui/Item;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Lcom/iflytek/viafly/settings/ui/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/Item;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->get(I)Lcom/iflytek/viafly/settings/ui/Item;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mLayoutId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/iflytek/viafly/settings/ui/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/Item;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->getItem(I)Lcom/iflytek/viafly/settings/ui/Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getObservable()Lcom/iflytek/viafly/settings/ui/DataObservable;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mObservable:Lcom/iflytek/viafly/settings/ui/DataObservable;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/iflytek/viafly/settings/ui/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/Item;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->remove(I)Lcom/iflytek/viafly/settings/ui/Item;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public set(ILcom/iflytek/viafly/settings/ui/Item;)Lcom/iflytek/viafly/settings/ui/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/Item;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->notifyDataSetChanged()V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/iflytek/viafly/settings/ui/Item;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->set(ILcom/iflytek/viafly/settings/ui/Item;)Lcom/iflytek/viafly/settings/ui/Item;

    move-result-object v0

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

    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method public setObservable(Lcom/iflytek/viafly/settings/ui/DataObservable;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mObservable:Lcom/iflytek/viafly/settings/ui/DataObservable;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
