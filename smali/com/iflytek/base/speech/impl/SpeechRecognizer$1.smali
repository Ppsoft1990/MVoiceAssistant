.class Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;


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
    .line 1942
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadResult([BI)V
    .locals 2
    .param p1, "result"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljt;->onDownloadCustomData([BI)V

    .line 2023
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;

    .line 2025
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1947
    return-void
.end method

.method public onInitFinish(Z)V
    .locals 3
    .param p1, "ret"    # Z

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v0

    const-string/jumbo v1, "prot_ver"

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v2

    invoke-interface {v2}, Ljo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->setMspParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->G(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljg;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljg;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;)V

    .line 2034
    return-void
.end method

.method public onNetStatusChange(ILjava/lang/String;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->G(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->a(I)V

    .line 2029
    return-void
.end method

.method public onResult([BZ)V
    .locals 4
    .param p1, "results"    # [B
    .param p2, "isLastResult"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1951
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, " on Msc Result"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    if-eqz p2, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1959
    :goto_0
    return-void

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onSearchResult([BI)V
    .locals 5
    .param p1, "results"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 1971
    const/4 v0, 0x0

    .line 1972
    .local v0, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    .line 1973
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1974
    .restart local v0    # "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Ljn;->a([BLjava/util/List;)I

    .line 1977
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1978
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v3

    invoke-virtual {v3}, Lja;->c()B

    move-result v2

    .line 1979
    .local v2, "mode":B
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-virtual {v3, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V

    .line 1982
    .end local v2    # "mode":B
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1983
    :cond_2
    const p2, 0xc3516

    .line 1987
    :cond_3
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1989
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v3

    invoke-virtual {v3}, Lje;->c()V

    .line 1990
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->F(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1992
    if-nez p2, :cond_6

    .line 1993
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 2000
    :cond_4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v3

    invoke-interface {v3, v0, p2}, Ljt;->onSearchResults(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2004
    :goto_1
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;

    .line 2007
    :cond_5
    return-void

    .line 1995
    :cond_6
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    goto :goto_0

    .line 2001
    :catch_0
    move-exception v1

    .line 2002
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onSearchResult NullPointerException"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSessionBegin()V
    .locals 0

    .prologue
    .line 2012
    return-void
.end method

.method public onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "sGrammarID"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "languageMode"    # I

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Ljt;->onUploadCustomData(Ljava/lang/String;II)V

    .line 1966
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;

    .line 1968
    :cond_0
    return-void
.end method

.method public setLastTrafficFlow(II)V
    .locals 1
    .param p1, "upTrafficFlow"    # I
    .param p2, "downTrafficFlow"    # I

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljo;->b(II)V

    .line 2017
    return-void
.end method
