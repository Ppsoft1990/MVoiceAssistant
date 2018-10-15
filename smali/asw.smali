.class public Lasw;
.super Ljava/lang/Object;
.source "PushManager.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v1

    invoke-virtual {v1}, Latf;->a()V

    .line 27
    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MessageType;->values()[Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/push/data/entities/MessageType;->toList([Lcom/iflytek/viafly/push/data/entities/MessageType;)Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->silentNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    invoke-static {p0}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Latf;->b(Ljava/util/List;Ljava/util/List;)J

    .line 32
    invoke-static {p0}, Latn;->a(Landroid/content/Context;)Latm;

    move-result-object v1

    invoke-virtual {v1}, Latm;->b()V

    .line 33
    invoke-static {p0}, Latq;->a(Landroid/content/Context;)Latq;

    move-result-object v1

    invoke-virtual {v1}, Latq;->a()V

    .line 35
    const-string/jumbo v1, "PushManager"

    const-string/jumbo v2, "PushManager init()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method
