.class public Lavl;
.super Ljava/lang/Object;
.source "UuidGenerator.java"


# direct methods
.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I
    .locals 6
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 26
    :goto_0
    return v0

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 25
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 26
    .local v0, "uuid":I
    goto :goto_0
.end method
