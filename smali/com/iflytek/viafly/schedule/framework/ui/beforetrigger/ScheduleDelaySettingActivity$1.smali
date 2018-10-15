.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;
.super Ljava/lang/Object;
.source "ScheduleDelaySettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    .line 77
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    iget-object v4, v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    .line 83
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 77
    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    goto :goto_1
.end method
