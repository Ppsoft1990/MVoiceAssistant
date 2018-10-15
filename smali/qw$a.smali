.class Lqw$a;
.super Landroid/os/Handler;
.source "DefaultPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private a:Lqw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqw$b",
            "<TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqw$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqw$b",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lqw$a;, "Lqw$a<TV;TT;>;"
    .local p1, "commondWordUIListener":Lqw$b;, "Lqw$b<TV;TT;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object p1, p0, Lqw$a;->a:Lqw$b;

    .line 23
    return-void
.end method

.method static synthetic a(Lqw$a;)Lqw$b;
    .locals 1
    .param p0, "x0"    # Lqw$a;

    .prologue
    .line 19
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    .local p0, "this":Lqw$a;, "Lqw$a<TV;TT;>;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    invoke-interface {v0}, Lqw$b;->b()V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lqw$b;->a(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    invoke-interface {v0}, Lqw$b;->c()V

    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lqw$a;->a:Lqw$b;

    invoke-interface {v0}, Lqw$b;->d()V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
