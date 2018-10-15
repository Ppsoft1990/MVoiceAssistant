.class public Lawg;
.super Ljava/lang/Object;
.source "ScheduleUiUtil.java"


# direct methods
.method public static a(Lcom/iflytek/base/skin/customView/XImageView;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "imageView"    # Lcom/iflytek/base/skin/customView/XImageView;
    .param p1, "ringType"    # Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z

    .prologue
    .line 63
    const-string/jumbo v0, ""

    .line 64
    .local v0, "imagePath":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, p1, :cond_1

    .line 65
    const-string/jumbo v0, "image.ic_remind_todoitem_record_remind"

    .line 87
    :cond_0
    :goto_0
    if-eqz p3, :cond_b

    const-string/jumbo v1, "_enable"

    .line 88
    .local v1, "state":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 89
    return-void

    .line 66
    .end local v1    # "state":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v2, p1, :cond_2

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, p1, :cond_3

    .line 67
    :cond_2
    const-string/jumbo v0, "image.ic_remind_todoitem_record_remind"

    goto :goto_0

    .line 68
    :cond_3
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, p1, :cond_4

    .line 69
    const-string/jumbo v0, "image.ic_remind_todoitem_news"

    goto :goto_0

    .line 70
    :cond_4
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, p1, :cond_5

    .line 71
    const-string/jumbo v0, "image.ic_remind_todoitem_record_remind"

    goto :goto_0

    .line 72
    :cond_5
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, p1, :cond_6

    .line 73
    const-string/jumbo v0, "image.ic_remind_todoitem_personal"

    goto :goto_0

    .line 74
    :cond_6
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, p1, :cond_7

    .line 75
    const-string/jumbo v0, "image.ic_remind_todoitem_weather"

    goto :goto_0

    .line 76
    :cond_7
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, p1, :cond_0

    .line 77
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    const-string/jumbo v0, "image.ic_remind_todoitem_record_morning"

    goto :goto_0

    .line 79
    :cond_8
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 80
    const-string/jumbo v0, "image.ic_remind_todoitem_record_night"

    goto :goto_0

    .line 81
    :cond_9
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->REMIND:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 82
    const-string/jumbo v0, "image.ic_remind_todoitem_record_remind"

    goto :goto_0

    .line 84
    :cond_a
    const-string/jumbo v0, "image.ic_remind_todoitem_local"

    goto :goto_0

    .line 87
    :cond_b
    const-string/jumbo v1, "_disable"

    goto :goto_1
.end method
