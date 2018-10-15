.class Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;
.super Ljava/lang/Object;
.source "HotEventController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmSimpleData"
.end annotation


# instance fields
.field public mAlarmId:Ljava/lang/String;

.field public mHotEventId:Ljava/lang/String;

.field public mStartTime:J

.field public mType:I

.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p2, "alarmType"    # I
    .param p3, "alarmId"    # Ljava/lang/String;
    .param p4, "hotEventId"    # Ljava/lang/String;
    .param p5, "startTime"    # J

    .prologue
    .line 730
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->this$0:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mStartTime:J

    .line 728
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mType:I

    .line 731
    iput p2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mType:I

    .line 732
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mAlarmId:Ljava/lang/String;

    .line 733
    iput-object p4, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mHotEventId:Ljava/lang/String;

    .line 734
    iput-wide p5, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mStartTime:J

    .line 735
    return-void
.end method
