.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;
.super Ljava/lang/Object;
.source "ScheduleModifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 228
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v1

    .line 227
    invoke-interface {v0, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->deleteSchedule(I)V

    .line 230
    const-string/jumbo v0, "fromNewRemindView"

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->c()V

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    .line 236
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->e()V

    goto :goto_0
.end method
