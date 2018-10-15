.class public Lcom/iflytek/framework/business/speech/ResultGrammarData;
.super Ljava/lang/Object;
.source "ResultGrammarData.java"


# instance fields
.field public mGrammar:Ljava/lang/String;

.field public mGrammarType:Lcom/iflytek/framework/business/speech/ResultGrammarType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V
    .locals 0
    .param p1, "grammar"    # Ljava/lang/String;
    .param p2, "grammarType"    # Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/ResultGrammarData;->mGrammar:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/iflytek/framework/business/speech/ResultGrammarData;->mGrammarType:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 23
    return-void
.end method
