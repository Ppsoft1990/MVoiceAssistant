.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;
.super Ljava/lang/Object;
.source "ScheduleModifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->h()V
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
    .line 254
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 260
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    .line 266
    return-void
.end method
