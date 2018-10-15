.class Lcom/iflytek/viafly/smartschedule/ScheduleView$1;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/ScheduleView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/ScheduleView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/ScheduleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView$1;->this$0:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView$1;->this$0:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->access$100(Lcom/iflytek/viafly/smartschedule/ScheduleView;)Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView$1;->this$0:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->access$000(Lcom/iflytek/viafly/smartschedule/ScheduleView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;->onItemClick(I)V

    .line 56
    return-void
.end method
