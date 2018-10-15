.class Ltn$3;
.super Ljava/lang/Object;
.source "UserVoiceRegisterFragment.java"

# interfaces
.implements Lkr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0
    .param p1, "this$0"    # Ltn;

    .prologue
    .line 308
    iput-object p1, p0, Ltn$3;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "\u5f00\u59cb\u8bf4\u8bdd"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Ltn$3;->a:Ltn;

    invoke-static {v0}, Ltn;->p(Ltn;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Ltn$3;->a:Ltn;

    invoke-virtual {v0}, Ltn;->e()V

    .line 472
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
    .line 420
    return-void
.end method

.method public a(I[B)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "data"    # [B

    .prologue
    .line 313
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524d\u6b63\u5728\u8bf4\u8bdd\uff0c\u97f3\u91cf\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string/jumbo v0, "UserVoiceRegisterFragment"

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

    .line 315
    iget-object v0, p0, Ltn$3;->a:Ltn;

    invoke-virtual {v0, p1}, Ltn;->a(I)V

    .line 316
    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 5
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    const/4 v4, 0x1

    .line 424
    iget-object v1, p0, Ltn$3;->a:Ltn;

    invoke-virtual {v1}, Ltn;->f()V

    .line 426
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    const/16 v2, 0x2789

    if-ne v1, v2, :cond_0

    .line 431
    iget-object v1, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v2, "\u58f0\u7eb9\u5bc6\u7801\u5df2\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v1, v2}, Ltn;->b(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v1

    invoke-virtual {v1}, Ltj;->e()V

    .line 433
    iget-object v1, p0, Ltn$3;->a:Ltn;

    invoke-static {v1, v4}, Ltn;->b(Ltn;Z)Z

    .line 437
    :try_start_0
    iget-object v1, p0, Ltn$3;->a:Ltn;

    invoke-virtual {v1}, Ltn;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserVoiceRegisterFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u58f0\u7eb9\u5bc6\u7801\u5df2\u8bbe\u7f6e\u6210\u529f finish error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    const/16 v2, 0x2d51

    if-ne v1, v2, :cond_1

    .line 442
    iget-object v1, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v2, "\u6ce8\u518c\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u6ce8\u518c"

    invoke-virtual {v1, v2}, Ltn;->b(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Ltn$3;->a:Ltn;

    invoke-static {v1}, Ltn;->o(Ltn;)V

    .line 444
    iget-object v1, p0, Ltn$3;->a:Ltn;

    invoke-virtual {v1}, Ltn;->c()V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_2

    .line 446
    const-string/jumbo v1, "UserVoiceRegisterFragment"

    const-string/jumbo v2, "\u5f15\u64ce\u51fa\u9519"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v2, "\u58f0\u7eb9\u7cfb\u7edf\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u6765"

    invoke-virtual {v1, v2}, Ltn;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_2
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v1

    invoke-virtual {v1}, Ltj;->e()V

    .line 451
    const-string/jumbo v1, "UserVoiceRegisterFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v2, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v1, v2}, Ltn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lks;)V
    .locals 9
    .param p1, "result"    # Lks;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 321
    if-nez p1, :cond_0

    .line 322
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "onResult result is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResult result.source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lks;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v4, p1, Lks;->b:I

    if-nez v4, :cond_2

    .line 329
    iget v4, p1, Lks;->j:I

    packed-switch v4, :pswitch_data_0

    .line 375
    :goto_1
    :pswitch_0
    iget v4, p1, Lks;->g:I

    iget v5, p1, Lks;->h:I

    if-ne v4, v5, :cond_1

    .line 376
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4}, Ltn;->j(Ltn;)Landroid/widget/TextView;

    move-result-object v4

    const-string/jumbo v5, "\u6ce8\u518c\u6210\u529f"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4, v7}, Ltn;->a(Ltn;Z)V

    .line 378
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u60a8\u7684\u6570\u5b57\u5bc6\u7801\u58f0\u7eb9ID\uff1a\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lks;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4}, Ltn;->k(Ltn;)V

    .line 382
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4}, Ltn;->l(Ltn;)V

    goto :goto_0

    .line 331
    :pswitch_1
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "\u5185\u6838\u5f02\u5e38"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :pswitch_2
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "\u8bad\u7ec3\u8fbe\u5230\u6700\u5927\u6b21\u6570"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 341
    :pswitch_3
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "\u51fa\u73b0\u622a\u5e45"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :pswitch_4
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "\u592a\u591a\u566a\u97f3"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 351
    :pswitch_5
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "\u5f55\u97f3\u592a\u77ed"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 357
    :pswitch_6
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "\u8bad\u7ec3\u5931\u8d25\uff0c\u60a8\u6240\u8bfb\u7684\u6587\u672c\u4e0d\u4e00\u81f4"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    :pswitch_7
    const-string/jumbo v4, "UserVoiceRegisterFragment"

    const-string/jumbo v5, "\u97f3\u91cf\u592a\u4f4e"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 368
    :pswitch_8
    iget-object v4, p0, Ltn$3;->a:Ltn;

    const-string/jumbo v5, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bfb\u6570\u5b57"

    invoke-virtual {v4, v5}, Ltn;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 390
    :cond_1
    iget v4, p1, Lks;->g:I

    add-int/lit8 v2, v4, 0x1

    .line 391
    .local v2, "nowTimes":I
    iget v4, p1, Lks;->h:I

    sub-int v0, v4, v2

    .line 393
    .local v0, "leftTimes":I
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4}, Ltn;->m(Ltn;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    aget-object v1, v4, v5

    .line 394
    .local v1, "nextNums":Ljava/lang/String;
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4}, Ltn;->n(Ltn;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u8fd8\u6709"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u6b21"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 400
    .local v3, "ss":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v5, "#ff0000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 403
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4}, Ltn;->j(Ltn;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 408
    .end local v0    # "leftTimes":I
    .end local v1    # "nextNums":Ljava/lang/String;
    .end local v2    # "nowTimes":I
    .end local v3    # "ss":Landroid/text/SpannableString;
    :cond_2
    iget-object v4, p0, Ltn$3;->a:Ltn;

    invoke-static {v4}, Ltn;->j(Ltn;)Landroid/widget/TextView;

    move-result-object v4

    const-string/jumbo v5, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb\u3002"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x2d50
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    .line 460
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Ltn$3;->a:Ltn;

    invoke-virtual {v0}, Ltn;->e()V

    .line 463
    return-void
.end method
