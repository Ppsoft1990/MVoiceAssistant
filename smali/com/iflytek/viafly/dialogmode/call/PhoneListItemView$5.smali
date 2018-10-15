.class Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$5;
.super Landroid/os/Handler;
.source "PhoneListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$5;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$5;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$5;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
