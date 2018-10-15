.class Lavh$4;
.super Ljava/lang/Object;
.source "ScheduleTriggerHandler.java"

# interfaces
.implements Lavf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavh;->f(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field final synthetic b:Lavh;


# direct methods
.method constructor <init>(Lavh;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "this$0"    # Lavh;

    .prologue
    .line 885
    iput-object p1, p0, Lavh$4;->b:Lavh;

    iput-object p2, p0, Lavh$4;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 889
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "onAlarmTrigger()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v1, p0, Lavh$4;->b:Lavh;

    invoke-static {v1}, Lavh;->d(Lavh;)Lavk;

    move-result-object v1

    invoke-virtual {v1}, Lavk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "mTriggerPool is empty -> return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_0
    return-void

    .line 895
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v0, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v1, p0, Lavh$4;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v1, p0, Lavh$4;->b:Lavh;

    iget-object v1, v1, Lavh;->a:Landroid/content/Context;

    invoke-static {v1}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v1

    invoke-virtual {v1}, Ltd;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 899
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "onAlarmTrigger(), is Call Idle & not Recognizing -> startTriggerDialog..."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v1, p0, Lavh$4;->b:Lavh;

    invoke-static {v1}, Lavh;->e(Lavh;)Lauw;

    move-result-object v1

    invoke-virtual {v1}, Lauw;->a()V

    .line 902
    iget-object v1, p0, Lavh$4;->b:Lavh;

    invoke-static {v1}, Lavh;->e(Lavh;)Lauw;

    move-result-object v1

    invoke-virtual {v1}, Lauw;->c()V

    .line 910
    iget-object v1, p0, Lavh$4;->b:Lavh;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-static {v1, v0, v2}, Lavh;->a(Lavh;Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V

    .line 914
    :cond_1
    iget-object v1, p0, Lavh$4;->b:Lavh;

    iget-object v1, v1, Lavh;->a:Landroid/content/Context;

    invoke-static {v1}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-virtual {v1, v2, v0}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
