.class public Lcom/migu/uem/statistics/page/bean/Node;
.super Ljava/lang/Object;


# instance fields
.field private curPage:Lcom/migu/uem/statistics/page/bean/Page;

.field private index:I

.field private mFragmentStts:Lcom/migu/uem/statistics/page/a;

.field private nextPage:Lcom/migu/uem/statistics/page/bean/Node;

.field private prePage:Lcom/migu/uem/statistics/page/bean/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/migu/uem/statistics/page/a;

    invoke-direct {v0}, Lcom/migu/uem/statistics/page/a;-><init>()V

    iput-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->mFragmentStts:Lcom/migu/uem/statistics/page/a;

    return-void
.end method


# virtual methods
.method public getCurPage()Lcom/migu/uem/statistics/page/bean/Page;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->curPage:Lcom/migu/uem/statistics/page/bean/Page;

    return-object v0
.end method

.method public getFragmentPageList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->mFragmentStts:Lcom/migu/uem/statistics/page/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->mFragmentStts:Lcom/migu/uem/statistics/page/a;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/a;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFragmentStts()Lcom/migu/uem/statistics/page/a;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->mFragmentStts:Lcom/migu/uem/statistics/page/a;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->index:I

    return v0
.end method

.method public getNextPage()Lcom/migu/uem/statistics/page/bean/Node;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->nextPage:Lcom/migu/uem/statistics/page/bean/Node;

    return-object v0
.end method

.method public getPrePage()Lcom/migu/uem/statistics/page/bean/Node;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->prePage:Lcom/migu/uem/statistics/page/bean/Node;

    return-object v0
.end method

.method public hasNex()Z
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->nextPage:Lcom/migu/uem/statistics/page/bean/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPre()Z
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->prePage:Lcom/migu/uem/statistics/page/bean/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFragmentPage()Z
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->mFragmentStts:Lcom/migu/uem/statistics/page/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/statistics/page/bean/Node;->mFragmentStts:Lcom/migu/uem/statistics/page/a;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/a;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public setCurPage(Lcom/migu/uem/statistics/page/bean/Page;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/statistics/page/bean/Node;->curPage:Lcom/migu/uem/statistics/page/bean/Page;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/migu/uem/statistics/page/bean/Node;->index:I

    return-void
.end method

.method public setNextPage(Lcom/migu/uem/statistics/page/bean/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/statistics/page/bean/Node;->nextPage:Lcom/migu/uem/statistics/page/bean/Node;

    return-void
.end method

.method public setPrePage(Lcom/migu/uem/statistics/page/bean/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/statistics/page/bean/Node;->prePage:Lcom/migu/uem/statistics/page/bean/Node;

    return-void
.end method
