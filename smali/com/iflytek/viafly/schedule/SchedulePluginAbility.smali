.class public Lcom/iflytek/viafly/schedule/SchedulePluginAbility;
.super Ljava/lang/Object;
.source "SchedulePluginAbility.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;


# instance fields
.field private mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPushSchedule(Landroid/content/Context;Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushSchedule"    # Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    .prologue
    .line 32
    invoke-static {p1, p2}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;)I

    move-result v0

    return v0
.end method

.method public createSchedule(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p3, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1, p2, p3, p4}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createSchedule(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p3, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1, p2, p3, p4, p5}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createSchedule(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p3, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "adId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static/range {p1 .. p6}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createSchedule(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "businessType"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p3, "datetime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "isOpen"    # Z
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static/range {p1 .. p6}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enterPlugin(Landroid/content/Context;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 29
    return-void
.end method

.method public getBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/SchedulePluginAbility;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/SchedulePluginAbility;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/SchedulePluginAbility;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "schedule"

    return-object v0
.end method

.method public getResultFilter()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Laum;

    invoke-direct {v0}, Laum;-><init>()V

    return-object v0
.end method

.method public getSchedule(Landroid/content/Context;I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleID"    # I

    .prologue
    .line 65
    invoke-static {p1, p2}, Lawb;->a(Landroid/content/Context;I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    return-object v0
.end method

.method public varargs getSchedule(Landroid/content/Context;[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1, p2}, Lawb;->a(Landroid/content/Context;[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startEditScheduleActivity(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "autoToSubSchedule"    # Z

    .prologue
    .line 53
    invoke-static {p1, p2, p3}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Z)V

    .line 54
    return-void
.end method

.method public switchSchedule(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleID"    # I
    .param p3, "isOpen"    # Z

    .prologue
    .line 61
    invoke-static {p1, p2, p3}, Lawb;->a(Landroid/content/Context;IZ)V

    .line 62
    return-void
.end method
