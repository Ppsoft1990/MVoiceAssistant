.class Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;
.super Landroid/os/Handler;
.source "HotWordUpLoadingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 183
    .local v1, "host":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    .line 188
    .local v0, "errorMsg":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_1
    if-eqz v0, :cond_0

    .line 212
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-static {v2, v0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$400(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;I)V

    goto :goto_1

    .line 194
    :pswitch_1
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    const v3, 0x7f0c00c0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    goto :goto_1

    .line 197
    :pswitch_2
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V

    goto :goto_1

    .line 200
    :pswitch_3
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;I)V

    goto :goto_1

    .line 203
    :pswitch_4
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    const v3, 0x7f0c00c7

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    goto :goto_1

    .line 206
    :pswitch_5
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    const v3, 0x7f0c00c4

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    goto :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
