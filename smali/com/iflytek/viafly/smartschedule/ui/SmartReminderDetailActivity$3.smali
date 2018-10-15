.class Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$3;
.super Ljava/lang/Object;
.source "SmartReminderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->confirmDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$3;->this$0:Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$3;->val$builder:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$3;->val$builder:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 267
    return-void
.end method
