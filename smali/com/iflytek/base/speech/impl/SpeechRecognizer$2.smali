.class Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 2040
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddLexiconFinish(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 2044
    if-eqz p3, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;->onAddLexiconFinish(Ljava/lang/String;ILjava/lang/String;)V

    .line 2055
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;->onAddLexiconFinish(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onBuildFinish(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 2060
    if-eqz p3, :cond_1

    .line 2061
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;->onBuildFinish(Ljava/lang/String;ILjava/lang/String;)V

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;->onBuildFinish(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onInitFinish(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;->onInitFinish(I)V

    .line 2078
    :cond_0
    return-void
.end method
