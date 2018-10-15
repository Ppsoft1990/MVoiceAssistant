.class public final Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;
.super Ljava/lang/Object;
.source "SpeechHandlerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    new-instance v0, Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
