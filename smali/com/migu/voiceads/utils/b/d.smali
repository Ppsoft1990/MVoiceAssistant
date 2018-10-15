.class Lcom/migu/voiceads/utils/b/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/b/b;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/b/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/b/d;->a:Lcom/migu/voiceads/utils/b/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/b/d;->a:Lcom/migu/voiceads/utils/b/b;

    invoke-static {v0}, Lcom/migu/voiceads/utils/b/b;->b(Lcom/migu/voiceads/utils/b/b;)Lcom/migu/voiceads/utils/b/b$a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/migu/voiceads/utils/b/b$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
