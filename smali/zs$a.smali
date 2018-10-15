.class Lzs$a;
.super Landroid/os/Handler;
.source "BroadcastFloatWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lzs;


# direct methods
.method public constructor <init>(Lzs;)V
    .locals 1
    .param p1, "manager"    # Lzs;

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    iput-object p1, p0, Lzs$a;->a:Lzs;

    .line 144
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget-object v0, p0, Lzs$a;->a:Lzs;

    .line 149
    .local v0, "manager":Lzs;
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-static {v0}, Lzs;->a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/call/BroadcastFloatView;->a(II)V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-static {v0}, Lzs;->b(Lzs;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 158
    invoke-static {v0}, Lzs;->b(Lzs;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->broadcast_float_window_show:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxb;->a(Ljava/lang/String;)V

    .line 162
    invoke-static {v0}, Lzs;->c(Lzs;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-static {v0}, Lzs;->d(Lzs;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v0}, Lzs;->a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    move-result-object v2

    invoke-static {v0}, Lzs;->b(Lzs;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzs;->a(Lzs;Z)Z

    .line 165
    invoke-static {v0}, Lzs;->a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/call/BroadcastFloatView;->b()V

    goto :goto_0

    .line 169
    :pswitch_3
    invoke-static {v0}, Lzs;->c(Lzs;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lzs;->e(Lzs;)J

    move-result-wide v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 171
    :try_start_0
    invoke-static {v0}, Lzs;->d(Lzs;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v0}, Lzs;->a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzs;->a(Lzs;Z)Z

    .line 175
    invoke-static {v0}, Lzs;->a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/call/BroadcastFloatView;->c()V

    goto/16 :goto_0

    .line 179
    :pswitch_4
    invoke-static {v0}, Lzs;->a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 180
    invoke-static {v0}, Lzs;->f(Lzs;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Lcom/iflytek/viafly/call/BroadcastFloatView;

    invoke-static {v0}, Lzs;->f(Lzs;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/call/BroadcastFloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lzs;->a(Lzs;Lcom/iflytek/viafly/call/BroadcastFloatView;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    goto/16 :goto_0

    .line 186
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 187
    invoke-static {v0}, Lzs;->a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/call/BroadcastFloatView;->setOnFloatWindowClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v1

    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
