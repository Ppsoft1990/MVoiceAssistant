.class Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
.super Ljava/lang/Object;
.source "SpeechSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

.field public b:Ljava/lang/Object;

.field final synthetic c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;


# direct methods
.method private constructor <init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .param p2, "x1"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V

    return-void
.end method
