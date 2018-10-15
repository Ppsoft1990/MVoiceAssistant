.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;
.super Ljava/lang/Object;
.source "ScheduleBaseTimeSetView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
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
    .line 546
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->b:Landroid/widget/TextView;

    .line 547
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->b:Landroid/widget/TextView;

    .line 548
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 553
    const-string/jumbo v5, "ScheduleBaseTimeSetView"

    const-string/jumbo v6, "DatePickerDialog:onDateSet()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v5, v6, :cond_0

    .line 555
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 558
    .local v2, "oldDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v4

    .line 559
    .local v4, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 560
    .local v3, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setYear(I)V

    .line 561
    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v3, v6}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setMonth(I)V

    .line 562
    invoke-virtual {v3, p4}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setDay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    .end local v3    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v4    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "oldDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_0
    :goto_1
    return-void

    .line 566
    .restart local v2    # "oldDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .restart local v4    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 567
    .local v1, "newDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setYear(I)V

    .line 568
    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setMonth(I)V

    .line 569
    invoke-virtual {v1, p4}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->setDay(I)V

    .line 570
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-static {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v5, v2, v1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->updateDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 572
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;->b:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;Landroid/widget/TextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
