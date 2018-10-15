.class public abstract Laht;
.super Ljava/lang/Object;
.source "HomeBizHelper.java"


# instance fields
.field protected b:Lahu;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Laht;->b:Lahu;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public a(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public b_()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Laht;->b:Lahu;

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Laht;->b:Lahu;

    .line 198
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public d(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/iflytek/yd/speech/ISpeechHandler;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->f()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/ISpeechHandler;

    goto :goto_0
.end method

.method public l()Lpp;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->g()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->g()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpp;

    goto :goto_0
.end method

.method public o()Landroid/content/Context;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->a()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method public p()Landroid/content/Context;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->b()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method public q()Lahw;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->c()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahw;

    goto :goto_0
.end method

.method public r()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->i()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->i()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public s()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->d()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public t()Lcom/iflytek/viafly/Home$b;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->e()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->e()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/Home$b;

    goto :goto_0
.end method

.method public u()Lqr;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Laht;->b:Lahu;

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    iget-object v1, p0, Laht;->b:Lahu;

    invoke-interface {v1}, Lahu;->h()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Laht;->b:Lahu;

    invoke-interface {v0}, Lahu;->h()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqr;

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method
