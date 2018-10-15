.class Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Ljt;

.field final synthetic c:Lcom/iflytek/base/speech/impl/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "listener"    # Ljt;

    .prologue
    .line 2592
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2593
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;->a:Landroid/content/Intent;

    .line 2594
    iput-object p3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;->b:Ljt;

    .line 2595
    return-void
.end method
