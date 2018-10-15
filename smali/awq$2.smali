.class Lawq$2;
.super Landroid/os/Handler;
.source "PersonalizedRingtoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawq;


# direct methods
.method constructor <init>(Lawq;)V
    .locals 0
    .param p1, "this$0"    # Lawq;

    .prologue
    .line 529
    iput-object p1, p0, Lawq$2;->a:Lawq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 531
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 533
    :pswitch_0
    iget-object v0, p0, Lawq$2;->a:Lawq;

    invoke-static {v0}, Lawq;->c(Lawq;)Lawt;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawt;->a(I)V

    goto :goto_0

    .line 536
    :pswitch_1
    iget-object v0, p0, Lawq$2;->a:Lawq;

    invoke-static {v0}, Lawq;->c(Lawq;)Lawt;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawt;->b(I)V

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
