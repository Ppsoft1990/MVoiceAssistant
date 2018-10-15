.class Ltj$3;
.super Ljava/lang/Object;
.source "SpeakerVerifyManager.java"

# interfaces
.implements Lkq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltj;


# direct methods
.method constructor <init>(Ltj;)V
    .locals 0
    .param p1, "this$0"    # Ltj;

    .prologue
    .line 322
    iput-object p1, p0, Ltj$3;->a:Ltj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 326
    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    const/4 v3, 0x1

    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "SpeakVerifyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted error.getErrorCode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x2784

    if-ne v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Ltj$3;->a:Ltj;

    invoke-static {v0}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Ltj$3;->a:Ltj;

    invoke-static {v0}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltj$a;->a(Z)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string/jumbo v0, "SpeakVerifyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u64cd\u4f5c\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Ltj$3;->a:Ltj;

    invoke-static {v0}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Ltj$3;->a:Ltj;

    invoke-static {v0}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u64cd\u4f5c\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltj$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 8
    .param p1, "buffer"    # [B

    .prologue
    const/4 v6, -0x1

    .line 331
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 333
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "cmd"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v5, "ret"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 337
    .local v4, "ret":I
    const-string/jumbo v5, "del"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 338
    if-nez v4, :cond_1

    .line 339
    const-string/jumbo v5, "SpeakVerifyManager"

    const-string/jumbo v6, "\u5220\u9664\u6210\u529f"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 341
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v5

    invoke-interface {v5}, Ltj$a;->a()V

    .line 368
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v4    # "ret":I
    :cond_0
    :goto_0
    return-void

    .line 343
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v2    # "object":Lorg/json/JSONObject;
    .restart local v4    # "ret":I
    :cond_1
    if-ne v4, v6, :cond_0

    .line 344
    const-string/jumbo v5, "SpeakVerifyManager"

    const-string/jumbo v6, "\u5220\u9664\u5931\u8d25\uff0c\u6a21\u578b\u4e0d\u5b58\u5728"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 346
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v5

    const-string/jumbo v6, "\u5220\u9664\u5931\u8d25\uff0c\u6a21\u578b\u4e0d\u5b58\u5728"

    invoke-interface {v5, v6}, Ltj$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v4    # "ret":I
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "SpeakVerifyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBufferReceived error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 365
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v5

    const-string/jumbo v6, "JSONException"

    invoke-interface {v5, v6}, Ltj$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v2    # "object":Lorg/json/JSONObject;
    .restart local v4    # "ret":I
    :cond_2
    :try_start_1
    const-string/jumbo v5, "que"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    if-nez v4, :cond_4

    .line 352
    const-string/jumbo v5, "SpeakVerifyManager"

    const-string/jumbo v6, "\u6a21\u578b\u5b58\u5728"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_3
    :goto_1
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 359
    iget-object v5, p0, Ltj$3;->a:Ltj;

    invoke-static {v5}, Ltj;->d(Ltj;)Ltj$a;

    move-result-object v6

    if-nez v4, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v6, v5}, Ltj$a;->a(Z)V

    goto :goto_0

    .line 354
    :cond_4
    if-ne v4, v6, :cond_3

    .line 355
    const-string/jumbo v5, "SpeakVerifyManager"

    const-string/jumbo v6, "\u6a21\u578b\u4e0d\u5b58\u5728"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 359
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method
