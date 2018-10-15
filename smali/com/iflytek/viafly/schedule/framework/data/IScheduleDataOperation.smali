.class public interface abstract Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;
.super Ljava/lang/Object;
.source "IScheduleDataOperation.java"


# virtual methods
.method public abstract cancelAlarm(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end method

.method public abstract completeSchedule(I)V
.end method

.method public abstract deleteSchedule(I)V
.end method

.method public abstract deleteSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)V
.end method

.method public abstract getLatestTrigger()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end method

.method public varargs abstract getLatestTrigger([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end method

.method public abstract getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end method

.method public abstract getSchedule(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end method

.method public abstract getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSchedules(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getSchedules([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHasDatedSchedule()Z
.end method

.method public abstract manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I
.end method

.method public abstract modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end method

.method public abstract speechAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
.end method

.method public abstract switchSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end method

.method public abstract updateLatestSchedule()V
.end method
