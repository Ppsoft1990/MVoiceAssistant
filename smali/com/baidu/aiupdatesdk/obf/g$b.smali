.class final Lcom/baidu/aiupdatesdk/obf/g$b;
.super Landroid/os/Handler;
.source "BDFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/obf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/g;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/g;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/aiupdatesdk/obf/g;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/aiupdatesdk/obf/g$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void
.end method

.method public a(IJJ)V
    .locals 4
    .param p1, "percent"    # I
    .param p2, "receiveLength"    # J
    .param p4, "fileSize"    # J

    .prologue
    const/4 v3, 0x3

    .line 251
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 255
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 252
    invoke-virtual {p0, v3, v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->sendMessage(Landroid/os/Message;)Z

    .line 248
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/aiupdatesdk/obf/g$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->sendMessage(Landroid/os/Message;)Z

    .line 264
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/aiupdatesdk/obf/g$c;->a()V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 220
    .local v6, "response":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    aget-object v1, v6, v1

    check-cast v1, Ljava/lang/Integer;

    .line 222
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v6, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, v6, v4

    check-cast v4, Ljava/lang/Long;

    .line 223
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 221
    invoke-interface/range {v0 .. v5}, Lcom/baidu/aiupdatesdk/obf/g$c;->a(IJJ)V

    goto :goto_0

    .line 228
    .end local v6    # "response":[Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 229
    .restart local v6    # "response":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v2

    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/Throwable;

    aget-object v1, v6, v3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/baidu/aiupdatesdk/obf/g$c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .end local v6    # "response":[Ljava/lang/Object;
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/g$b;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/g;->f(Lcom/baidu/aiupdatesdk/obf/g;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/aiupdatesdk/obf/g$c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
