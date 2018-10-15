.class final Lcom/iflytek/common/speech/test/SpeechTestService$a;
.super Landroid/os/Handler;
.source "SpeechTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/speech/test/SpeechTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/common/speech/test/SpeechTestService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/iflytek/common/speech/test/SpeechTestService;

.field private c:I

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/common/speech/test/SpeechTestService;Landroid/os/Looper;Lcom/iflytek/common/speech/test/SpeechTestService;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "service"    # Lcom/iflytek/common/speech/test/SpeechTestService;

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->b:Lcom/iflytek/common/speech/test/SpeechTestService;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    iput v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->c:I

    .line 160
    iput-boolean v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->d:Z

    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a:Ljava/lang/ref/WeakReference;

    .line 162
    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 3
    .param p1, "add"    # Z

    .prologue
    .line 213
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 214
    :try_start_0
    iget v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->c:I

    .line 218
    :goto_0
    const-string/jumbo v0, "SpeechTestService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add or remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget-boolean v1, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->d:Z

    if-eqz v1, :cond_1

    .line 192
    const/4 v0, 0x0

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 196
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a(Z)V

    goto :goto_0
.end method

.method public declared-synchronized b()I
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 229
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a(Z)V

    .line 232
    iget-object v1, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/speech/test/SpeechTestService;

    .line 233
    .local v0, "speechService":Lcom/iflytek/common/speech/test/SpeechTestService;
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-static {v0}, Lcom/iflytek/common/speech/test/SpeechTestService;->a(Lcom/iflytek/common/speech/test/SpeechTestService;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 243
    iget-object v1, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/speech/test/SpeechTestService;

    .line 244
    .local v0, "speechService":Lcom/iflytek/common/speech/test/SpeechTestService;
    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 247
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    const-string/jumbo v1, "SpeechTestService"

    const-string/jumbo v2, "MSG_SPEECH"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->b:Lcom/iflytek/common/speech/test/SpeechTestService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/iflytek/common/speech/test/SpeechTestService;->a(Lcom/iflytek/common/speech/test/SpeechTestService;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_1
    const-string/jumbo v1, "SpeechTestService"

    const-string/jumbo v2, "MSG_GET_RESULT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/iflytek/common/speech/test/SpeechTestService$a;->b:Lcom/iflytek/common/speech/test/SpeechTestService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/iflytek/common/speech/test/SpeechTestService;->b(Lcom/iflytek/common/speech/test/SpeechTestService;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
