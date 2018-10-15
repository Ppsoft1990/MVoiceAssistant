.class Ltd$6;
.super Landroid/telephony/PhoneStateListener;
.source "ApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd;


# direct methods
.method constructor <init>(Ltd;)V
    .locals 0
    .param p1, "this$0"    # Ltd;

    .prologue
    .line 1022
    iput-object p1, p0, Ltd$6;->a:Ltd;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1028
    if-nez p1, :cond_1

    .line 1029
    iget-object v0, p0, Ltd$6;->a:Ltd;

    invoke-static {v0}, Ltd;->i(Ltd;)Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 1031
    iget-object v0, p0, Ltd$6;->a:Ltd;

    invoke-static {v0}, Ltd;->i(Ltd;)Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1032
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1033
    iget-object v0, p0, Ltd$6;->a:Ltd;

    invoke-static {v0}, Ltd;->i(Ltd;)Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v2, 0x0

    .line 1024
    iget-object v0, p0, Ltd$6;->a:Ltd;

    invoke-static {v0}, Ltd;->i(Ltd;)Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 1025
    return-void
.end method
