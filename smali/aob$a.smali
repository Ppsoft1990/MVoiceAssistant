.class Laob$a;
.super Landroid/os/Handler;
.source "MiguAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laob;
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
            "Laob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laob;)V
    .locals 1
    .param p1, "activity"    # Laob;

    .prologue
    .line 510
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 511
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laob$a;->a:Ljava/lang/ref/WeakReference;

    .line 512
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 516
    iget-object v1, p0, Laob$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laob;

    .line 517
    .local v0, "outer":Laob;
    if-eqz v0, :cond_0

    .line 518
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 519
    invoke-virtual {v0}, Laob;->b()V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 521
    const-string/jumbo v1, "MiguAuthHelper"

    const-string/jumbo v2, "time out handler is execute"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v1, 0x7d6

    invoke-static {v0, v1}, Laob;->a(Laob;I)V

    goto :goto_0
.end method
