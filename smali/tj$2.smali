.class Ltj$2;
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
    .line 247
    iput-object p1, p0, Ltj$2;->a:Ltj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 250
    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 3
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    .line 297
    const-string/jumbo v0, "SpeakVerifyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted SpeechError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Ltj$2;->a:Ltj;

    invoke-static {v0}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Ltj$2;->a:Ltj;

    invoke-static {v0}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltj$b;->b(Ljava/lang/String;)V

    .line 303
    :cond_0
    const-string/jumbo v0, "SpeakVerifyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    return-void
.end method

.method public a([B)V
    .locals 9
    .param p1, "buffer"    # [B

    .prologue
    .line 255
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    .line 256
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-static {v6}, Ltj;->a(Ltj;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 260
    .local v2, "numberString":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v6, "num_pwd"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 262
    const-string/jumbo v6, "SpeakVerifyManager"

    const-string/jumbo v7, "get pwd error, pwd is null"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-static {v6}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-static {v6}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v6

    const-string/jumbo v7, "result is empty"

    invoke-interface {v6, v7}, Ltj$b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "SpeakVerifyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-static {v6}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 286
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-static {v6}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v6

    const-string/jumbo v7, "get result error"

    invoke-interface {v6, v7}, Ltj$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .restart local v3    # "object":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "num_pwd"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 270
    .local v4, "pwdArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 271
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_3
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltj;->a(Ltj;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    const-string/jumbo v6, "SpeakVerifyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPwdListenter onBufferReceived mNumPwd "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ltj$2;->a:Ltj;

    invoke-static {v8}, Ltj;->c(Ltj;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v6, p0, Ltj$2;->a:Ltj;

    iget-object v7, p0, Ltj$2;->a:Ltj;

    invoke-static {v7}, Ltj;->c(Ltj;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltj;->a(Ltj;[Ljava/lang/String;)[Ljava/lang/String;

    .line 277
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-static {v6}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 278
    iget-object v6, p0, Ltj$2;->a:Ltj;

    invoke-static {v6}, Ltj;->b(Ltj;)Ltj$b;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ltj$b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
