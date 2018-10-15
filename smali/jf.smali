.class public Ljf;
.super Ljava/lang/Object;
.source "SpeechSynthesizerAdapter.java"

# interfaces
.implements Lcom/iflytek/yd/speech/ITtsHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljf$a;
    }
.end annotation


# instance fields
.field private a:Ljs;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lju;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Ljs;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    return-void
.end method

.method private a(Lcom/iflytek/yd/speech/ITtsListener;)Lju;
    .locals 3
    .param p1, "ttsListener"    # Lcom/iflytek/yd/speech/ITtsListener;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 80
    .local v0, "listener":Lju;
    iget-object v2, p0, Ljf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Ljf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lju;
    check-cast v0, Lju;

    .restart local v0    # "listener":Lju;
    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljf$a;

    .end local v0    # "listener":Lju;
    invoke-direct {v0, p0, p1}, Ljf$a;-><init>(Ljf;Lcom/iflytek/yd/speech/ITtsListener;)V

    .line 84
    .restart local v0    # "listener":Lju;
    iget-object v2, p0, Ljf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public isSpeaking(Lcom/iflytek/yd/speech/ITtsListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/yd/speech/ITtsListener;

    .prologue
    .line 59
    iget-object v0, p0, Ljf;->a:Ljs;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Ljf;->a:Ljs;

    invoke-direct {p0, p1}, Ljf;->a(Lcom/iflytek/yd/speech/ITtsListener;)Lju;

    move-result-object v1

    invoke-interface {v0, v1}, Ljs;->a(Lju;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportOffline()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljf;->a:Ljs;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Ljf;->a:Ljs;

    invoke-interface {v0}, Ljs;->a()Z

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseSpeak(Lcom/iflytek/yd/speech/ITtsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/yd/speech/ITtsListener;

    .prologue
    .line 38
    iget-object v0, p0, Ljf;->a:Ljs;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Ljf;->a:Ljs;

    invoke-direct {p0, p1}, Ljf;->a(Lcom/iflytek/yd/speech/ITtsListener;)Lju;

    move-result-object v1

    invoke-interface {v0, v1}, Ljs;->c(Lju;)I

    .line 41
    :cond_0
    return-void
.end method

.method public resumeSpeak(Lcom/iflytek/yd/speech/ITtsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/yd/speech/ITtsListener;

    .prologue
    .line 45
    iget-object v0, p0, Ljf;->a:Ljs;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ljf;->a:Ljs;

    invoke-direct {p0, p1}, Ljf;->a(Lcom/iflytek/yd/speech/ITtsListener;)Lju;

    move-result-object v1

    invoke-interface {v0, v1}, Ljs;->d(Lju;)I

    .line 48
    :cond_0
    return-void
.end method

.method public speak(Ljava/lang/String;Landroid/os/Bundle;Lcom/iflytek/yd/speech/ITtsListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/iflytek/yd/speech/ITtsListener;

    .prologue
    .line 31
    iget-object v0, p0, Ljf;->a:Ljs;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Ljf;->a:Ljs;

    invoke-direct {p0, p3}, Ljf;->a(Lcom/iflytek/yd/speech/ITtsListener;)Lju;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Ljs;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 34
    :cond_0
    return-void
.end method

.method public stopSpeak(Lcom/iflytek/yd/speech/ITtsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/yd/speech/ITtsListener;

    .prologue
    .line 52
    iget-object v0, p0, Ljf;->a:Ljs;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Ljf;->a:Ljs;

    invoke-direct {p0, p1}, Ljf;->a(Lcom/iflytek/yd/speech/ITtsListener;)Lju;

    move-result-object v1

    invoke-interface {v0, v1}, Ljs;->e(Lju;)I

    .line 55
    :cond_0
    return-void
.end method
