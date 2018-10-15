.class final Lawn$1;
.super Ljava/lang/Object;
.source "PushScheduleDataManager.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawn;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lawn;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawn;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 57
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawn;->a(Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "oldSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "newSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawn;->a(Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;)V

    goto :goto_0
.end method
