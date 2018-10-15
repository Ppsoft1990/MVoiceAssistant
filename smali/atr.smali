.class Latr;
.super Latu;
.source "NoPushShowHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Latu;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)I
    .locals 1
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/util/List;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method protected a(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 0
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 27
    return-void
.end method

.method protected a(Lcom/iflytek/common/notice/NotificationParam;I)V
    .locals 0
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "btnResId"    # I

    .prologue
    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "needShowNoticeId"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;
    .locals 1
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 49
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected b(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 0
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 31
    return-void
.end method

.method protected c(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;
    .locals 1
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 44
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public d(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
    .locals 0
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 35
    return-void
.end method
