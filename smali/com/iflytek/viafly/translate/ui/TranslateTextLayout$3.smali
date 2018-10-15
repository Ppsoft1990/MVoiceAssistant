.class Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;
.super Ljava/lang/Object;
.source "TranslateTextLayout.java"

# interfaces
.implements Lajm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const-string/jumbo v0, "\u81ea\u52a8\u68c0\u6d4b \uff1a"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 446
    const-string/jumbo v0, "TranslateTextLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bed\u79cd\u8bc6\u522b onError: errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Layp;

    move-result-object v0

    invoke-virtual {v0}, Layp;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v0, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 452
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 427
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 432
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 433
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Layp;

    move-result-object v3

    invoke-virtual {v3}, Layp;->f()Z

    move-result v3

    if-nez v3, :cond_1

    .line 442
    :cond_0
    :goto_1
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    const-string/jumbo v5, "language"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->a:Ljava/lang/String;

    .line 437
    const-string/jumbo v3, "TranslateTextLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResult: languageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 439
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->b:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->j(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$3;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
