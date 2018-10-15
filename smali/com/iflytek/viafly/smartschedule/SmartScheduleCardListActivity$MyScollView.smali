.class Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$MyScollView;
.super Landroid/widget/ScrollView;
.source "SmartScheduleCardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyScollView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$MyScollView;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    .line 178
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 179
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$MyScollView;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->access$000(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$MyScollView;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
