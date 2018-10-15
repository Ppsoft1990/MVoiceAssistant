.class Lje$a;
.super Landroid/os/Handler;
.source "SoundManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lje;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lje;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 235
    iput-object p1, p0, Lje$a;->a:Lje;

    .line 236
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lje$a;->b:Z

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lje$a;->c:I

    .line 237
    return-void
.end method

.method private b(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0xb

    .line 281
    iput p1, p0, Lje$a;->c:I

    .line 282
    invoke-virtual {p0, v6}, Lje$a;->removeMessages(I)V

    .line 284
    const/4 v2, 0x3

    .line 285
    .local v2, "streamType":I
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v3

    invoke-virtual {v3}, Lgs;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    const/4 v2, 0x0

    .line 289
    :cond_0
    iget-object v3, p0, Lje$a;->a:Lje;

    invoke-static {v3}, Lje;->a(Lje;)Lid;

    move-result-object v3

    invoke-virtual {v3}, Lid;->e()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 290
    iget-object v3, p0, Lje$a;->a:Lje;

    invoke-static {v3}, Lje;->a(Lje;)Lid;

    move-result-object v3

    invoke-virtual {v3}, Lid;->a()V

    .line 291
    iget-object v3, p0, Lje$a;->a:Lje;

    iget-object v4, p0, Lje$a;->a:Lje;

    invoke-static {v4}, Lje;->b(Lje;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lid;->a(Landroid/content/Context;I)Lid;

    move-result-object v4

    invoke-static {v3, v4}, Lje;->a(Lje;Lid;)Lid;

    .line 293
    const-string/jumbo v3, "SPEECH_SoundManagerV2"

    const-string/jumbo v4, "PlayHandler onPlay need create new"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_1
    iget-object v3, p0, Lje$a;->a:Lje;

    invoke-static {v3, p1}, Lje;->a(Lje;I)[B

    move-result-object v0

    .line 299
    .local v0, "data":[B
    if-eqz v0, :cond_3

    .line 300
    iget-object v3, p0, Lje$a;->a:Lje;

    invoke-static {v3}, Lje;->a(Lje;)Lid;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lid;->a(Z)V

    .line 302
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "repeatCount":I
    :goto_0
    iget-boolean v3, p0, Lje$a;->b:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_3

    .line 305
    iget-object v3, p0, Lje$a;->a:Lje;

    invoke-static {v3}, Lje;->a(Lje;)Lid;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4, v0}, Lid;->a(I[B)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "repeatCount":I
    :cond_2
    iget-object v3, p0, Lje$a;->a:Lje;

    invoke-static {v3}, Lje;->a(Lje;)Lid;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4, v0}, Lid;->a(I[B)V

    .line 312
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lje$a;->c:I

    .line 313
    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v6, v4, v5}, Lje$a;->sendEmptyMessageDelayed(IJ)Z

    .line 314
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lje$a;->b:Z

    .line 256
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lje$a;->removeMessages(I)V

    .line 257
    iget-object v0, p0, Lje$a;->a:Lje;

    invoke-static {v0}, Lje;->a(Lje;)Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->c()V

    .line 258
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x2

    .line 266
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lje$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 267
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 268
    if-ne p1, v2, :cond_0

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lje$a;->b:Z

    .line 270
    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2, v3}, Lje$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 278
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lje$a;->b:Z

    .line 273
    iget v1, p0, Lje$a;->c:I

    if-ne v1, v2, :cond_1

    .line 274
    iget-object v1, p0, Lje$a;->a:Lje;

    invoke-static {v1}, Lje;->a(Lje;)Lid;

    move-result-object v1

    invoke-virtual {v1}, Lid;->c()V

    .line 276
    :cond_1
    invoke-virtual {p0, v0}, Lje$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lje$a;->b(I)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lje$a;->a:Lje;

    invoke-static {v0}, Lje;->a(Lje;)Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->d()V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
