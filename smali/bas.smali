.class public Lbas;
.super Ljava/lang/Object;
.source "NoteSpeakHandler.java"


# static fields
.field public static a:Lbar;

.field private static f:Landroid/os/Handler;


# instance fields
.field b:Lju;

.field private c:Ljava/lang/String;

.field private d:Lpp;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lbas$2;

    invoke-direct {v0}, Lbas$2;-><init>()V

    sput-object v0, Lbas;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lbar;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "NoteSpeakHandler"

    iput-object v0, p0, Lbas;->c:Ljava/lang/String;

    .line 64
    new-instance v0, Lbas$1;

    invoke-direct {v0, p0}, Lbas$1;-><init>(Lbas;)V

    iput-object v0, p0, Lbas;->b:Lju;

    .line 28
    iput-object p1, p0, Lbas;->e:Landroid/content/Context;

    .line 29
    sput-object p2, Lbas;->a:Lbar;

    .line 30
    iget-object v0, p0, Lbas;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbas;->d:Lpp;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lpp;

    iget-object v1, p0, Lbas;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbas;->d:Lpp;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lbas;->c:Ljava/lang/String;

    const-string/jumbo v1, "mContext is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lbas;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbas;

    .prologue
    .line 11
    iget-object v0, p0, Lbas;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 142
    sget-object v0, Lbas;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lbas;->d:Lpp;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lbas;->d:Lpp;

    iget-object v1, p0, Lbas;->b:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lbas;->c:Ljava/lang/String;

    const-string/jumbo v1, "mSpeechServiceUtil is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "speakContent"    # Ljava/lang/String;
    .param p2, "parmas"    # Landroid/os/Bundle;

    .prologue
    .line 38
    iget-object v0, p0, Lbas;->d:Lpp;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lbas;->d:Lpp;

    iget-object v1, p0, Lbas;->b:Lju;

    invoke-virtual {v0, p1, p2, v1}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lbas;->c:Ljava/lang/String;

    const-string/jumbo v1, "mSpeechServiceUtil is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
