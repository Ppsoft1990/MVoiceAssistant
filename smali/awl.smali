.class public Lawl;
.super Ljava/lang/Object;
.source "HotScheduleHelper.java"


# direct methods
.method public static a()V
    .locals 3

    .prologue
    .line 12
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_CREATE_PUSH_SCHEDULE_TIMES"

    invoke-static {}, Lawl;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 13
    return-void
.end method

.method public static b()I
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_CREATE_PUSH_SCHEDULE_TIMES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
