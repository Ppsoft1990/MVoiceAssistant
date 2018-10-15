.class public Lzk;
.super Ljava/lang/Object;
.source "ClientNotice.java"


# annotations
.annotation runtime Lbbw;
    a = "t_clientnotice"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "msgId"
        c = 0x14
    .end annotation
.end field

.field private b:I
    .annotation runtime Lbbu;
        a = "displayCount"
        b = "INTEGER"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lbbu;
        a = "closeFlag"
        b = "INTEGER"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lbbu;
        a = "receiveTime"
        b = "INTEGER"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lbbu;
        a = "readFlag"
        b = "INTEGER"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "localPicUri"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "reservedData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lzk;->b:I

    .line 24
    iput v0, p0, Lzk;->e:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lzk;->b:I

    .line 24
    iput v0, p0, Lzk;->e:I

    .line 54
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzk;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getDisplayCount()I

    move-result v0

    iput v0, p0, Lzk;->b:I

    .line 56
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getCloseFlag()I

    move-result v0

    iput v0, p0, Lzk;->c:I

    .line 57
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getReceiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lzk;->d:J

    .line 58
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getReadFlag()I

    move-result v0

    iput v0, p0, Lzk;->e:I

    .line 59
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getLocalPicUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzk;->f:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getReservedData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzk;->g:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lzk;->c:I

    return v0
.end method
