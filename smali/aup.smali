.class public Laup;
.super Ljava/lang/Object;
.source "ScheduleUpdateHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lahr;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8a

    if-ge v0, v1, :cond_0

    .line 34
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_SCHEDULE_UPDATE_FLAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 35
    invoke-static {p0}, Laup;->c(Landroid/content/Context;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SCHEDULE_UPDATE_FLAG"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    .line 78
    .local v1, "isUpdate":Z
    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SCHEDULE_UPDATE_FLAG"

    invoke-virtual {v2, v3, v6}, Lil;->a(Ljava/lang/String;Z)V

    .line 82
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v2, "\u63d0\u9192\u529f\u80fd\u5347\u7ea7\uff0c\u4e4b\u524d\u8bbe\u7f6e\u7684\u63d0\u9192\u94c3\u58f0\u53ef\u80fd\u4f1a\u88ab\u4fee\u6539"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "\u63d0\u793a"

    .line 84
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "\u77e5\u9053\u4e86"

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v5, Laup$1;

    invoke-direct {v5, v0}, Laup$1;-><init>(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 85
    invoke-virtual {v2, v7, v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setSingleButton(ZLjava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v2

    const/16 v3, 0x11

    .line 92
    invoke-virtual {v2, v3, v6, v6}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1e

    .line 44
    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v3

    invoke-virtual {v3, p0}, Lauu;->c(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 45
    .local v1, "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-nez v1, :cond_1

    .line 70
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 49
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 50
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 55
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 65
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 66
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v4, "android_asset://ringtone/notice.mp3"

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 60
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
