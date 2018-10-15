.class public abstract Latw;
.super Ljava/lang/Object;
.source "BaseNoticeBusinessHandler.java"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Latw;->a:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Latw;->a:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;I)I
    .locals 5
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    .param p2, "defaultFailResult"    # I

    .prologue
    .line 176
    const-string/jumbo v2, "BaseNoticeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCreateScheduleAction() |schedule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz p1, :cond_1

    .line 180
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v2

    const/16 v3, 0x66

    const-class v4, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;

    invoke-interface {v2, v3, v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/SchedulePluginAbility;

    .line 183
    .local v0, "ablity":Lcom/iflytek/viafly/schedule/SchedulePluginAbility;
    move v1, p2

    .line 184
    .local v1, "createScheduleResult":I
    if-eqz v0, :cond_0

    .line 185
    iget-object v2, p0, Latw;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/iflytek/viafly/schedule/SchedulePluginAbility;->createPushSchedule(Landroid/content/Context;Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;)I

    move-result v1

    .line 189
    .end local v0    # "ablity":Lcom/iflytek/viafly/schedule/SchedulePluginAbility;
    .end local v1    # "createScheduleResult":I
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "openurl"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;)Z
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
.end method

.method protected b(Ljava/util/Map;)Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;"
        }
    .end annotation

    .prologue
    .local p1, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 101
    const-string/jumbo v7, "BaseNoticeBusinessHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parsePushSchedule() businessMap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-object v5

    .line 107
    :cond_0
    const-string/jumbo v7, "reminder"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 108
    .local v6, "scheduleContent":Ljava/lang/String;
    const-string/jumbo v7, "cron"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "dataTimeCron":Ljava/lang/String;
    const-string/jumbo v7, "switch"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "autoOpenTag":Ljava/lang/String;
    const-string/jumbo v7, "BaseNoticeBusinessHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parsePushSchedule() scheduleContent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " dataTimeCron "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " autoOpenTag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    const-string/jumbo v7, "BaseNoticeBusinessHandler"

    const-string/jumbo v8, "dataTimeCron == empty"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {v2}, Laud;->a(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v3

    .line 118
    .local v3, "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-nez v3, :cond_2

    .line 119
    const-string/jumbo v7, "BaseNoticeBusinessHandler"

    const-string/jumbo v8, "datetimeInfor == null"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_2
    new-instance v5, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    invoke-direct {v5}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;-><init>()V

    .line 124
    .local v5, "pushSchedule":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setScheduleTitle(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setDateTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "autoOpen":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 132
    :goto_1
    if-eqz v0, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v5, v7}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setAutoOpen(Z)V

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "BaseNoticeBusinessHandler"

    const-string/jumbo v8, "parsePushSchedule()"

    invoke-static {v7, v8, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 132
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public abstract b(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method protected c(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "businessid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    .local v2, "strPluginType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "pluginType":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    if-eqz v1, :cond_0

    .line 153
    iget-object v3, p0, Latw;->a:Landroid/content/Context;

    const-string/jumbo v4, "notice"

    invoke-static {v3, v1, v4}, Lazo;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 157
    .end local v1    # "pluginType":I
    :cond_0
    return-object v2

    .line 148
    .restart local v1    # "pluginType":I
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "BaseNoticeBusinessHandler"

    const-string/jumbo v4, "openPlugin() "

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "operationId"    # Ljava/lang/String;
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
    .line 74
    .line 75
    .local p2, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    move-result-object v0

    .line 76
    .local v0, "businessId":Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
    const-string/jumbo v2, "BaseNoticeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openOperation() param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez v0, :cond_1

    .line 78
    const-string/jumbo v2, "BaseNoticeBusinessHandler"

    const-string/jumbo v3, "openOperation operationId is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-object v2, Latw$1;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 89
    const-string/jumbo v2, "BaseNoticeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openOperation operationId is not legal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-virtual {p0, p2}, Latw;->b(Ljava/util/Map;)Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    move-result-object v1

    .line 84
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Latw;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lawm;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;Z)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
