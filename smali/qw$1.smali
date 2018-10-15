.class Lqw$1;
.super Ljava/lang/Object;
.source "DefaultPresenter.java"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqv$a",
        "<TV;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lqw;


# direct methods
.method constructor <init>(Lqw;)V
    .locals 0
    .param p1, "this$0"    # Lqw;

    .prologue
    .line 83
    .local p0, "this":Lqw$1;, "Lqw$1;"
    iput-object p1, p0, Lqw$1;->a:Lqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lqw$1;, "Lqw$1;"
    iget-object v0, p0, Lqw$1;->a:Lqw;

    invoke-static {v0}, Lqw;->a(Lqw;)Lqw$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lqw$1;, "Lqw$1;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lqw$1;->a:Lqw;

    invoke-static {v0}, Lqw;->a(Lqw;)Lqw$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    return-void
.end method
