.class public Latv;
.super Ljava/lang/Object;
.source "PushShowHelperFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/iflytek/viafly/push/data/entities/MessageType;

    .prologue
    .line 16
    sget-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    if-ne v0, p1, :cond_0

    .line 17
    invoke-static {p0}, Lasz;->a(Landroid/content/Context;)Lasz;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Latr;

    invoke-direct {v0, p0}, Latr;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
