.class Lto$2;
.super Ljava/lang/Object;
.source "UserVoiceResetFragment.java"

# interfaces
.implements Lkr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lto;


# direct methods
.method constructor <init>(Lto;)V
    .locals 0
    .param p1, "this$0"    # Lto;

    .prologue
    .line 167
    iput-object p1, p0, Lto$2;->a:Lto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 292
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onBeginOfSpeech"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lto$2;->a:Lto;

    invoke-virtual {v0}, Lto;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onBeginOfSpeech isInTouchMode"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lto$2;->a:Lto;

    invoke-virtual {v0}, Lto;->e()V

    .line 297
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
    .line 248
    return-void
.end method

.method public a(I[B)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "data"    # [B

    .prologue
    .line 174
    const-string/jumbo v0, "UserVoiceResetFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lto$2;->a:Lto;

    invoke-virtual {v0}, Lto;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onVolumeChanged isFocused"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lto$2;->a:Lto;

    invoke-virtual {v0, p1}, Lto;->a(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    .line 254
    iget-object v1, p0, Lto$2;->a:Lto;

    const-string/jumbo v2, "\u9a8c\u8bc1\u4e0d\u901a\u8fc7"

    invoke-virtual {v1, v2}, Lto;->a(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 272
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v1

    invoke-virtual {v1}, Ltj;->e()V

    .line 273
    iget-object v1, p0, Lto$2;->a:Lto;

    const-string/jumbo v2, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v1, v2}, Lto;->a(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, "UserVoiceResetFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError Code\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void

    .line 258
    :sswitch_0
    iget-object v1, p0, Lto$2;->a:Lto;

    const-string/jumbo v2, "\u58f0\u7eb9\u5bc6\u7801\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Lto;->a(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lto$2;->a:Lto;

    const-string/jumbo v2, "\u58f0\u7eb9\u5bc6\u7801\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Lto;->b(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v1

    invoke-virtual {v1}, Ltj;->e()V

    .line 262
    :try_start_0
    iget-object v1, p0, Lto$2;->a:Lto;

    invoke-virtual {v1}, Lto;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserVoiceResetFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " finish error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    const-string/jumbo v1, "UserVoiceResetFragment"

    const-string/jumbo v2, "\u5f15\u64ce\u51fa\u9519"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lto$2;->a:Lto;

    const-string/jumbo v2, "\u58f0\u7eb9\u7cfb\u7edf\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u6765"

    invoke-virtual {v1, v2}, Lto;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2784 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lks;)V
    .locals 4
    .param p1, "result"    # Lks;

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 184
    const-string/jumbo v1, "UserVoiceResetFragment"

    const-string/jumbo v2, "onResult result is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string/jumbo v1, "UserVoiceResetFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult result.source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lks;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v1, p1, Lks;->b:I

    if-nez v1, :cond_2

    .line 191
    iget-object v1, p0, Lto$2;->a:Lto;

    invoke-static {v1}, Lto;->c(Lto;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u9a8c\u8bc1\u901a\u8fc7"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lto$2;->a:Lto;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lto;->a(Lto;Z)V

    goto :goto_0

    .line 195
    :cond_2
    const/4 v0, 0x0

    .line 197
    .local v0, "tip":Ljava/lang/String;
    iget v1, p1, Lks;->j:I

    packed-switch v1, :pswitch_data_0

    .line 229
    :pswitch_0
    const-string/jumbo v0, "\u9a8c\u8bc1\u4e0d\u901a\u8fc7"

    .line 234
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const-string/jumbo v1, "UserVoiceResetFragment"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lto$2;->a:Lto;

    invoke-virtual {v1, v0}, Lto;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_1
    const-string/jumbo v0, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    .line 202
    goto :goto_1

    .line 205
    :pswitch_2
    const-string/jumbo v0, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    .line 206
    goto :goto_1

    .line 209
    :pswitch_3
    const-string/jumbo v0, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    .line 210
    goto :goto_1

    .line 213
    :pswitch_4
    const-string/jumbo v0, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    .line 214
    goto :goto_1

    .line 217
    :pswitch_5
    const-string/jumbo v0, "\u9a8c\u8bc1\u4e0d\u901a\u8fc7"

    .line 218
    goto :goto_1

    .line 221
    :pswitch_6
    const-string/jumbo v0, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    .line 222
    goto :goto_1

    .line 225
    :pswitch_7
    const-string/jumbo v0, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    .line 226
    goto :goto_1

    .line 197
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
    .line 282
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onEndOfSpeech "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lto$2;->a:Lto;

    invoke-virtual {v0}, Lto;->e()V

    .line 286
    return-void
.end method
