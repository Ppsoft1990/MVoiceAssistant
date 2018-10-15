.class Lalq$2;
.super Ljava/lang/Object;
.source "CmccSignHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalq;


# direct methods
.method constructor <init>(Lalq;)V
    .locals 0
    .param p1, "this$0"    # Lalq;

    .prologue
    .line 165
    iput-object p1, p0, Lalq$2;->a:Lalq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 170
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 171
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lalq$2;->a:Lalq;

    invoke-static {v2, v1}, Lalq;->a(Lalq;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "opCode":Ljava/lang/String;
    iget-object v2, p0, Lalq$2;->a:Lalq;

    invoke-static {v2, v0}, Lalq;->b(Lalq;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
