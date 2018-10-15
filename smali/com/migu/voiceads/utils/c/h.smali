.class Lcom/migu/voiceads/utils/c/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/c/a;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/h;->a:Lcom/migu/voiceads/utils/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/c/h;->a:Lcom/migu/voiceads/utils/c/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/c/a;->c()V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "\u79fb\u9664\u5e7f\u64ad end"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
