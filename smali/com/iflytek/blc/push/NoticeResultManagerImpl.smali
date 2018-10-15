.class public Lcom/iflytek/blc/push/NoticeResultManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/push/NoticeResultManager;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/iflytek/blc/push/dao/NoticeItemDao;


# direct methods
.method public constructor <init>(Lcom/iflytek/blc/push/dao/NoticeItemDao;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NoticeResultManagerImpl"

    iput-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    return-void
.end method

.method private static a(Lcom/iflytek/blc/push/OrderbyType;)[Lcom/iflytek/blc/page/OrderBy;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/blc/push/NoticeResultManagerImpl$1;->a:[I

    invoke-virtual {p0}, Lcom/iflytek/blc/push/OrderbyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "receiveTime"

    invoke-static {v0}, Lcom/iflytek/blc/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/iflytek/blc/page/OrderBy;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "receiveTime"

    invoke-static {v0}, Lcom/iflytek/blc/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "receiveTime"

    invoke-static {v0}, Lcom/iflytek/blc/page/OrderBy;->desc(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "startTime"

    invoke-static {v0}, Lcom/iflytek/blc/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "startTime"

    invoke-static {v0}, Lcom/iflytek/blc/page/OrderBy;->desc(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const-string/jumbo v0, "endTime"

    invoke-static {v0}, Lcom/iflytek/blc/page/OrderBy;->asc(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "endTime"

    invoke-static {v0}, Lcom/iflytek/blc/page/OrderBy;->desc(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy;

    move-result-object v0

    goto :goto_1

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
.method public clearAll()V
    .locals 2

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "clearAll()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->clearAll()V

    goto :goto_0
.end method

.method public clearOutOfDated(Ljava/sql/Timestamp;)V
    .locals 2

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "clearOutOfDated()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->clearOutOfDated(Ljava/sql/Timestamp;)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delete () | msgId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->delete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Ljava/util/List;Ljava/util/List;)V
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
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "delete()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->delete(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/iflytek/blc/push/entity/NoticeItem;
    .locals 3

    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get () | msgId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->getNoticeItem(Ljava/lang/String;)Lcom/iflytek/blc/push/entity/NoticeItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllNotices(IILcom/iflytek/blc/push/OrderbyType;)Lcom/iflytek/blc/page/Pagination;
    .locals 2

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "getAllNotices()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-static {p3}, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->a(Lcom/iflytek/blc/push/OrderbyType;)[Lcom/iflytek/blc/page/OrderBy;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->getAllNotices(II[Lcom/iflytek/blc/page/OrderBy;)Lcom/iflytek/blc/page/Pagination;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotices(Ljava/util/List;Ljava/util/List;IILcom/iflytek/blc/push/OrderbyType;)Lcom/iflytek/blc/page/Pagination;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;II",
            "Lcom/iflytek/blc/push/OrderbyType;",
            ")",
            "Lcom/iflytek/blc/page/Pagination;"
        }
    .end annotation

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "getNotices()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/blc/page/Pagination;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p3, p4, v1, v2}, Lcom/iflytek/blc/page/Pagination;-><init>(IIILjava/util/List;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-static {p5}, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->a(Lcom/iflytek/blc/push/OrderbyType;)[Lcom/iflytek/blc/page/OrderBy;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->getNotices(Ljava/util/List;Ljava/util/List;II[Lcom/iflytek/blc/page/OrderBy;)Lcom/iflytek/blc/page/Pagination;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnReadNoticesCount()J
    .locals 5

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "getUnReadNoticesCount()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->getUnReadNoticeCount()J

    move-result-wide v0

    const-string/jumbo v2, "NoticeResultManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getUnReadNoticesCount() | unRead = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUnReadNoticesCount(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "getUnReadNoticesCount()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->getUnReadNoticesCount(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public reduceDisplayCount(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reduceDisplayCount() | + msgId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->reduceDisplayCount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reduceDisplayCount(Ljava/util/List;Ljava/util/List;)V
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
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "reduceDisplayCount()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->reduceDisplayCount(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public save(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "save()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->save(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setNoticeClosed(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNoticeClosed() | + msgId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->setNoticeClosed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNoticeHasRead(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "NoticeResultManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNoticeHasRead() | + msgId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->setNoticeHasRead(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNoticeHasRead(Ljava/util/List;Ljava/util/List;)V
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
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "setNoticeHasRead()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->setNoticeHasRead(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public setNoticeLocalUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "NoticeResultManagerImpl"

    const-string/jumbo v1, "setNoticeLocalUri()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;->b:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->setNoticeLocalUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
