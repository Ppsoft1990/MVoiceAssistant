.class Lcom/iflytek/viafly/ui/LocatProgressDialog$1;
.super Landroid/os/Handler;
.source "LocatProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/LocatProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/LocatProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$000(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$100(Lcom/iflytek/viafly/ui/LocatProgressDialog;)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1, v5}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$202(Lcom/iflytek/viafly/ui/LocatProgressDialog;Z)Z

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->dismiss()V

    .line 77
    const-string/jumbo v1, "LBS_LocatProgressDialog"

    const-string/jumbo v2, "startTextSearch Finish"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :pswitch_2
    const-string/jumbo v1, "LBS_LocatProgressDialog"

    const-string/jumbo v2, "startTextSearch ERROR"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$000(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$000(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$202(Lcom/iflytek/viafly/ui/LocatProgressDialog;Z)Z

    .line 84
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->dismiss()V

    goto :goto_0

    .line 87
    :pswitch_3
    const-string/jumbo v1, "LBS_LocatProgressDialog"

    const-string/jumbo v2, "locateFinish here"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 91
    .local v0, "xAddress":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->isFromCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$000(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .line 93
    invoke-static {v2}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$000(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$202(Lcom/iflytek/viafly/ui/LocatProgressDialog;Z)Z

    .line 96
    const-string/jumbo v1, "LBS_LocatProgressDialog"

    const-string/jumbo v2, "xAddress is from Cache!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 100
    :cond_0
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string/jumbo v1, "LBS_LocatProgressDialog"

    const-string/jumbo v2, "xAddress is Changed"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$300(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 104
    :cond_1
    const-string/jumbo v1, "LBS_LocatProgressDialog"

    const-string/jumbo v2, "xAddress is not Changed"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-static {v1, v5}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->access$202(Lcom/iflytek/viafly/ui/LocatProgressDialog;Z)Z

    .line 106
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 109
    .end local v0    # "xAddress":Lcom/iflytek/common/lbs/XAddress;
    :cond_2
    const-string/jumbo v1, "LBS_LocatProgressDialog"

    const-string/jumbo v2, "onLocatFinish dialog is not showing."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;->this$0:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
