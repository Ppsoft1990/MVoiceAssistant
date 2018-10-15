.class Lcom/iflytek/viafly/schedule/TrafficSettingActivity$2;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$2;->a:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 498
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 499
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$2;->a:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->finish()V

    .line 500
    return-void
.end method
