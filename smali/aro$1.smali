.class Laro$1;
.super Landroid/os/Handler;
.source "PluginFileExistChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laro;


# direct methods
.method constructor <init>(Laro;)V
    .locals 0
    .param p1, "this$0"    # Laro;

    .prologue
    .line 27
    iput-object p1, p0, Laro$1;->a:Laro;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 30
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 41
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    return-void

    .line 32
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 33
    .local v1, "result":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laro$a;

    .line 34
    .local v0, "listener":Laro$a;
    if-eqz v0, :cond_0

    .line 35
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-interface {v0, v3, v2}, Laro$a;->a(IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
