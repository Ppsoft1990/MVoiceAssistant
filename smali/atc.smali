.class Latc;
.super Latf;
.source "BlcPushDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latf",
        "<",
        "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Latc;


# instance fields
.field private c:Late;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Late",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lano;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Latf;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lyw;->a()Lyw;

    move-result-object v0

    iget-object v1, p0, Latc;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyw;->a(Landroid/content/Context;)V

    .line 40
    new-instance v0, Latb;

    invoke-direct {v0, p1}, Latb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latc;->c:Late;

    .line 41
    new-instance v0, Lanm;

    iget-object v1, p0, Latc;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latc;->d:Lano;

    .line 42
    const-string/jumbo v0, "BlcPushDataManager"

    const-string/jumbo v1, "BlcPushDataManager init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Latc;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Latc;->b:Latc;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Latc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Latc;-><init>(Landroid/content/Context;)V

    sput-object v0, Latc;->b:Latc;

    .line 34
    :cond_0
    sget-object v0, Latc;->b:Latc;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Latc;->d:Lano;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Latc;->d:Lano;

    invoke-interface {v0, p1}, Lano;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
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
    .line 103
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    .local p2, "lifetimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    iget-object v0, p0, Latc;->c:Late;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Latc;->c:Late;

    invoke-interface {v0, p1, p2}, Late;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Latc;->c:Late;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Latc;->c:Late;

    invoke-interface {v0}, Late;->a()V

    .line 210
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)J
    .locals 2
    .param p1, "NoticeID"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Latc;->c:Late;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Latc;->c:Late;

    invoke-interface {v0, p1}, Late;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
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
    .line 128
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    .local p2, "lifetimes":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    iget-object v0, p0, Latc;->c:Late;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Latc;->c:Late;

    invoke-interface {v0, p1, p2}, Late;->b(Ljava/util/List;Ljava/util/List;)J

    move-result-wide v0

    .line 131
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Latc;->c:Late;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Latc;->c:Late;

    invoke-interface {v0}, Late;->b()V

    .line 82
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)J
    .locals 2
    .param p1, "NoticeID"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Latc;->c:Late;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Latc;->c:Late;

    invoke-interface {v0, p1}, Late;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 164
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public synthetic d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Latc;->e(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 1
    .param p1, "NoticeID"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Latc;->c:Late;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Latc;->c:Late;

    invoke-interface {v0, p1}, Late;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
