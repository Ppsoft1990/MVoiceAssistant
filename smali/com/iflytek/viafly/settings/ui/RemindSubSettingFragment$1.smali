.class Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment$1;
.super Landroid/os/Handler;
.source "RemindSubSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 198
    :pswitch_0
    const-string/jumbo v0, "RemindSubSettingFragment"

    const-string/jumbo v1, "mhandle refresh listview"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;)V

    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->notifyDataSetChanged()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
