.class public Lcom/iflytek/framework/business/speech/ManualSelectHandler;
.super Ljava/lang/Object;
.source "ManualSelectHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_ManualSelectHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs selectHandle(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "textSearchMode"    # B
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 22
    const-string/jumbo v2, "Business_ManualSelectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectHandle action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p1, p3}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    .line 24
    .local v0, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setPromptMode(I)V

    .line 25
    invoke-virtual {v0, p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V

    .line 26
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getPreHandler()Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    move-result-object v1

    .line 27
    .local v1, "resultPreHandler":Lcom/iflytek/framework/business/interfaces/IResultPreHandler;
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v1, p0, v0}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->afterLocateSearchResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 30
    :cond_0
    return-void
.end method
