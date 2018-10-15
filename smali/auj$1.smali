.class Lauj$1;
.super Ljava/lang/Object;
.source "ScheduleDeleteGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauj;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lauj;


# direct methods
.method constructor <init>(Lauj;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lauj;

    .prologue
    .line 59
    iput-object p1, p0, Lauj$1;->b:Lauj;

    iput-object p2, p0, Lauj$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v2, p0, Lauj$1;->b:Lauj;

    invoke-static {v2}, Lauj;->a(Lauj;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v2, v3, :cond_1

    .line 64
    iget-object v2, p0, Lauj$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    iget-object v3, p0, Lauj$1;->b:Lauj;

    invoke-static {v3}, Lauj;->b(Lauj;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 65
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {v0}, Lawh;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lauj$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lauj$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    iget-object v3, p0, Lauj$1;->b:Lauj;

    invoke-static {v3}, Lauj;->b(Lauj;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->deleteSchedule(I)V

    .line 75
    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :goto_0
    iget-object v2, p0, Lauj$1;->b:Lauj;

    invoke-virtual {v2}, Lauj;->dismiss()V

    .line 76
    iget-object v2, p0, Lauj$1;->b:Lauj;

    invoke-static {v2}, Lauj;->c(Lauj;)Lavy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lauj$1;->b:Lauj;

    invoke-static {v2}, Lauj;->c(Lauj;)Lavy;

    move-result-object v2

    iget-object v3, p0, Lauj$1;->b:Lauj;

    invoke-static {v3}, Lauj;->a(Lauj;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    move-result-object v3

    iget-object v4, p0, Lauj$1;->b:Lauj;

    invoke-static {v4}, Lauj;->b(Lauj;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lavy;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;I)V

    .line 79
    :cond_0
    return-void

    .line 70
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lauj$1;->b:Lauj;

    invoke-static {v2}, Lauj;->b(Lauj;)I

    move-result v2

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 72
    iget-object v2, p0, Lauj$1;->b:Lauj;

    invoke-static {v2}, Lauj;->b(Lauj;)I

    move-result v2

    invoke-static {v2}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1    # "type":Ljava/lang/String;
    iget-object v2, p0, Lauj$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
