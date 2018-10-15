.class Lamp$2;
.super Landroid/os/Handler;
.source "BookBizManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamp;


# direct methods
.method constructor <init>(Lamp;)V
    .locals 0
    .param p1, "this$0"    # Lamp;

    .prologue
    .line 1275
    iput-object p1, p0, Lamp$2;->a:Lamp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1279
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1316
    :goto_0
    :pswitch_0
    return-void

    .line 1282
    :pswitch_1
    iget-object v2, p0, Lamp$2;->a:Lamp;

    invoke-static {v2}, Lamp;->e(Lamp;)Lams;

    move-result-object v2

    invoke-virtual {v2}, Lams;->a()J

    goto :goto_0

    .line 1285
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1286
    .local v0, "chapterID":Ljava/lang/String;
    iget-object v2, p0, Lamp$2;->a:Lamp;

    invoke-static {v2}, Lamp;->e(Lamp;)Lams;

    move-result-object v2

    invoke-virtual {v2, v0}, Lams;->a(Ljava/lang/String;)J

    goto :goto_0

    .line 1293
    .end local v0    # "chapterID":Ljava/lang/String;
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1294
    .local v1, "index":I
    iget-object v2, p0, Lamp$2;->a:Lamp;

    invoke-static {v2}, Lamp;->e(Lamp;)Lams;

    move-result-object v2

    invoke-virtual {v2, v1}, Lams;->a(I)J

    goto :goto_0

    .line 1298
    .end local v1    # "index":I
    :pswitch_4
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v2

    invoke-virtual {v2}, Lamz;->d()V

    goto :goto_0

    .line 1301
    :pswitch_5
    iget-object v2, p0, Lamp$2;->a:Lamp;

    invoke-virtual {v2}, Lamp;->j()V

    goto :goto_0

    .line 1304
    :pswitch_6
    iget-object v2, p0, Lamp$2;->a:Lamp;

    invoke-virtual {v2}, Lamp;->i()V

    goto :goto_0

    .line 1307
    :pswitch_7
    iget-object v2, p0, Lamp$2;->a:Lamp;

    invoke-static {v2}, Lamp;->h(Lamp;)V

    goto :goto_0

    .line 1310
    :pswitch_8
    iget-object v2, p0, Lamp$2;->a:Lamp;

    invoke-virtual {v2}, Lamp;->E()I

    goto :goto_0

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
