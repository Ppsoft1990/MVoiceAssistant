.class Ltm$4;
.super Ljava/lang/Object;
.source "UserVoiceLoginFragment.java"

# interfaces
.implements Lkr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .param p1, "this$0"    # Ltm;

    .prologue
    .line 276
    iput-object p1, p0, Ltm$4;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-virtual {v0}, Ltm;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-virtual {v0}, Ltm;->e()V

    .line 393
    :cond_0
    return-void
.end method

.method public a(IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Landroid/os/Bundle;

    .prologue
    .line 351
    return-void
.end method

.method public a(I[B)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "data"    # [B

    .prologue
    .line 281
    const-string/jumbo v0, "UserVoiceLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8fd4\u56de\u97f3\u9891\u6570\u636e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-virtual {v0}, Ltm;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-virtual {v0, p1}, Ltm;->a(I)V

    .line 285
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    .line 356
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-virtual {v0}, Ltm;->f()V

    .line 357
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 370
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->e()V

    .line 372
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    .line 376
    :goto_0
    return-void

    .line 360
    :sswitch_0
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u58f0\u7eb9\u5bc6\u7801\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u58f0\u7eb9\u5bc6\u7801\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ltm;->b(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->e()V

    .line 363
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-virtual {v0}, Ltm;->finish()V

    goto :goto_0

    .line 366
    :sswitch_1
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "\u5f15\u64ce\u51fa\u9519"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u58f0\u7eb9\u7cfb\u7edf\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u6765"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2784 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lks;)V
    .locals 3
    .param p1, "result"    # Lks;

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onResult result is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string/jumbo v0, "UserVoiceLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult result.source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lks;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v0, p1, Lks;->b:I

    if-nez v0, :cond_1

    .line 299
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "\u9a8c\u8bc1\u901a\u8fc7 "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-static {v0}, Ltm;->d(Ltm;)V

    .line 303
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90148"

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 308
    :cond_1
    iget v0, p1, Lks;->j:I

    packed-switch v0, :pswitch_data_0

    .line 338
    :pswitch_0
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u9a8c\u8bc1\u4e0d\u901a\u8fc7"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_3
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_4
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_5
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :pswitch_6
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :pswitch_7
    iget-object v0, p0, Ltm$4;->a:Ltm;

    const-string/jumbo v1, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v0, v1}, Ltm;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x2d50
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    .line 382
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Ltm$4;->a:Ltm;

    invoke-virtual {v0}, Ltm;->e()V

    .line 384
    return-void
.end method
