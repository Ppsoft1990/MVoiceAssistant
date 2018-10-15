.class Latd;
.super Latf;
.source "EmptyPushDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latf",
        "<",
        "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Latf;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
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
    .line 50
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    .local p2, "lifetimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public b(Ljava/lang/String;)J
    .locals 2
    .param p1, "noticeID"    # Ljava/lang/String;

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)J
    .locals 2
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
    .line 66
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    .local p2, "lifetimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public c(Ljava/lang/String;)J
    .locals 2
    .param p1, "noticeID"    # Ljava/lang/String;

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public synthetic d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Latd;->e(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 1
    .param p1, "noticeID"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;-><init>()V

    return-object v0
.end method
