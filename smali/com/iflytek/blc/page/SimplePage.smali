.class public Lcom/iflytek/blc/page/SimplePage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/page/Paginable;


# static fields
.field public static final DEF_COUNT:I = 0x14


# instance fields
.field protected pageNo:I

.field protected pageSize:I

.field protected totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/blc/page/SimplePage;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    iput v2, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    iput v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    if-gtz p3, :cond_1

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    :goto_0
    if-nez p2, :cond_2

    iput v2, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    :goto_1
    if-gtz p1, :cond_4

    iput v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    :goto_2
    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    :cond_0
    return-void

    :cond_1
    iput p3, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const v0, 0x7fffffff

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    goto :goto_1

    :cond_3
    iput p2, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    goto :goto_1

    :cond_4
    iput p1, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    goto :goto_2
.end method


# virtual methods
.method public adjustPage()V
    .locals 2

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    :cond_0
    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    if-gtz v0, :cond_1

    const/16 v0, 0x14

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    :cond_1
    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    :cond_2
    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    :cond_3
    return-void
.end method

.method public getNextPage()I
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/blc/page/SimplePage;->isLastPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPageNo()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    return v0
.end method

.method public getPrePage()I
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/blc/page/SimplePage;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 3

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    iget v2, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public isFirstPage()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastPage()Z
    .locals 2

    iget v0, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    invoke-virtual {p0}, Lcom/iflytek/blc/page/SimplePage;->getTotalPage()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageNo(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/page/SimplePage;->pageNo:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/page/SimplePage;->pageSize:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/page/SimplePage;->totalCount:I

    return-void
.end method
