.class Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$1;
.super Ljava/util/TimerTask;
.source "ScheduleBusinessRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->searchContent(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$1;->this$0:Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;

    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$1;->this$0:Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$1;->val$content:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->access$000(Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;Ljava/lang/String;)V

    .line 69
    return-void
.end method
