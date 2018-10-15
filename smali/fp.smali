.class Lfp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lfo;


# direct methods
.method constructor <init>(Lfo;)V
    .locals 0

    iput-object p1, p0, Lfp;->a:Lfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/baidu/location/f;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lfp;->a:Lfo;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lfo;->a(Lfo;Landroid/location/Location;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lfp;->a:Lfo;

    invoke-static {v0}, Lfo;->a(Lfo;)Lfo$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfp;->a:Lfo;

    invoke-static {v0}, Lfo;->a(Lfo;)Lfo$a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lfo$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lfp;->a:Lfo;

    const-string/jumbo v2, "&og=1"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v2, v0}, Lfo;->a(Lfo;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lfp;->a:Lfo;

    const-string/jumbo v2, "&og=2"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v2, v0}, Lfo;->a(Lfo;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
