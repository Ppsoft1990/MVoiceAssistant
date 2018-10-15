.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;
.super Ljava/lang/Object;
.source "ScheduleBaseTimeSetView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->b:Landroid/widget/TextView;

    .line 589
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->b:Landroid/widget/TextView;

    .line 590
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 9
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 594
    const-string/jumbo v6, "ScheduleBaseTimeSetView"

    const-string/jumbo v7, "TimePickerDialog:onTimeSet()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string/jumbo v6, "ScheduleBaseTimeSetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TimePickerDialog:onTimeSet():"

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

    .line 596
    const-string/jumbo v6, "ScheduleBaseTimeSetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TimePickerDialog:onTimeSet():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v5

    .line 599
    .local v5, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :try_start_0
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v5, :cond_1

    .line 600
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 601
    .local v3, "oldDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 602
    .local v1, "newDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setHour(I)V

    .line 603
    invoke-virtual {v1, p3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setMinute(I)V

    .line 604
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v6, v3, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->updateDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 612
    .end local v1    # "newDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v3    # "oldDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->b:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;Landroid/widget/TextView;)V

    .line 613
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 617
    :goto_1
    return-void

    .line 605
    :cond_1
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v6, v5, :cond_2

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v6, v5, :cond_2

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v6, v5, :cond_0

    .line 606
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 607
    .local v4, "oldTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 608
    .local v2, "newTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v2, p2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->setHour(I)V

    .line 609
    invoke-virtual {v2, p3}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->setMinute(I)V

    .line 610
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v6, v4, v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->updateTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    .end local v2    # "newTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v4    # "oldTime":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
