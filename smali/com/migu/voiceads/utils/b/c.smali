.class Lcom/migu/voiceads/utils/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/b/f$b;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/b/b;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/b/c;->a:Lcom/migu/voiceads/utils/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/c;->a:Lcom/migu/voiceads/utils/b/b;

    iget-object v0, v0, Lcom/migu/voiceads/utils/b/b;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/b/c;->a:Lcom/migu/voiceads/utils/b/b;

    iget-object v1, v1, Lcom/migu/voiceads/utils/b/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/c;->a:Lcom/migu/voiceads/utils/b/b;

    invoke-static {v0}, Lcom/migu/voiceads/utils/b/b;->a(Lcom/migu/voiceads/utils/b/b;)Lcom/migu/voiceads/utils/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/b/e;->a(Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "get image from network success!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/c;->a:Lcom/migu/voiceads/utils/b/b;

    iget-object v0, v0, Lcom/migu/voiceads/utils/b/b;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/migu/voiceads/utils/b/c;->a:Lcom/migu/voiceads/utils/b/b;

    iget-object v1, v1, Lcom/migu/voiceads/utils/b/b;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "get image from network failed!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
