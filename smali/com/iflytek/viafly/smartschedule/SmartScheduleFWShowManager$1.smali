.class Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;
.super Ljava/lang/Object;
.source "SmartScheduleFWShowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->showSmallFloatView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$000(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V

    .line 203
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$200(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    const-string/jumbo v4, "com.iflytek.cmccgoto_smart_card_activity"

    iget-object v6, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$200(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 207
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$302(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;Z)Z

    .line 211
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->getLatestData()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    move-result-object v0

    .line 212
    .local v0, "curData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 213
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_schedule_name"

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lxm;->a(Ljava/util/Map;)V

    .line 218
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$400(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxb;->a(Ljava/lang/String;)V

    .line 222
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_200004"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    .end local v0    # "curData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 207
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 223
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->access$500(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
