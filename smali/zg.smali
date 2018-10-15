.class public Lzg;
.super Ljava/lang/Object;
.source "BaseNotice.java"


# annotations
.annotation runtime Lbbw;
    a = "t_basenotice"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "msgId"
        c = 0x14
    .end annotation

    .annotation runtime Lbbv;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "typeId"
        c = 0x14
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "actionId"
        c = 0x14
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "title"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "content"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lbbu;
        a = "startTime"
        b = "INTEGER"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lbbu;
        a = "endTime"
        b = "INTEGER"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "extraInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v0, p0, Lzg;->f:J

    .line 35
    iput-wide v0, p0, Lzg;->g:J

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v0, p0, Lzg;->f:J

    .line 35
    iput-wide v0, p0, Lzg;->g:J

    .line 67
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzg;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzg;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getActionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzg;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzg;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzg;->e:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lzg;->f:J

    .line 73
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lzg;->g:J

    .line 76
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzg;->a(Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lzg;->h:Ljava/lang/String;

    .line 149
    return-void
.end method
