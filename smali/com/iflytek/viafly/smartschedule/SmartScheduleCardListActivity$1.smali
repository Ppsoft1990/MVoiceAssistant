.class Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$1;
.super Ljava/lang/Object;
.source "SmartScheduleCardListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->access$000(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
