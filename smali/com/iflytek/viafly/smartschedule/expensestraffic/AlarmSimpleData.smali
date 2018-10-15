.class public Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;
.super Ljava/lang/Object;
.source "AlarmSimpleData.java"


# instance fields
.field public mAlarmId:Ljava/lang/String;

.field public mMsgId:Ljava/lang/String;

.field public mStartTime:J

.field public mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "alarmType"    # I
    .param p2, "alarmId"    # Ljava/lang/String;
    .param p3, "trafficId"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mStartTime:J

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mType:I

    .line 11
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mType:I

    .line 12
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mAlarmId:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mMsgId:Ljava/lang/String;

    .line 14
    iput-wide p4, p0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mStartTime:J

    .line 15
    return-void
.end method
