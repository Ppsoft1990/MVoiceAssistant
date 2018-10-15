.class public Latj;
.super Ljava/lang/Object;
.source "PushResultHandlerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latg;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noticeType"    # Lcom/iflytek/viafly/push/data/entities/MessageType;

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Lath;

    invoke-direct {v0, p0}, Lath;-><init>(Landroid/content/Context;)V

    .line 33
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    if-ne v0, p1, :cond_1

    .line 29
    new-instance v0, Lasy;

    invoke-direct {v0, p0}, Lasy;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->silentNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    if-ne v0, p1, :cond_2

    .line 31
    new-instance v0, Lata;

    invoke-direct {v0, p0}, Lata;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Lath;

    invoke-direct {v0, p0}, Lath;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
