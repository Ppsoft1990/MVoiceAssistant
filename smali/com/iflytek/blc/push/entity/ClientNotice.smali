.class public Lcom/iflytek/blc/push/entity/ClientNotice;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/iflytek/blc/orm/annotation/Table;
    name = "t_clientnotice"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        length = 0x14
        name = "msgId"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "displayCount"
        type = "INTEGER"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "closeFlag"
        type = "INTEGER"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "receiveTime"
        type = "INTEGER"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "readFlag"
        type = "INTEGER"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "localPicUri"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "reservedData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->b:I

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/blc/push/entity/NoticeItem;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->b:I

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->e:I

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getDisplayCount()I

    move-result v0

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->b:I

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getCloseFlag()I

    move-result v0

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->c:I

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getReceiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->d:J

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getReadFlag()I

    move-result v0

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->e:I

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getLocalPicUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getReservedData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->b:I

    iput v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->e:I

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->a:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->b:I

    iput p3, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->c:I

    iput-wide p4, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->d:J

    iput p6, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->e:I

    iput-object p7, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCloseFlag()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->c:I

    return v0
.end method

.method public getDisplayCount()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->b:I

    return v0
.end method

.method public getLocalPicUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getReadFlag()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->e:I

    return v0
.end method

.method public getReceiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->d:J

    return-wide v0
.end method

.method public getReservedData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setCloseFlag(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->c:I

    return-void
.end method

.method public setDisplayCount(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->b:I

    return-void
.end method

.method public setLocalPicUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->f:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->a:Ljava/lang/String;

    return-void
.end method

.method public setReadFlag(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->e:I

    return-void
.end method

.method public setReceiveTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->d:J

    return-void
.end method

.method public setReservedData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/ClientNotice;->g:Ljava/lang/String;

    return-void
.end method
