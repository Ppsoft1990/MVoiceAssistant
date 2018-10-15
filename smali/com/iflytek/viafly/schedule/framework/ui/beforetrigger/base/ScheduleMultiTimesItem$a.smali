.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;
.super Ljava/lang/Object;
.source "ScheduleMultiTimesItem.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->b:Landroid/widget/TextView;

    .line 135
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->b:Landroid/widget/TextView;

    .line 136
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 140
    const-string/jumbo v5, "ScheduleMultiTimesItem"

    const-string/jumbo v6, "TimePickerDialog:onTimeSet()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v5, "ScheduleMultiTimesItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TimePickerDialog:onTimeSet():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string/jumbo v5, "ScheduleMultiTimesItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TimePickerDialog:onTimeSet():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;I)I

    .line 145
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5, p3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;I)I

    .line 146
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v5, v6, :cond_1

    .line 150
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 151
    .local v2, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setHour(I)V

    .line 152
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setMinute(I)V

    .line 153
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 154
    .local v3, "onceDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->updateMultiDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 155
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v3    # "onceDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->b:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Landroid/widget/TextView;)V

    .line 177
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string/jumbo v5, "ScheduleMultiTimesItem"

    const-string/jumbo v6, "CloneNotSupportedException"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_1
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v6

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .line 160
    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v6

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    .line 161
    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 163
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 164
    .local v4, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->setHour(I)V

    .line 165
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->setMinute(I)V

    .line 166
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    .line 167
    .local v0, "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;)Lcom/iflytek/viafly/schedule/framework/entities/Time;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->updateMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    .line 168
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;

    invoke-static {v5, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesItem;Lcom/iflytek/viafly/schedule/framework/entities/Time;)Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 169
    .end local v0    # "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
    .end local v4    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :catch_1
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/lang/CloneNotSupportedException;
    const-string/jumbo v5, "ScheduleMultiTimesItem"

    const-string/jumbo v6, "CloneNotSupportedException"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
