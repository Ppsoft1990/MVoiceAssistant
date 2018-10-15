.class public Lyt;
.super Ljava/lang/Object;
.source "NoticeResultManagerImpl.java"

# interfaces
.implements Lys;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lzc;


# direct methods
.method public constructor <init>(Lzc;)V
    .locals 1
    .param p1, "noticeItemDao"    # Lzc;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "NoticeResultManagerImpl"

    iput-object v0, p0, Lyt;->a:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lyt;->b:Lzc;

    .line 20
    return-void
.end method

.method private a(Lcom/iflytek/viafly/blcpush/OrderbyType;)[Lcom/iflytek/xorm/page/OrderBy;
    .locals 4
    .param p1, "orderbyType"    # Lcom/iflytek/viafly/blcpush/OrderbyType;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, "orderby":Lcom/iflytek/xorm/page/OrderBy;
    sget-object v2, Lyt$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/OrderbyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 69
    const-string/jumbo v2, "receiveTime"

    invoke-static {v2}, Lcom/iflytek/xorm/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 73
    :goto_1
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/iflytek/xorm/page/OrderBy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 74
    .local v0, "orderBys":[Lcom/iflytek/xorm/page/OrderBy;
    goto :goto_0

    .line 50
    .end local v0    # "orderBys":[Lcom/iflytek/xorm/page/OrderBy;
    :pswitch_0
    const-string/jumbo v2, "receiveTime"

    invoke-static {v2}, Lcom/iflytek/xorm/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 51
    goto :goto_1

    .line 53
    :pswitch_1
    const-string/jumbo v2, "receiveTime"

    invoke-static {v2}, Lcom/iflytek/xorm/page/OrderBy;->desc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 54
    goto :goto_1

    .line 56
    :pswitch_2
    const-string/jumbo v2, "startTime"

    invoke-static {v2}, Lcom/iflytek/xorm/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 57
    goto :goto_1

    .line 59
    :pswitch_3
    const-string/jumbo v2, "startTime"

    invoke-static {v2}, Lcom/iflytek/xorm/page/OrderBy;->desc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 60
    goto :goto_1

    .line 62
    :pswitch_4
    const-string/jumbo v2, "endTime"

    invoke-static {v2}, Lcom/iflytek/xorm/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 63
    goto :goto_1

    .line 65
    :pswitch_5
    const-string/jumbo v2, "endTime"

    invoke-static {v2}, Lcom/iflytek/xorm/page/OrderBy;->desc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 66
    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get () | msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lyt;->b:Lzc;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lyt;->b:Lzc;

    invoke-interface {v0, p1}, Lzc;->b(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IILcom/iflytek/viafly/blcpush/OrderbyType;)Lcom/iflytek/xorm/page/Pagination;
    .locals 2
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I
    .param p3, "orderbyType"    # Lcom/iflytek/viafly/blcpush/OrderbyType;

    .prologue
    .line 80
    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "getAllNotices()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lyt;->b:Lzc;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lyt;->b:Lzc;

    .line 86
    invoke-direct {p0, p3}, Lyt;->a(Lcom/iflytek/viafly/blcpush/OrderbyType;)[Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v1

    .line 85
    invoke-interface {v0, p1, p2, v1}, Lzc;->a(II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;IILcom/iflytek/viafly/blcpush/OrderbyType;)Lcom/iflytek/xorm/page/Pagination;
    .locals 6
    .param p3, "pageNo"    # I
    .param p4, "pageSize"    # I
    .param p5, "orderbyType"    # Lcom/iflytek/viafly/blcpush/OrderbyType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;II",
            "Lcom/iflytek/viafly/blcpush/OrderbyType;",
            ")",
            "Lcom/iflytek/xorm/page/Pagination;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "statuses":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "getNotices()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lyt;->b:Lzc;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/iflytek/xorm/page/Pagination;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p3, p4, v1, v2}, Lcom/iflytek/xorm/page/Pagination;-><init>(IIILjava/util/List;)V

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lyt;->b:Lzc;

    invoke-direct {p0, p5}, Lyt;->a(Lcom/iflytek/viafly/blcpush/OrderbyType;)[Lcom/iflytek/xorm/page/OrderBy;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lzc;->a(Ljava/util/List;Ljava/util/List;II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "statuses":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "delete()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lyt;->b:Lzc;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lyt;->b:Lzc;

    invoke-interface {v0, p1, p2}, Lzc;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNoticeHasRead() | + msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lyt;->b:Lzc;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lyt;->b:Lzc;

    invoke-interface {v0, p1}, Lzc;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete () | msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lyt;->b:Lzc;

    if-nez v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lyt;->b:Lzc;

    invoke-interface {v0, p1}, Lzc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
