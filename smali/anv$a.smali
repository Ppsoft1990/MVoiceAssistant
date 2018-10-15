.class Lanv$a;
.super Landroid/os/Handler;
.source "BookTokenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lanv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanv;)V
    .locals 1
    .param p1, "activity"    # Lanv;

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lanv$a;->a:Ljava/lang/ref/WeakReference;

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 399
    iget-object v1, p0, Lanv$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanv;

    .line 400
    .local v0, "outer":Lanv;
    if-eqz v0, :cond_0

    .line 401
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 402
    invoke-virtual {v0}, Lanv;->b()V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 404
    const-string/jumbo v1, "BookTokenHelper"

    const-string/jumbo v2, "time out handler is execute"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lanv;->a(Lanv;Z)Z

    goto :goto_0
.end method
