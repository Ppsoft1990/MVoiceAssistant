.class public Lcom/iflytek/blc/page/SimpleOrderable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/page/Orderable;


# instance fields
.field private a:[Lcom/iflytek/blc/page/OrderBy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderBys()[Lcom/iflytek/blc/page/OrderBy;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/page/SimpleOrderable;->a:[Lcom/iflytek/blc/page/OrderBy;

    return-object v0
.end method

.method public setOrderBys([Lcom/iflytek/blc/page/OrderBy;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/page/SimpleOrderable;->a:[Lcom/iflytek/blc/page/OrderBy;

    return-void
.end method
