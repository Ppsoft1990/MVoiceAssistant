.class public Lauo;
.super Ljava/lang/Object;
.source "ScheduleTest.java"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lauo;->a()J

    move-result-wide v0

    sput-wide v0, Lauo;->a:J

    return-void
.end method

.method public static a()J
    .locals 6

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 117
    .local v2, "old":J
    const/16 v1, 0xc

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    return-wide v4
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string/jumbo v0, "ScheduleTest"

    const-string/jumbo v1, "createScheduleSet()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p0}, Lhj;->c(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lhj;->b(Landroid/content/Context;)V

    .line 25
    invoke-static {p0}, Lhj;->a(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handleType"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .param p2, "scheduleItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v5, 0x0

    .line 94
    const-string/jumbo v3, "ScheduleTest"

    const-string/jumbo v4, "handleTriggerAlert()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 96
    .local v1, "now":Ljava/util/Calendar;
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 97
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, ""

    .line 101
    .local v2, "tag":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8fc7\u671f\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>>>> \u5ef6\u8fdf <<<<<\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
