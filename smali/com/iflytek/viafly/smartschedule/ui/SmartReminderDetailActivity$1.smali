.class Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$1;
.super Ljava/lang/Object;
.source "SmartReminderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->access$000(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;Landroid/view/View;)V

    .line 184
    return-void
.end method
