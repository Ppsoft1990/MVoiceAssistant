.class Laua;
.super Latw;
.source "UserIsolutionNoticeBusinessHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Latw;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private d(Ljava/util/Map;)Luv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Luv;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "UserIsolutionNoticeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parsePushSchedule() businessMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string/jumbo v2, "appinfo"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "strAppInfos":Ljava/lang/String;
    invoke-static {v1}, Luv;->a(Ljava/lang/String;)Luv;

    move-result-object v0

    .line 102
    .local v0, "appInfos":Luv;
    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0, p2}, Laua;->d(Ljava/util/Map;)Luv;

    move-result-object v0

    .line 78
    .local v0, "appInfos":Luv;
    const-string/jumbo v4, "msgid"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "msgId":Ljava/lang/String;
    const-string/jumbo v4, "starttime"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "startTime":Ljava/lang/String;
    const-string/jumbo v4, "endtime"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, "endTime":Ljava/lang/String;
    invoke-virtual {v0, v3, v1}, Luv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Laua;->a:Landroid/content/Context;

    invoke-static {v4}, Luo;->a(Landroid/content/Context;)Luo;

    move-result-object v4

    invoke-virtual {v4, v0}, Luo;->a(Luv;)V

    .line 83
    invoke-static {v2}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    iget-object v4, p0, Laua;->a:Landroid/content/Context;

    invoke-static {v4}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v4

    invoke-virtual {v4, v2}, Latf;->b(Ljava/lang/String;)J

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 30
    const-string/jumbo v2, "UserIsolutionNoticeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleNoticeAction action= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " businessMap= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string/jumbo v2, "3016"

    invoke-static {v2}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    invoke-virtual {p0, p2}, Laua;->b(Ljava/util/Map;)Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    move-result-object v1

    .line 36
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    if-eqz v1, :cond_1

    .line 37
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setScheduleTypeStr(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setIsSlient(Z)V

    .line 39
    const/16 v2, -0x2710

    invoke-virtual {p0, v1, v2}, Laua;->a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;I)I

    move-result v0

    .line 40
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 41
    const-string/jumbo v2, "UserIsolutionNoticeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create schedule failed, error= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "result":I
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    :goto_0
    return v5

    .line 43
    .restart local v0    # "result":I
    .restart local v1    # "schedule":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    :cond_0
    const-string/jumbo v2, "UserIsolutionNoticeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create schedule success, scheduleId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .end local v0    # "result":I
    :cond_1
    const-string/jumbo v2, "UserIsolutionNoticeBusinessHandler"

    const-string/jumbo v3, "schedule business data is not legal"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    :cond_2
    const-string/jumbo v2, "3013"

    invoke-static {v2}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    invoke-direct {p0, p1, p2}, Laua;->d(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 55
    :cond_3
    const-string/jumbo v2, "UserIsolutionNoticeBusinessHandler"

    const-string/jumbo v3, "USER_ISOLUTION mode, while ACTION is not right"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Laua;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 64
    return-void
.end method
