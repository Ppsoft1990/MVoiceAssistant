.class public Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;
.super Ljava/lang/Object;
.source "AlarmData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/newalarm/entities/AlarmData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alarmData:Landroid/os/Bundle;

.field private alarmId:Ljava/lang/String;

.field private alarmMode:I

.field private alarmModuleName:Ljava/lang/String;

.field private alarmTriggerTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmMode:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmModuleName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/iflytek/base/newalarm/entities/AlarmData;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/iflytek/base/newalarm/entities/AlarmData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData;-><init>(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;Lcom/iflytek/base/newalarm/entities/AlarmData$1;)V

    return-object v0
.end method

.method public setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;
    .locals 0
    .param p1, "alarmData"    # Landroid/os/Bundle;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmData:Landroid/os/Bundle;

    .line 69
    return-object p0
.end method

.method public setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;
    .locals 0
    .param p1, "alarmId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmId:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;
    .locals 0
    .param p1, "alarmMode"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmMode:I

    .line 79
    return-object p0
.end method

.method public setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmModuleName:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;
    .locals 1
    .param p1, "triggerTime"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->alarmTriggerTime:J

    .line 89
    return-object p0
.end method
