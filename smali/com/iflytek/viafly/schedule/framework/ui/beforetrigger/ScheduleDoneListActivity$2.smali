.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;
.super Ljava/lang/Object;
.source "ScheduleDoneListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lauu;->d(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    .line 217
    .local v2, "scheduleList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 220
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->deleteSchedule(I)V

    goto :goto_0

    .line 222
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;)V

    .line 223
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 224
    return-void
.end method
