.class public Lvb;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public static a()J
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static a(J)Z
    .locals 8
    .param p0, "dateTimeMillis"    # J

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 27
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 28
    .local v2, "currentTime":J
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    sub-long v4, p0, v2

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 35
    :cond_0
    return v1
.end method

.method public static a(Luw;)Z
    .locals 1
    .param p0, "allowTime"    # Luw;

    .prologue
    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Luw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 39
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/DateFormat;->toString(Ljava/sql/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
