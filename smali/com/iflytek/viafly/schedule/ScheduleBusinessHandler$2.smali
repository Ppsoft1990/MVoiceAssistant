.class Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$2;
.super Ljava/util/TimerTask;
.source "ScheduleBusinessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$2;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$2;->a:Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->showPlayImg()V

    .line 446
    return-void
.end method
