.class public Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.super Ljava/lang/Object;
.source "Schedule.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ltf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/entities/Schedule$TriggerType;,
        Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;,
        Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;,
        Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;
    }
.end annotation


# static fields
.field private static DATE_FORMAT_PATTERN:Ljava/lang/String; = null

.field public static DEFAULT_WEATHER_PUSH_SCHEDULE_ID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Schedule"

.field private static final serialVersionUID:J = 0x1403d188bd5253bcL


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAitalkContentLose:Z

.field private mAlarmNewsFlag:I

.field private mAutoDelayFlag:I

.field private mBusiness:Ljava/lang/String;

.field private mCompletedFlag:I

.field private mContent:Ljava/lang/String;

.field private mDateRawtext:Ljava/lang/String;

.field private mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

.field private mDelaySetting:I

.field private mDelayTime:J

.field private mExtendJsonStr:Ljava/lang/String;

.field private mForwardTime:J

.field private mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

.field private mId:I

.field private mOpenFlag:I

.field private mPersonalRingtoneId:I

.field private mRawtext:Ljava/lang/String;

.field private mRingFlag:I

.field private mRingPath:Ljava/lang/String;

.field private mRingType:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field private mScheduleType:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

.field private mShakeFlag:I

.field private mTimeStamp:J

.field private mTitle:Ljava/lang/String;

.field private mTriggerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "10250"

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->DEFAULT_WEATHER_PUSH_SCHEDULE_ID:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->DATE_FORMAT_PATTERN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAitalkContentLose:Z

    .line 73
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelaySetting:I

    .line 231
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTimeStamp:J

    .line 234
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRawtext:Ljava/lang/String;

    .line 235
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mContent:Ljava/lang/String;

    .line 236
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateRawtext:Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 238
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    .line 239
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTitle:Ljava/lang/String;

    .line 240
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    .line 241
    iput v5, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mOpenFlag:I

    .line 242
    iput v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mCompletedFlag:I

    .line 243
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mForwardTime:J

    .line 244
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelayTime:J

    .line 245
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingFlag:I

    .line 247
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingType:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 248
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAction:Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mBusiness:Ljava/lang/String;

    .line 251
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mScheduleType:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 253
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mPersonalRingtoneId:I

    .line 254
    iput v5, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAlarmNewsFlag:I

    .line 256
    iput v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mShakeFlag:I

    .line 257
    iput v5, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAutoDelayFlag:I

    .line 260
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 40
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-static/range {p0 .. p0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 782
    const/16 v28, 0x0

    .line 877
    :goto_0
    return-object v28

    .line 784
    :cond_0
    const/16 v28, 0x0

    .line 786
    .local v28, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 787
    .local v21, "json":Lorg/json/JSONObject;
    new-instance v29, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct/range {v29 .. v29}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v28    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .local v29, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_1
    const-string/jumbo v38, "mId"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    .line 789
    .local v20, "id":I
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setId(I)V

    .line 791
    const-string/jumbo v38, "mTimeStamp"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 792
    .local v34, "timeStamp":J
    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTimeStamp(J)V

    .line 794
    const-string/jumbo v38, "mRawtext"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 795
    .local v24, "rawtext":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRawtext(Ljava/lang/String;)V

    .line 797
    const-string/jumbo v38, "mContent"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 798
    .local v10, "content":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 800
    const-string/jumbo v38, "mDateRawtext"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 801
    .local v11, "dateRawtext":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateRawtext(Ljava/lang/String;)V

    .line 803
    const-string/jumbo v38, "mDateTimeInfor"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 804
    .local v32, "strDateTimeInfor":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_1

    .line 805
    invoke-static/range {v32 .. v32}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->read(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 808
    :cond_1
    const-string/jumbo v38, "mTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 809
    .local v33, "title":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v38, "mTriggerTime"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 812
    .local v36, "triggerTime":J
    move-object/from16 v0, v29

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 814
    const-string/jumbo v38, "mOpenFlag"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    .line 815
    .local v22, "openFlag":I
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlagValue(I)V

    .line 817
    const-string/jumbo v38, "mCompletedFlag"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 818
    .local v9, "completedFlag":I
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlagValue(I)V

    .line 820
    const-string/jumbo v38, "mForwardTime"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 821
    .local v18, "forwardTime":J
    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setForwardTime(J)V

    .line 823
    const-string/jumbo v38, "mDelayTime"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 824
    .local v14, "delayTime":J
    move-object/from16 v0, v29

    invoke-virtual {v0, v14, v15}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 826
    const-string/jumbo v38, "mRingFlag"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v25

    .line 827
    .local v25, "ringFlag":I
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingFlagValue(I)V

    .line 829
    const-string/jumbo v38, "mRingPath"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 830
    .local v26, "ringPath":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 832
    const-string/jumbo v38, "mRingType"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v27

    .line 833
    .local v27, "ringType":I
    if-ltz v27, :cond_2

    invoke-static {}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v38

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 834
    invoke-static {}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v38

    aget-object v38, v38, v27

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 837
    :cond_2
    const-string/jumbo v38, "mAction"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "action":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAction(Ljava/lang/String;)V

    .line 840
    const-string/jumbo v38, "mBusiness"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 841
    .local v8, "business":Ljava/lang/String;
    invoke-static {v8}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 843
    const-string/jumbo v38, "mAitalkContentLose"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 844
    .local v5, "aitalkContentLose":Z
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAitalkContentLose(Z)V

    .line 846
    const-string/jumbo v38, "mFrom"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 847
    .local v17, "from":I
    if-ltz v17, :cond_3

    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->values()[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v38

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    .line 848
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->values()[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v38

    aget-object v38, v38, v17

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 851
    :cond_3
    const-string/jumbo v38, "mExtendJsonStr"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 852
    .local v16, "extendJsonStr":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setExtendJsonStr(Ljava/lang/String;)V

    .line 854
    const-string/jumbo v38, "mPersonalRingtoneId"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    .line 855
    .local v23, "personalRingtoneId":I
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setPersonalRingtoneId(I)V

    .line 857
    const-string/jumbo v38, "mAlarmNewsFlag"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 858
    .local v6, "alarmNewsFlag":I
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAlarmNewsFlag(I)V

    .line 860
    const-string/jumbo v38, "mShakeFlag"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v31

    .line 861
    .local v31, "shakeFlag":I
    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setShakeFlag(I)V

    .line 863
    const-string/jumbo v38, "mAutoDelayFlag"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 864
    .local v7, "autoDelayFlag":I
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    .line 866
    const-string/jumbo v38, "mDelaySetting"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 867
    .local v12, "delaySetting":I
    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    .line 869
    const-string/jumbo v38, "mScheduleType"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    .line 870
    .local v30, "scheduleType":I
    if-ltz v30, :cond_4

    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->values()[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v38

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v30

    move/from16 v1, v38

    if-ge v0, v1, :cond_4

    .line 871
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->values()[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v38

    aget-object v38, v38, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object/from16 v28, v29

    .line 875
    .end local v29    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v28    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    goto/16 :goto_0

    .line 873
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "aitalkContentLose":Z
    .end local v6    # "alarmNewsFlag":I
    .end local v7    # "autoDelayFlag":I
    .end local v8    # "business":Ljava/lang/String;
    .end local v9    # "completedFlag":I
    .end local v10    # "content":Ljava/lang/String;
    .end local v11    # "dateRawtext":Ljava/lang/String;
    .end local v12    # "delaySetting":I
    .end local v14    # "delayTime":J
    .end local v16    # "extendJsonStr":Ljava/lang/String;
    .end local v17    # "from":I
    .end local v18    # "forwardTime":J
    .end local v20    # "id":I
    .end local v21    # "json":Lorg/json/JSONObject;
    .end local v22    # "openFlag":I
    .end local v23    # "personalRingtoneId":I
    .end local v24    # "rawtext":Ljava/lang/String;
    .end local v25    # "ringFlag":I
    .end local v26    # "ringPath":Ljava/lang/String;
    .end local v27    # "ringType":I
    .end local v30    # "scheduleType":I
    .end local v31    # "shakeFlag":I
    .end local v32    # "strDateTimeInfor":Ljava/lang/String;
    .end local v33    # "title":Ljava/lang/String;
    .end local v34    # "timeStamp":J
    .end local v36    # "triggerTime":J
    :catch_0
    move-exception v13

    .line 874
    .local v13, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v38, "Schedule"

    const-string/jumbo v39, "toJson | error"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 873
    .end local v13    # "e":Lorg/json/JSONException;
    .end local v28    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v21    # "json":Lorg/json/JSONObject;
    .restart local v29    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :catch_1
    move-exception v13

    move-object/from16 v28, v29

    .end local v29    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v28    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->clone()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 671
    if-ne p0, p1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return v1

    .line 674
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 675
    goto :goto_0

    .line 677
    :cond_2
    instance-of v3, p1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-nez v3, :cond_3

    move v1, v2

    .line 678
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 680
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 681
    .local v0, "other":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 682
    goto :goto_0

    .line 684
    :cond_4
    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    iget-wide v6, v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 685
    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAitalkContentLose()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAitalkContentLose:Z

    return v0
.end method

.method public getAlarmNewsFlag()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAlarmNewsFlag:I

    return v0
.end method

.method public getAutoDelayFlag()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAutoDelayFlag:I

    return v0
.end method

.method public getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .locals 2

    .prologue
    .line 491
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mBusiness:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mBusiness:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 498
    :goto_0
    return-object v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    goto :goto_0
.end method

.method public getCompletedFlagValue()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mCompletedFlag:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string/jumbo v0, ""

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateRawtext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateRawtext:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    return-object v0
.end method

.method public getDelaySetting()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelaySetting:I

    return v0
.end method

.method public getDelayTime()J
    .locals 2

    .prologue
    .line 417
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelayTime:J

    return-wide v0
.end method

.method public getExtendJsonStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardTime()J
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mForwardTime:J

    return-wide v0
.end method

.method public getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    return v0
.end method

.method public getNextTime()J
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getNextTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTimeSince(J)J
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 573
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-static {v0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getNextTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpenFlagValue()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mOpenFlag:I

    return v0
.end method

.method public getPersonalRingtoneId()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mPersonalRingtoneId:I

    return v0
.end method

.method public getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;
    .locals 5
    .param p1, "scheduleExtendField"    # Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .prologue
    .line 588
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 590
    :try_start_0
    new-instance v2, Lorg/json/JSONTokener;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 591
    .local v2, "jsonTokener":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 592
    .local v1, "extendJsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 599
    .end local v1    # "extendJsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonTokener":Lorg/json/JSONTokener;
    :goto_0
    return-object v3

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "Schedule"

    const-string/jumbo v4, "\u6269\u5c55\u5b57\u6bb5json\u5b57\u7b26\u4e32\u89e3\u6790\u51fa\u9519"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getRawtext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRawtext:Ljava/lang/String;

    return-object v0
.end method

.method public getRingFlagValue()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingFlag:I

    return v0
.end method

.method public getRingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingType:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    return-object v0
.end method

.method public getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mScheduleType:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    return-object v0
.end method

.method public getShakeFlag()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mShakeFlag:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTimeStamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTime()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    return-wide v0
.end method

.method public hasNextTime()Z
    .locals 6

    .prologue
    .line 553
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getNextTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;J)J

    move-result-wide v0

    .line 554
    .local v0, "nextTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 662
    const/16 v0, 0x1f

    .line 663
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 664
    .local v1, "result":I
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 665
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    iget-wide v6, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 666
    return v1
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mCompletedFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentUnableEdited()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->isContentUnableEdited()Z

    move-result v0

    .line 705
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotSpeechWhenTrigger()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->isNotSpeechWhenTrigger()Z

    move-result v0

    .line 735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mOpenFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelatedWithGuide()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->isRelatedWithGuide()Z

    move-result v0

    .line 696
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRing()Z
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowPicWhenTrigger()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 720
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->DEFAULT_WEATHER_PUSH_SCHEDULE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    const/4 v0, 0x1

    .line 726
    :cond_0
    return v0
.end method

.method public isSpecialAddDesc()Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->isSpecialAddDesc()Z

    move-result v0

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "actoin"    # Ljava/lang/String;

    .prologue
    .line 482
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAction:Ljava/lang/String;

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAitalkContentLose(Z)V
    .locals 0
    .param p1, "isLose"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAitalkContentLose:Z

    .line 267
    return-void
.end method

.method public setAlarmNewsFlag(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAlarmNewsFlag:I

    .line 370
    return-void
.end method

.method public setAutoDelayFlag(I)V
    .locals 0
    .param p1, "mAutoDelayFlag"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAutoDelayFlag:I

    .line 103
    return-void
.end method

.method public setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V
    .locals 1
    .param p1, "business"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mBusiness:Ljava/lang/String;

    .line 505
    :cond_0
    return-void
.end method

.method public setCompletedFlag(Z)V
    .locals 1
    .param p1, "isCompleted"    # Z

    .prologue
    .line 405
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mCompletedFlag:I

    .line 406
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompletedFlagValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mCompletedFlag:I

    .line 398
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 301
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mContent:Ljava/lang/String;

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDateRawtext(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateRawtext:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V
    .locals 0
    .param p1, "dateTimeInfor"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 322
    return-void
.end method

.method public setDelaySetting(I)V
    .locals 0
    .param p1, "mDelaySetting"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelaySetting:I

    .line 93
    return-void
.end method

.method public setDelayTime(J)V
    .locals 1
    .param p1, "delayTime"    # J

    .prologue
    .line 421
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelayTime:J

    .line 422
    return-void
.end method

.method public setExtendJsonStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "extendJsonStr"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setForwardTime(J)V
    .locals 1
    .param p1, "forwardTime"    # J

    .prologue
    .line 413
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mForwardTime:J

    .line 414
    return-void
.end method

.method public setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V
    .locals 0
    .param p1, "from"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    .line 331
    return-void
.end method

.method public setOpenFlag(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 389
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mOpenFlag:I

    .line 390
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpenFlagValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mOpenFlag:I

    .line 366
    return-void
.end method

.method public setPersonalRingtoneId(I)V
    .locals 0
    .param p1, "personalRingtone"    # I

    .prologue
    .line 581
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mPersonalRingtoneId:I

    .line 582
    return-void
.end method

.method public setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V
    .locals 5
    .param p1, "scheduleExtendField"    # Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 612
    if-nez p1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 617
    :try_start_0
    new-instance v2, Lorg/json/JSONTokener;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 618
    .local v2, "jsonTokener":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 619
    .local v1, "extendJsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    .end local v1    # "extendJsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonTokener":Lorg/json/JSONTokener;
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Schedule"

    const-string/jumbo v4, "\u63d2\u5165\u6269\u5c55\u5b57\u6bb5\u51fa\u9519"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 629
    .restart local v1    # "extendJsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    goto :goto_0

    .line 630
    :catch_1
    move-exception v0

    .line 631
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "Schedule"

    const-string/jumbo v4, "\u63d2\u5165\u6269\u5c55\u5b57\u6bb5\u51fa\u9519"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setRawtext(Ljava/lang/String;)V
    .locals 1
    .param p1, "rawtext"    # Ljava/lang/String;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRawtext:Ljava/lang/String;

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRawtext:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRingFlag(Z)V
    .locals 1
    .param p1, "isRing"    # Z

    .prologue
    .line 437
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingFlag:I

    .line 438
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRingFlagValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingFlag:I

    .line 430
    return-void
.end method

.method public setRingPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 469
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V
    .locals 1
    .param p1, "ringType"    # Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingType:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 446
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, p1, :cond_1

    .line 447
    const-string/jumbo v0, "android_asset://ringtone/notice.mp3"

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v0, p1, :cond_0

    .line 450
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v0, p1, :cond_0

    .line 451
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v0, p1, :cond_0

    .line 453
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, p1, :cond_2

    .line 454
    const-string/jumbo v0, "android_asset://ringtone/news.mp3"

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    goto :goto_0

    .line 455
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v0, p1, :cond_0

    .line 456
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v0, p1, :cond_0

    .line 458
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, p1, :cond_0

    .line 459
    const-string/jumbo v0, "android_asset://ringtone/morning.mp3"

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V
    .locals 0
    .param p1, "mScheduleType"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mScheduleType:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 526
    return-void
.end method

.method public setShakeFlag(I)V
    .locals 0
    .param p1, "mShakeFlag"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mShakeFlag:I

    .line 378
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTimeStamp:J

    .line 279
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 345
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTitle:Ljava/lang/String;

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTriggerTime(J)V
    .locals 1
    .param p1, "triggerTime"    # J

    .prologue
    .line 357
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    .line 358
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 6

    .prologue
    .line 739
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 741
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "mId"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string/jumbo v2, "mTimeStamp"

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTimeStamp:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 743
    const-string/jumbo v2, "mRawtext"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRawtext:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string/jumbo v2, "mContent"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string/jumbo v2, "mDateRawtext"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateRawtext:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string/jumbo v2, "mDateTimeInfor"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->save(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    const-string/jumbo v2, "mTitle"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string/jumbo v2, "mTriggerTime"

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 749
    const-string/jumbo v2, "mOpenFlag"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mOpenFlag:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 750
    const-string/jumbo v2, "mCompletedFlag"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mCompletedFlag:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 751
    const-string/jumbo v2, "mForwardTime"

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mForwardTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 752
    const-string/jumbo v2, "mDelayTime"

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelayTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 753
    const-string/jumbo v2, "mRingFlag"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingFlag:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 754
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingType:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eqz v2, :cond_0

    .line 755
    const-string/jumbo v2, "mRingType"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingType:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 757
    :cond_0
    const-string/jumbo v2, "mRingPath"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string/jumbo v2, "mAction"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    const-string/jumbo v2, "mBusiness"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string/jumbo v2, "mAitalkContentLose"

    iget-boolean v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAitalkContentLose:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 761
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-eqz v2, :cond_1

    .line 762
    const-string/jumbo v2, "mFrom"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mFrom:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 764
    :cond_1
    const-string/jumbo v2, "mExtendJsonStr"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mExtendJsonStr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string/jumbo v2, "mPersonalRingtoneId"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mPersonalRingtoneId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 766
    const-string/jumbo v2, "mAlarmNewsFlag"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAlarmNewsFlag:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 767
    const-string/jumbo v2, "mShakeFlag"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mShakeFlag:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 768
    const-string/jumbo v2, "mAutoDelayFlag"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAutoDelayFlag:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 769
    const-string/jumbo v2, "mDelaySetting"

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDelaySetting:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 770
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mScheduleType:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-eqz v2, :cond_2

    .line 771
    const-string/jumbo v2, "mScheduleType"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mScheduleType:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "Schedule"

    const-string/jumbo v3, "toJson | error"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Schedule [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->DATE_FORMAT_PATTERN:Ljava/lang/String;

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTriggerTime:J

    .line 531
    invoke-static {v1, v2, v3}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRepeatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mDateTimeInfor:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingType:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRingPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRingPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPersonalRingtoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mPersonalRingtoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOpenedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mOpenFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCompletedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mCompletedFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRawtext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mRawtext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
