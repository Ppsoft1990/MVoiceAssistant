.class Lavm$2;
.super Ljava/lang/Object;
.source "WakeupScheduleManager.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lavm;


# direct methods
.method constructor <init>(Lavm;)V
    .locals 0
    .param p1, "this$0"    # Lavm;

    .prologue
    .line 264
    iput-object p1, p0, Lavm$2;->a:Lavm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 278
    iget-object v0, p0, Lavm$2;->a:Lavm;

    invoke-static {v0, p1}, Lavm;->a(Lavm;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 279
    const-string/jumbo v0, "ScheduleTest"

    const-string/jumbo v1, "\u63d0\u9192\u88ab\u5220\u9664\uff0c\u53d6\u6d88\u5b9a\u65f6\u5668"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 274
    return-void
.end method

.method public onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "oldSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "newSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 268
    iget-object v0, p0, Lavm$2;->a:Lavm;

    invoke-static {v0, p1}, Lavm;->a(Lavm;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 269
    const-string/jumbo v0, "ScheduleTest"

    const-string/jumbo v1, "\u63d0\u9192\u6709\u53d8\u5316\uff0c\u53d6\u6d88\u5b9a\u65f6\u5668"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method
