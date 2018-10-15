.class Luk$a;
.super Landroid/os/Handler;
.source "DataEncodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Luk;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Luk;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "encodeThread"    # Luk;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    iput-object p2, p0, Luk$a;->a:Luk;

    .line 43
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 50
    :cond_0
    iget-object v0, p0, Luk$a;->a:Luk;

    invoke-static {v0}, Luk;->a(Luk;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Luk$a;->a:Luk;

    invoke-static {v0}, Luk;->b(Luk;)V

    .line 53
    invoke-virtual {p0}, Luk$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 54
    invoke-static {}, Luk;->c()Lul;

    move-result-object v0

    invoke-virtual {v0}, Lul;->d()V

    .line 55
    const-string/jumbo v0, "DataEncodeThread"

    const-string/jumbo v1, "mp3\u8f6c\u5199\u5b8c\u6210"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    return-void
.end method
