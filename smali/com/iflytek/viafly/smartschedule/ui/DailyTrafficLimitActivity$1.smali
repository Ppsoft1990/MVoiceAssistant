.class Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$1;
.super Ljava/lang/Object;
.source "DailyTrafficLimitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->access$000(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->access$100(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    return-void
.end method
