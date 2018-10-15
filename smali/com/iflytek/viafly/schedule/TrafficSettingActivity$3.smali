.class Lcom/iflytek/viafly/schedule/TrafficSettingActivity$3;
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
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$3;->b:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$3;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$3;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 493
    return-void
.end method
