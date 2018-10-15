.class public Lpp;
.super Ljava/lang/Object;
.source "SpeechServiceUtil.java"


# instance fields
.field private a:Ljr;

.field private b:Ljs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lpp;->a:Ljr;

    .line 25
    invoke-static {p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    iput-object v0, p0, Lpp;->b:Ljs;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Ljt;)V
    .locals 1
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Ljt;

    .prologue
    .line 37
    iget-object v0, p0, Lpp;->a:Ljr;

    invoke-interface {v0, p1, p2}, Ljr;->a(Landroid/content/Intent;Ljt;)V

    .line 38
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "ttsListener"    # Lju;

    .prologue
    .line 107
    iget-object v0, p0, Lpp;->b:Ljs;

    invoke-interface {v0, p1, p2, p3}, Ljs;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 108
    return-void
.end method

.method public a(Ljt;)V
    .locals 1
    .param p1, "listener"    # Ljt;

    .prologue
    .line 45
    iget-object v0, p0, Lpp;->a:Ljr;

    invoke-interface {v0, p1}, Ljr;->a(Ljt;)V

    .line 46
    return-void
.end method

.method public a(Lju;)V
    .locals 1
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 111
    iget-object v0, p0, Lpp;->b:Ljs;

    invoke-interface {v0, p1}, Ljs;->c(Lju;)I

    .line 112
    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;ILjt;)V
    .locals 6
    .param p1, "data"    # [Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "languageMode"    # I
    .param p4, "listener"    # Ljt;

    .prologue
    .line 90
    iget-object v0, p0, Lpp;->a:Ljr;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ljr;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjt;)V

    .line 91
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lpp;->a:Ljr;

    invoke-interface {v0}, Ljr;->b()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;Ljt;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Ljt;

    .prologue
    .line 55
    iget-object v0, p0, Lpp;->a:Ljr;

    invoke-interface {v0, p1, p2}, Ljr;->b(Landroid/content/Intent;Ljt;)V

    .line 56
    return-void
.end method

.method public b(Ljt;)V
    .locals 1
    .param p1, "listener"    # Ljt;

    .prologue
    .line 63
    iget-object v0, p0, Lpp;->a:Ljr;

    invoke-interface {v0, p1}, Ljr;->c(Ljt;)V

    .line 64
    return-void
.end method

.method public b(Lju;)V
    .locals 1
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 115
    iget-object v0, p0, Lpp;->b:Ljs;

    invoke-interface {v0, p1}, Ljs;->d(Lju;)I

    .line 116
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lpp;->b:Ljs;

    invoke-interface {v0}, Ljs;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public c(Ljt;)V
    .locals 1
    .param p1, "listener"    # Ljt;

    .prologue
    .line 71
    iget-object v0, p0, Lpp;->a:Ljr;

    invoke-interface {v0, p1}, Ljr;->b(Ljt;)V

    .line 72
    return-void
.end method

.method public c(Lju;)V
    .locals 1
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 134
    iget-object v0, p0, Lpp;->b:Ljs;

    invoke-interface {v0, p1}, Ljs;->e(Lju;)I

    .line 135
    return-void
.end method

.method public d(Ljt;)Z
    .locals 1
    .param p1, "listener"    # Ljt;

    .prologue
    .line 78
    iget-object v0, p0, Lpp;->a:Ljr;

    invoke-interface {v0, p1}, Ljr;->d(Ljt;)Z

    move-result v0

    return v0
.end method

.method public d(Lju;)Z
    .locals 1
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 144
    iget-object v0, p0, Lpp;->b:Ljs;

    invoke-interface {v0, p1}, Ljs;->a(Lju;)Z

    move-result v0

    return v0
.end method

.method public e(Lju;)Z
    .locals 1
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 148
    iget-object v0, p0, Lpp;->b:Ljs;

    invoke-interface {v0, p1}, Ljs;->b(Lju;)Z

    move-result v0

    return v0
.end method
