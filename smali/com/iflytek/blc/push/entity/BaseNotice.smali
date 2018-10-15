.class public Lcom/iflytek/blc/push/entity/BaseNotice;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/iflytek/blc/orm/annotation/Table;
    name = "t_basenotice"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        length = 0x14
        name = "msgId"
    .end annotation

    .annotation runtime Lcom/iflytek/blc/orm/annotation/Id;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        length = 0x14
        name = "typeId"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        length = 0x14
        name = "actionId"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "title"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "content"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "startTime"
        type = "INTEGER"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "endTime"
        type = "INTEGER"
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "extraInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->f:J

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->g:J

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/blc/push/entity/NoticeItem;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->f:J

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->g:J

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getActionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->f:J

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->g:J

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/push/entity/BaseNotice;->setExtraInfo(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->f:J

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->g:J

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->f:J

    iput-wide p8, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->g:J

    invoke-virtual {p0, p10}, Lcom/iflytek/blc/push/entity/BaseNotice;->setExtraInfo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->g:J

    return-wide v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->f:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->c:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->e:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->g:J

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->i:Ljava/lang/String;

    return-void
.end method

.method public setExtraMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->h:Ljava/util/Map;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->a:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->f:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->d:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BaseNotice;->b:Ljava/lang/String;

    return-void
.end method
