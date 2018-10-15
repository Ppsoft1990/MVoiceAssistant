.class Lavh;
.super Ljava/lang/Object;
.source "ScheduleTriggerHandler.java"

# interfaces
.implements Lave;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

.field private c:Lauw;

.field private d:Lavf;

.field private e:Lavk;

.field private f:Lavd;

.field private g:Lavc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lavh;->a:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v0

    iput-object v0, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    .line 83
    invoke-static {p1}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v0

    iput-object v0, p0, Lavh;->c:Lauw;

    .line 84
    new-instance v0, Lavf;

    invoke-direct {v0, p1}, Lavf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lavh;->d:Lavf;

    .line 86
    new-instance v0, Lavk;

    invoke-direct {v0}, Lavk;-><init>()V

    iput-object v0, p0, Lavh;->e:Lavk;

    .line 87
    new-instance v0, Lavd;

    invoke-direct {v0}, Lavd;-><init>()V

    iput-object v0, p0, Lavh;->f:Lavd;

    .line 88
    new-instance v0, Lavc;

    invoke-direct {v0}, Lavc;-><init>()V

    iput-object v0, p0, Lavh;->g:Lavc;

    .line 89
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTime"    # J

    .prologue
    .line 271
    const-string/jumbo v1, "HH:mm"

    invoke-static {v1, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 276
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 349
    invoke-static {p1}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v0

    invoke-virtual {v0}, Loh;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string/jumbo v0, "ScheduleTriggerHandler"

    const-string/jumbo v1, "the notification bar is dark."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const v0, 0x7f0b05f3

    const-string/jumbo v1, "#d6d6d6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 353
    const v0, 0x7f0b05f5

    const-string/jumbo v1, "#979b9e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 354
    const v0, 0x7f0b05f4

    const-string/jumbo v1, "#979b9e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 356
    :cond_0
    return-void
.end method

.method static synthetic a(Lavh;Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V
    .locals 0
    .param p0, "x0"    # Lavh;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lavh;->a(Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V
    .locals 3
    .param p2, "handleType"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 518
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 520
    if-eqz p2, :cond_0

    .line 521
    const-string/jumbo v1, "handle_type"

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    :cond_0
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 526
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "------>> startNotifyActivity() | success"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .end local v0    # "it":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    :cond_0
    return-void

    .line 929
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 930
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v2, p0, Lavh;->d:Lavf;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lavf;->a(I)V

    .line 931
    const-string/jumbo v2, "ScheduleTriggerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelNoOperateAlarm(), id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lavh;)Z
    .locals 1
    .param p0, "x0"    # Lavh;

    .prologue
    .line 64
    invoke-direct {p0}, Lavh;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lavh;)V
    .locals 0
    .param p0, "x0"    # Lavh;

    .prologue
    .line 64
    invoke-direct {p0}, Lavh;->k()V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const-string/jumbo v2, "ScheduleTriggerHandler"

    const-string/jumbo v3, "insertTriggerPool() | scheduleList=null -> return false"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 193
    .local v0, "flag":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 194
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v3, p0, Lavh;->e:Lavk;

    invoke-virtual {v3, v1}, Lavk;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    const-string/jumbo v3, "ScheduleTriggerHandler"

    const-string/jumbo v4, "insertTriggerPool(), insert fail -> continue"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    :cond_1
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 202
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAutoDelayFlag()I

    move-result v3

    if-lez v3, :cond_2

    .line 203
    invoke-direct {p0, v1}, Lavh;->f(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 206
    :cond_2
    const/4 v0, 0x1

    .line 207
    iget-object v3, p0, Lavh;->f:Lavd;

    invoke-virtual {v3, v1}, Lavd;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lavh;->d(I)V

    .line 210
    :cond_3
    const-string/jumbo v3, "ScheduleTriggerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertTriggerPool() | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 212
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_4
    const-string/jumbo v2, "ScheduleTriggerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertTriggerPool(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lavh;)Lavc;
    .locals 1
    .param p0, "x0"    # Lavh;

    .prologue
    .line 64
    iget-object v0, p0, Lavh;->g:Lavc;

    return-object v0
.end method

.method static synthetic d(Lavh;)Lavk;
    .locals 1
    .param p0, "x0"    # Lavh;

    .prologue
    .line 64
    iget-object v0, p0, Lavh;->e:Lavk;

    return-object v0
.end method

.method private d(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "speechList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "delay to tts!"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lavh$1;

    invoke-direct {v2, p0, v0}, Lavh$1;-><init>(Lavh;Ljava/util/ArrayList;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v1}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-virtual {v1, v2, v0}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static synthetic e(Lavh;)Lauw;
    .locals 1
    .param p0, "x0"    # Lavh;

    .prologue
    .line 64
    iget-object v0, p0, Lavh;->c:Lauw;

    return-object v0
.end method

.method private e(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 639
    iget-object v1, p0, Lavh;->e:Lavk;

    invoke-virtual {v1}, Lavk;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "ret":Z
    iget-object v1, p0, Lavh;->e:Lavk;

    invoke-virtual {v1, p1}, Lavk;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    invoke-direct {p0, p1}, Lavh;->f(I)V

    .line 649
    invoke-direct {p0}, Lavh;->f()V

    .line 651
    :cond_0
    const-string/jumbo v1, "ScheduleTriggerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeleteTriggerCach() ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | schedule id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .end local v0    # "ret":Z
    :cond_1
    return-void
.end method

.method private e(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 218
    const-string/jumbo v0, "ScheduleTriggerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertDelayNofityBar() | schedule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lavh;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 370
    iget-object v1, p0, Lavh;->e:Lavk;

    invoke-virtual {v1}, Lavk;->b()Ljava/util/List;

    move-result-object v9

    .line 371
    .local v9, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {v9}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    sget v2, Lof;->a:I

    invoke-static {v1, v2, v5}, Loe;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 374
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "updateTriggerNotifyBar() | schedule cach is empty -> return"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string/jumbo v3, "\u7075\u7280\u95f9\u949f"

    .line 380
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 381
    .local v4, "content":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 382
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v1

    if-ne v2, v1, :cond_1

    .line 383
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v1}, Lawe;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v4

    .line 396
    :goto_1
    new-instance v0, Lcom/iflytek/common/notice/ScheduleNotificationParam;

    sget v1, Lof;->a:I

    const-string/jumbo v2, "Schedule"

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/common/notice/ScheduleNotificationParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 399
    .local v0, "param":Lcom/iflytek/common/notice/ScheduleNotificationParam;
    const/4 v1, 0x3

    iput v1, v0, Lcom/iflytek/common/notice/ScheduleNotificationParam;->flag:I

    .line 401
    iput-boolean v10, v0, Lcom/iflytek/common/notice/ScheduleNotificationParam;->isRing:Z

    .line 402
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    new-instance v2, Lavh$2;

    invoke-direct {v2, p0}, Lavh$2;-><init>(Lavh;)V

    invoke-static {v1, v0, v2}, Loe;->a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Loe$a;)V

    goto :goto_0

    .line 385
    .end local v0    # "param":Lcom/iflytek/common/notice/ScheduleNotificationParam;
    :cond_1
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v1}, Lavh;->g(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, "scheduleContent":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lavh;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 389
    :cond_2
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lavh;->a(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 393
    .end local v8    # "scheduleContent":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lavh;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c01b1

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private f(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 941
    iget-object v0, p0, Lavh;->d:Lavf;

    invoke-virtual {v0, p1}, Lavf;->a(I)V

    .line 942
    const-string/jumbo v0, "ScheduleTriggerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelNoOperateAlarm(), id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void
.end method

.method private f(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 918
    :goto_0
    return-void

    .line 884
    :cond_0
    const-string/jumbo v0, "ScheduleTriggerHandler"

    const-string/jumbo v1, "createNoOperateAlarm()"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lavh;->d:Lavf;

    new-instance v1, Lavh$4;

    invoke-direct {v1, p0, p1}, Lavh$4;-><init>(Lavh;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    invoke-virtual {v0, p1, v1}, Lavf;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lavf$a;)V

    goto :goto_0
.end method

.method private g(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 4
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 946
    if-nez p1, :cond_1

    .line 947
    const-string/jumbo v1, ""

    .line 972
    :cond_0
    :goto_0
    return-object v1

    .line 950
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 951
    const-string/jumbo v1, ""

    goto :goto_0

    .line 954
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 955
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    const-string/jumbo v1, ""

    goto :goto_0

    .line 963
    .end local v1    # "title":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 965
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 966
    .restart local v1    # "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    const-string/jumbo v1, ""

    goto :goto_0

    .end local v1    # "title":Ljava/lang/String;
    :cond_5
    move-object v1, v0

    .line 972
    goto :goto_0
.end method

.method private g()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 427
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "updateDatedNotifyBar"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lavh;->g:Lavc;

    invoke-virtual {v1}, Lavc;->b()Ljava/util/List;

    move-result-object v9

    .line 429
    .local v9, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {v9}, Lazz;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    sget v2, Lof;->a:I

    invoke-static {v1, v2, v5}, Loe;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 432
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "updateDatedNotifyBar() | mDatedPool is empty -> return"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "updateDatedNotifyBar schedules is not empty"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string/jumbo v3, "\u7075\u7280\u95f9\u949f"

    .line 440
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, " "

    .line 441
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 442
    .local v10, "subTitle":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v11, :cond_2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 443
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v1}, Lavh;->g(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, "scheduleContent":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lavh;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    :goto_1
    const-string/jumbo v10, " (\u5df2\u8fc7\u671f)"

    .line 454
    .end local v8    # "scheduleContent":Ljava/lang/String;
    :goto_2
    new-instance v0, Lcom/iflytek/common/notice/ScheduleNotificationParam;

    sget v1, Lof;->a:I

    const-string/jumbo v2, "Schedule"

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/common/notice/ScheduleNotificationParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 457
    .local v0, "param":Lcom/iflytek/common/notice/ScheduleNotificationParam;
    iput-boolean v11, v0, Lcom/iflytek/common/notice/ScheduleNotificationParam;->isRing:Z

    .line 458
    invoke-virtual {v0, v10}, Lcom/iflytek/common/notice/ScheduleNotificationParam;->setSubTitle(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    new-instance v2, Lavh$3;

    invoke-direct {v2, p0}, Lavh$3;-><init>(Lavh;)V

    invoke-static {v1, v0, v2}, Loe;->a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Loe$a;)V

    goto :goto_0

    .line 447
    .end local v0    # "param":Lcom/iflytek/common/notice/ScheduleNotificationParam;
    .restart local v8    # "scheduleContent":Ljava/lang/String;
    :cond_1
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lavh;->a(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 451
    .end local v8    # "scheduleContent":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, " (%d\u4e2a\u5df2\u8fc7\u671f)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method private h()Z
    .locals 3

    .prologue
    .line 495
    iget-object v1, p0, Lavh;->e:Lavk;

    invoke-virtual {v1}, Lavk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lavh;->f:Lavd;

    invoke-virtual {v1}, Lavd;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lavh;->g:Lavc;

    invoke-virtual {v1}, Lavc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .local v0, "stopIntent":Landroid/content/Intent;
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 498
    const-string/jumbo v1, "ScheduleTriggerHandler"

    const-string/jumbo v2, "checkStopService() | stop schedule service!"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 v1, 0x1

    .line 502
    .end local v0    # "stopIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 550
    iget-object v2, p0, Lavh;->f:Lavd;

    invoke-virtual {v2}, Lavd;->b()Ljava/util/List;

    move-result-object v0

    .line 551
    .local v0, "delaySchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 552
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 554
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lavh;->d(I)V

    .line 556
    invoke-virtual {v1, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 557
    invoke-virtual {v1, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 558
    iget-object v3, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v3, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    goto :goto_0

    .line 560
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    :cond_1
    return-void
.end method

.method private j()Z
    .locals 4

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "ret":Z
    iget-object v1, p0, Lavh;->g:Lavc;

    invoke-virtual {v1}, Lavc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    iget-object v1, p0, Lavh;->g:Lavc;

    invoke-virtual {v1}, Lavc;->b()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-direct {p0, v1, v2}, Lavh;->a(Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V

    .line 627
    :cond_0
    const-string/jumbo v1, "ScheduleTriggerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDatedDialog(), ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 701
    const-string/jumbo v0, "ScheduleTriggerHandler"

    const-string/jumbo v1, "deleteDatedNotice()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lavh;->a:Landroid/content/Context;

    .line 703
    invoke-static {}, Lof;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 702
    invoke-static {v0, v1, v2}, Loe;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 704
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lavh;->e(I)V

    .line 634
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lavh;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 635
    invoke-direct {p0}, Lavh;->h()Z

    .line 636
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .prologue
    .line 486
    const-string/jumbo v0, "ScheduleTriggerHandler"

    const-string/jumbo v1, "resetMediaAndScreenlock()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v0}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 489
    iget-object v0, p0, Lavh;->c:Lauw;

    invoke-virtual {v0}, Lauw;->d()V

    .line 490
    iget-object v0, p0, Lavh;->c:Lauw;

    invoke-virtual {v0}, Lauw;->b()V

    .line 492
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 672
    const-string/jumbo v0, "ScheduleTriggerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeSchedule() | schedule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    if-eqz p1, :cond_3

    .line 676
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0, p1}, Lavk;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v1

    .line 678
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v2

    .line 677
    invoke-virtual {v0, v1, v2, v3}, Lavk;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lavh;->f(I)V

    .line 681
    :cond_0
    invoke-direct {p0}, Lavh;->f()V

    .line 684
    :cond_1
    iget-object v0, p0, Lavh;->f:Lavd;

    invoke-virtual {v0, p1}, Lavd;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lavh;->b(I)V

    .line 686
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lavh;->d(I)V

    .line 688
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 689
    iget-object v0, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 695
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lavh;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 696
    invoke-direct {p0}, Lavh;->h()Z

    .line 698
    :cond_3
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "datedScheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const-wide/16 v8, 0x0

    .line 722
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 723
    :cond_0
    const-string/jumbo v4, "ScheduleTriggerHandler"

    const-string/jumbo v5, "handleDated() | datedScheduleList=null -> return"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :goto_0
    return-void

    .line 726
    :cond_1
    const-string/jumbo v4, "ScheduleTriggerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleDated() | dated schedule list\'s size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 727
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v0, "commonSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v2, "otherSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 733
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v1, :cond_2

    .line 736
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 737
    const-string/jumbo v5, "ScheduleTriggerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDatedSchedule(), find a common item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 741
    :cond_3
    const-string/jumbo v5, "ScheduleTriggerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDatedSchedule(), find a business item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 746
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_4
    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 747
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 748
    .local v3, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v3, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 749
    iget-object v5, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v5, v3}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    goto :goto_2

    .line 784
    .end local v3    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 785
    .restart local v3    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v5, p0, Lavh;->g:Lavc;

    invoke-virtual {v5, v3}, Lavc;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 788
    iget-object v5, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->completeSchedule(I)V

    .line 791
    invoke-virtual {v3, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 792
    iget-object v5, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v5, v3}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 795
    iget-object v5, p0, Lavh;->a:Landroid/content/Context;

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-static {v5, v6, v3}, Lauo;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_3

    .line 798
    .end local v3    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_6
    invoke-direct {p0}, Lavh;->g()V

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0}, Lavk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavh;->f:Lavd;

    invoke-virtual {v0}, Lavd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavh;->g:Lavc;

    invoke-virtual {v0}, Lavc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;J)Z
    .locals 8
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "delayMilliSecond"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 803
    const-string/jumbo v4, "ScheduleTriggerHandler"

    const-string/jumbo v5, "handleDelay()"

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v3, 0x0

    .line 805
    .local v3, "ret":Z
    if-eqz p1, :cond_2

    cmp-long v4, p2, v6

    if-lez v4, :cond_2

    .line 806
    const-wide/16 v0, 0x0

    .line 809
    .local v0, "delayTriggerTime":J
    iget-object v4, p0, Lavh;->e:Lavk;

    invoke-virtual {v4, p1}, Lavk;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 810
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Lavh;->e(I)V

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lbaa;->h(J)J

    move-result-wide v4

    add-long v0, v4, p2

    .line 817
    :cond_0
    iget-object v4, p0, Lavh;->f:Lavd;

    invoke-virtual {v4, p1}, Lavd;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    iget-object v4, p0, Lavh;->f:Lavd;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lavd;->a(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    .line 820
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    add-long v0, v4, p2

    .line 822
    iget-object v4, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v4, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->cancelAlarm(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 824
    iget-object v4, p0, Lavh;->f:Lavd;

    invoke-virtual {v4, p1}, Lavd;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    .line 826
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lavh;->d(I)V

    .line 829
    :cond_1
    cmp-long v4, v0, v6

    if-eqz v4, :cond_2

    .line 830
    invoke-virtual {p1, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 831
    invoke-virtual {p1, p2, p3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 832
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 834
    iget-object v4, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v4, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    .line 835
    .local v2, "result":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v2, :cond_2

    .line 836
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 837
    iget-object v4, p0, Lavh;->f:Lavd;

    invoke-virtual {v4, v2}, Lavd;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 838
    invoke-direct {p0, v2}, Lavh;->e(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 839
    const/4 v3, 0x1

    .line 843
    .end local v0    # "delayTriggerTime":J
    .end local v2    # "result":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_2
    const-string/jumbo v4, "ScheduleTriggerHandler"

    const-string/jumbo v5, "delaySchedule  stopMediaAndResetScreenLock"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lavh;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 845
    invoke-direct {p0}, Lavh;->h()Z

    .line 846
    return v3
.end method

.method public b()V
    .locals 2

    .prologue
    .line 851
    const-string/jumbo v0, "ScheduleTriggerHandler"

    const-string/jumbo v1, "onFinish()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0}, Lavk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0}, Lavk;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lavh;->a(Ljava/util/List;)V

    .line 854
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0}, Lavk;->c()V

    .line 857
    :cond_0
    iget-object v0, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v0}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v0

    invoke-virtual {v0}, Lavb;->b()V

    .line 859
    iget-object v0, p0, Lavh;->f:Lavd;

    invoke-virtual {v0}, Lavd;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    invoke-direct {p0}, Lavh;->i()V

    .line 861
    iget-object v0, p0, Lavh;->f:Lavd;

    invoke-virtual {v0}, Lavd;->c()V

    .line 865
    :cond_1
    iget-object v0, p0, Lavh;->g:Lavc;

    invoke-virtual {v0}, Lavc;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 866
    iget-object v0, p0, Lavh;->g:Lavc;

    invoke-virtual {v0}, Lavc;->c()V

    .line 869
    :cond_2
    invoke-virtual {p0}, Lavh;->e()V

    .line 870
    invoke-direct {p0}, Lavh;->k()V

    .line 871
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lavh;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 872
    return-void
.end method

.method public b(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 566
    iget-object v2, p0, Lavh;->f:Lavd;

    if-nez v2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v2, p0, Lavh;->f:Lavd;

    invoke-virtual {v2, p1}, Lavd;->a(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "deleteSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    iget-object v2, p0, Lavh;->f:Lavd;

    invoke-virtual {v2, p1}, Lavd;->a(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->clone()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 579
    :goto_1
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Lavh;->d(I)V

    .line 583
    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 584
    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 585
    iget-object v2, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v2, v0}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 586
    iget-object v2, p0, Lavh;->f:Lavd;

    invoke-virtual {v2, v0}, Lavd;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    .line 587
    const-string/jumbo v2, "ScheduleTriggerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteDelayCach() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0}, Lavh;->h()Z

    goto :goto_0

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 8
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const-wide/16 v6, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 94
    const-string/jumbo v3, "ScheduleTriggerHandler"

    const-string/jumbo v4, "handleAlert() | schedule=null -> return"

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string/jumbo v3, "ScheduleTriggerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAlert() | get alert schedule | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    .line 100
    .local v1, "ringtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "subType":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v1, :cond_4

    .line 102
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "normal"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    .line 115
    :cond_1
    :goto_1
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 116
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100127"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 118
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "alertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {p1}, Lawh;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 121
    invoke-direct {p0, v0}, Lavh;->b(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    invoke-direct {p0}, Lavh;->f()V

    .line 123
    const-string/jumbo v3, "ScheduleTriggerHandler"

    const-string/jumbo v4, "handleAlertSchedule | schedule is not delay"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, p1}, Lavh;->d(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 125
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v3}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v3

    invoke-virtual {v3}, Ltd;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 126
    iget-object v3, p0, Lavh;->e:Lavk;

    invoke-virtual {v3}, Lavk;->b()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-direct {p0, v3, v4}, Lavh;->a(Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V

    .line 130
    :cond_3
    iget-object v3, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->completeSchedule(I)V

    .line 132
    invoke-virtual {p1, v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 133
    iget-object v3, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v3, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 135
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-static {v3, v4, p1}, Lauo;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto/16 :goto_0

    .line 103
    .end local v0    # "alertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_4
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v3, v1, :cond_5

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v1, :cond_6

    .line 104
    :cond_5
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "normal"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 105
    :cond_6
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v1, :cond_8

    .line 106
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 107
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "morning"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    :cond_7
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "night"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    :cond_8
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v1, :cond_1

    .line 112
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "weather"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    .restart local v0    # "alertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_9
    const-string/jumbo v3, "ScheduleTriggerHandler"

    const-string/jumbo v4, "handleAlertSchedule | schedule is delay"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v3, p0, Lavh;->f:Lavd;

    invoke-virtual {v3, p1}, Lavd;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 139
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lavh;->d(I)V

    .line 140
    const-string/jumbo v3, "ScheduleTriggerHandler"

    const-string/jumbo v4, "handleAlertSchedule | delete schedule in delay pool"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_a
    iget-object v3, p0, Lavh;->g:Lavc;

    invoke-virtual {v3, p1}, Lavc;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 143
    invoke-direct {p0}, Lavh;->g()V

    .line 145
    iget-object v3, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->completeSchedule(I)V

    .line 148
    invoke-virtual {p1, v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 149
    iget-object v3, p0, Lavh;->b:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    invoke-interface {v3, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 152
    iget-object v3, p0, Lavh;->a:Landroid/content/Context;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-static {v3, v4, p1}, Lauo;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto/16 :goto_0
.end method

.method public c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 15
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 280
    const-string/jumbo v11, "ScheduleTriggerHandler"

    const-string/jumbo v12, "notifyDelaySchedule"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v0, Lm$d;

    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    invoke-direct {v0, v11}, Lm$d;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, "builder":Lm$d;
    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0300fd

    invoke-direct {v9, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 288
    .local v9, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    invoke-direct {p0, v11, v9}, Lavh;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v12

    invoke-direct {p0, v12, v13}, Lavh;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "content":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lavh;->g(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "scheduleContent":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 293
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    :cond_1
    const v11, 0x7f0b05f5

    invoke-virtual {v9, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 301
    new-instance v4, Landroid/content/Intent;

    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    const-class v12, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v4, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v11, "handle_type"

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->delete_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    .line 303
    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->toString()Ljava/lang/String;

    move-result-object v12

    .line 302
    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v11, "id"

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v12

    const/4 v13, 0x0

    .line 305
    invoke-static {v11, v12, v4, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 312
    .local v5, "deletePi":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    const-class v12, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {v2, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v2, "contentIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string/jumbo v11, "handle_type"

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    .line 315
    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->toString()Ljava/lang/String;

    move-result-object v12

    .line 314
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v11, "id"

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v12

    const/4 v13, 0x0

    .line 317
    invoke-static {v11, v12, v2, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 321
    .local v3, "contentPi":Landroid/app/PendingIntent;
    const-string/jumbo v11, "\u7075\u7280\u95f9\u949f"

    invoke-virtual {v0, v11}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v11

    .line 322
    invoke-virtual {v11, v1}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v11

    .line 323
    invoke-virtual {v11, v3}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v11

    .line 324
    invoke-virtual {v11, v5}, Lm$d;->b(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v11

    const v12, -0xff0100

    const/16 v13, 0x12c

    const/16 v14, 0xbb8

    .line 325
    invoke-virtual {v11, v12, v13, v14}, Lm$d;->a(III)Lm$d;

    move-result-object v11

    const/4 v12, 0x1

    .line 326
    invoke-virtual {v11, v12}, Lm$d;->a(Z)Lm$d;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 327
    invoke-virtual {v11, v12, v13}, Lm$d;->a(J)Lm$d;

    move-result-object v11

    const/4 v12, 0x1

    .line 328
    invoke-virtual {v11, v12}, Lm$d;->b(Z)Lm$d;

    move-result-object v11

    const v12, 0x7f0203c0

    .line 329
    invoke-virtual {v11, v12}, Lm$d;->a(I)Lm$d;

    .line 331
    invoke-static {}, Lhl;->k()I

    move-result v11

    const/16 v12, 0xd

    if-le v11, v12, :cond_2

    .line 332
    invoke-virtual {v0, v9}, Lm$d;->a(Landroid/widget/RemoteViews;)Lm$d;

    .line 335
    :cond_2
    invoke-virtual {v0}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v7

    .line 338
    .local v7, "notification":Landroid/app/Notification;
    :try_start_0
    iget-object v11, p0, Lavh;->a:Landroid/content/Context;

    const-string/jumbo v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 339
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v11

    invoke-static {v11}, Lof;->a(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 340
    .end local v8    # "notificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v6

    .line 341
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ScheduleTriggerHandler"

    const-string/jumbo v12, "addNotification error"

    invoke-static {v11, v12, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public c()Z
    .locals 5

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "ret":Z
    iget-object v2, p0, Lavh;->e:Lavk;

    invoke-virtual {v2}, Lavk;->b()Ljava/util/List;

    move-result-object v1

    .line 596
    .local v1, "triggerSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "triggerSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_trigger_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-direct {p0, v1, v2}, Lavh;->a(Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V

    .line 598
    const/4 v0, 0x1

    .line 600
    :cond_0
    const-string/jumbo v2, "ScheduleTriggerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTriggerDialog(), ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v0
.end method

.method public c(I)Z
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 606
    const/4 v2, 0x0

    .line 607
    .local v2, "ret":Z
    iget-object v4, p0, Lavh;->f:Lavd;

    invoke-virtual {v4}, Lavd;->b()Ljava/util/List;

    move-result-object v0

    .line 608
    .local v0, "delaySchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 609
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 610
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v3, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-direct {p0, v3, v4}, Lavh;->a(Ljava/util/ArrayList;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;)V

    .line 613
    const/4 v2, 0x1

    .line 617
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v3    # "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_1
    const-string/jumbo v4, "ScheduleTriggerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDelayDialog(), ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return v2
.end method

.method public d()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0}, Lavk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    const-string/jumbo v0, "ScheduleTriggerHandler"

    const-string/jumbo v1, "clearCacheTrigger()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0}, Lavk;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lavh;->a(Ljava/util/List;)V

    .line 661
    iget-object v0, p0, Lavh;->e:Lavk;

    invoke-virtual {v0}, Lavk;->c()V

    .line 663
    invoke-direct {p0}, Lavh;->f()V

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lavh;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 666
    invoke-direct {p0}, Lavh;->h()Z

    .line 668
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 506
    const-string/jumbo v1, "ScheduleTriggerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteDelayNotice() | id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lavh;->a:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    .line 509
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 510
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {p1}, Lof;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 511
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 709
    const-string/jumbo v0, "ScheduleTriggerHandler"

    const-string/jumbo v1, "deleteTriggerNotifyBar()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lavh;->a:Landroid/content/Context;

    sget v1, Lof;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Loe;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 713
    return-void
.end method
