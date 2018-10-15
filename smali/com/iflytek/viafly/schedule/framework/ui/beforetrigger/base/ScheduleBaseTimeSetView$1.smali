.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;
.super Ljava/lang/Object;
.source "ScheduleBaseTimeSetView.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;II)V
    .locals 9
    .param p1, "view"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 146
    const-string/jumbo v6, "ScheduleBaseTimeSetView"

    const-string/jumbo v7, "TimePicker:onTimeSet()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string/jumbo v6, "ScheduleBaseTimeSetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TimePicker:onTimeSet():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string/jumbo v6, "ScheduleBaseTimeSetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TimePicker:onTimeSet():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v5

    .line 151
    .local v5, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :try_start_0
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v5, :cond_1

    .line 152
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 153
    .local v3, "oldDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 154
    .local v1, "newDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setHour(I)V

    .line 155
    invoke-virtual {v1, p3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setMinute(I)V

    .line 156
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v6, v3, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->updateDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 165
    .end local v1    # "newDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v3    # "oldDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 169
    :goto_1
    return-void

    .line 157
    :cond_1
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v6, v5, :cond_2

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v6, v5, :cond_2

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v5, :cond_0

    .line 158
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 159
    .local v4, "oldTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 160
    .local v2, "newTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v2, p2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->setHour(I)V

    .line 161
    invoke-virtual {v2, p3}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->setMinute(I)V

    .line 162
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v6, v4, v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->updateTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v2    # "newTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v4    # "oldTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
