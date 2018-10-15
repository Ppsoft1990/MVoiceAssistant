.class Latb;
.super Ljava/lang/Object;
.source "BlcNoticeOperationImpl.java"

# interfaces
.implements Late;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Late",
        "<",
        "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lys;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lyw;->a()Lyw;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lyw;->c()Lys;

    move-result-object v0

    iput-object v0, p0, Latb;->a:Lys;

    .line 34
    iput-object p1, p0, Latb;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private a(Lcom/iflytek/viafly/push/data/entities/MsgLifetime;)Lcom/iflytek/viafly/blcpush/NoticeStatus;
    .locals 2
    .param p1, "lifetime"    # Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    .prologue
    .line 119
    if-nez p1, :cond_1

    .line 120
    const/4 v0, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    const/4 v0, 0x0

    .line 124
    .local v0, "status":Lcom/iflytek/viafly/blcpush/NoticeStatus;
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->UnEffective:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    if-ne p1, v1, :cond_2

    .line 125
    sget-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->UNEFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    goto :goto_0

    .line 126
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    if-ne p1, v1, :cond_3

    .line 127
    sget-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->EFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    goto :goto_0

    .line 128
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->Dated:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    if-ne p1, v1, :cond_0

    .line 129
    sget-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->DATED:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 115
    :cond_1
    return-object v1

    .line 111
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 113
    .local v0, "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-virtual {v0}, Lcom/iflytek/viafly/push/data/entities/MessageType;->value()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
    .locals 2
    .param p1, "notice"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Lanm;

    iget-object v1, p0, Latb;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanm;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "operation":Lano;
    const-string/jumbo v1, "picurl"

    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lano;->a(Ljava/lang/String;)J

    .line 173
    const-string/jumbo v1, "downurl"

    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lano;->a(Ljava/lang/String;)J

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MsgLifetime;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "lifetimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 148
    :cond_1
    return-object v0

    .line 140
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    .line 142
    .local v2, "type":Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    invoke-direct {p0, v2}, Latb;->a(Lcom/iflytek/viafly/push/data/entities/MsgLifetime;)Lcom/iflytek/viafly/blcpush/NoticeStatus;

    move-result-object v1

    .line 143
    .local v1, "status":Lcom/iflytek/viafly/blcpush/NoticeStatus;
    if-eqz v1, :cond_3

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 1
    .param p1, "noticeID"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Latb;->a:Lys;

    invoke-interface {v0, p1}, Lys;->a(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MsgLifetime;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    .local p2, "lifetimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    invoke-direct {p0, p1}, Latb;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Latb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    iget-object v0, p0, Latb;->a:Lys;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget-object v5, Lcom/iflytek/viafly/blcpush/OrderbyType;->ReceiveTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    invoke-interface/range {v0 .. v5}, Lys;->a(Ljava/util/List;Ljava/util/List;IILcom/iflytek/viafly/blcpush/OrderbyType;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v6

    .line 97
    .local v6, "result":Lcom/iflytek/xorm/page/Pagination;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/iflytek/xorm/page/Pagination;->getTotalCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v6}, Lcom/iflytek/xorm/page/Pagination;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public b(Ljava/lang/String;)J
    .locals 4
    .param p1, "noticeID"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Latb;->a:Lys;

    invoke-interface {v1, p1}, Lys;->a(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-result-object v0

    .line 180
    .local v0, "notice":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    invoke-direct {p0, v0}, Latb;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    .line 183
    iget-object v1, p0, Latb;->a:Lys;

    invoke-interface {v1, p1}, Lys;->c(Ljava/lang/String;)V

    .line 184
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public b(Ljava/util/List;Ljava/util/List;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MsgLifetime;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    .local p2, "lifetimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    const-wide/16 v10, 0x0

    .line 190
    invoke-direct {p0, p1}, Latb;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Latb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 194
    .local v2, "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    iget-object v0, p0, Latb;->a:Lys;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget-object v5, Lcom/iflytek/viafly/blcpush/OrderbyType;->ReceiveTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    invoke-interface/range {v0 .. v5}, Lys;->a(Ljava/util/List;Ljava/util/List;IILcom/iflytek/viafly/blcpush/OrderbyType;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v8

    .line 196
    .local v8, "result":Lcom/iflytek/xorm/page/Pagination;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/iflytek/xorm/page/Pagination;->getTotalCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-wide v10

    .line 200
    :cond_1
    invoke-virtual {v8}, Lcom/iflytek/xorm/page/Pagination;->getList()Ljava/util/List;

    move-result-object v6

    .line 201
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 202
    .local v7, "notice":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    invoke-direct {p0, v7}, Latb;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    goto :goto_1

    .line 206
    .end local v7    # "notice":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_2
    iget-object v0, p0, Latb;->a:Lys;

    invoke-interface {v0, v1, v2}, Lys;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 10

    .prologue
    .line 48
    const-string/jumbo v6, "BlcNoticeOperationImpl"

    const-string/jumbo v7, "clearDatedNotices()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Latb;->c()Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "allNotices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 54
    .local v1, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v4

    .line 58
    .local v4, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    .local v2, "currentTime":J
    cmp-long v7, v4, v2

    if-gez v7, :cond_2

    .line 60
    iget-object v7, p0, Latb;->a:Lys;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lys;->c(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v7, "BlcNoticeOperationImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clearDatedNotices() clear item = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)J
    .locals 2
    .param p1, "noticeID"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Latb;->a:Lys;

    invoke-interface {v0, p1}, Lys;->b(Ljava/lang/String;)V

    .line 228
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Latb;->a:Lys;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget-object v4, Lcom/iflytek/viafly/blcpush/OrderbyType;->ReceiveTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    invoke-interface {v1, v2, v3, v4}, Lys;->a(IILcom/iflytek/viafly/blcpush/OrderbyType;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v0

    .line 156
    .local v0, "result":Lcom/iflytek/xorm/page/Pagination;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/xorm/page/Pagination;->getTotalCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/xorm/page/Pagination;->getList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public synthetic d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Latb;->a(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-result-object v0

    return-object v0
.end method
