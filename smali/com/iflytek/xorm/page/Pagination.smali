.class public Lcom/iflytek/xorm/page/Pagination;
.super Lbbz;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbz;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbbz;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbbz;-><init>(III)V

    iput-object p4, p0, Lcom/iflytek/xorm/page/Pagination;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFirstResult()I
    .locals 2

    iget v0, p0, Lcom/iflytek/xorm/page/Pagination;->pageNo:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iflytek/xorm/page/Pagination;->pageSize:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/xorm/page/Pagination;->a:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/xorm/page/Pagination;->a:Ljava/util/List;

    return-void
.end method
