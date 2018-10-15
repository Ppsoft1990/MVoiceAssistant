.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$1;
.super Ljava/lang/Object;
.source "ScheduleDoneListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v2, "ScheduleDoneListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemClickposition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;)Lavt;

    move-result-object v2

    invoke-virtual {v2, p3}, Lavt;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 91
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    const-class v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    const-string/jumbo v2, "operation_type"

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 100
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v2, "is_need_delete_button"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
