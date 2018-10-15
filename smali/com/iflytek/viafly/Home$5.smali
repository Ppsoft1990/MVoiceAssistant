.class Lcom/iflytek/viafly/Home$5;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/Home;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/iflytek/viafly/Home$5;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1733
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1745
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1735
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/Home$5;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v0}, Lcom/iflytek/viafly/Home;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/iflytek/viafly/Home$5;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v0}, Lcom/iflytek/viafly/Home;->n(Lcom/iflytek/viafly/Home;)V

    goto :goto_0

    .line 1738
    :cond_0
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "is finishing -> cancel call extra()"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1733
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
