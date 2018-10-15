.class Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$1;
.super Landroid/os/Handler;
.source "CardsMgrFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->access$000(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->access$100(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->notifyDataSetChanged()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
