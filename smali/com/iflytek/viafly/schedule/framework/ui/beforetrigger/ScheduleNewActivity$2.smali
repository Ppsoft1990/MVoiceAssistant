.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;
.super Ljava/lang/Object;
.source "ScheduleNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)V

    .line 525
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 530
    :cond_0
    return-void
.end method
