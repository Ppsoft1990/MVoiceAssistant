.class Lcom/iflytek/framework/business/components/PayComponents$1;
.super Ljava/lang/Object;
.source "PayComponents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/PayComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/PayComponents;

.field final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/PayComponents;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/PayComponents;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iflytek/framework/business/components/PayComponents$1;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    iput-object p2, p0, Lcom/iflytek/framework/business/components/PayComponents$1;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-static {}, Lsi;->a()Lsj;

    move-result-object v1

    .line 77
    .local v1, "task":Lsj;
    if-eqz v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/iflytek/framework/business/components/PayComponents$1;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/iflytek/framework/business/components/PayComponents$1;->val$orderId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lsj;->a(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/framework/business/components/PayComponents$1;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-static {v2}, Lcom/iflytek/framework/business/components/PayComponents;->access$000(Lcom/iflytek/framework/business/components/PayComponents;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 83
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/business/components/PayComponents$1;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-static {v2}, Lcom/iflytek/framework/business/components/PayComponents;->access$000(Lcom/iflytek/framework/business/components/PayComponents;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
