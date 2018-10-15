.class public Lwk;
.super Lxt;
.source "ErrorLog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lxt;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lwk;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 41
    if-ltz p1, :cond_0

    .line 42
    iput p1, p0, Lwk;->b:I

    .line 44
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 3
    .param p1, "errorTime"    # J

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 52
    iput-wide p1, p0, Lwk;->c:J

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwk;->c:J

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lwk;->h:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lwk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lwk;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lxt;->c()V

    .line 88
    const-string/jumbo v0, "errorcode"

    iget v1, p0, Lwk;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string/jumbo v0, "errortime"

    iget-wide v2, p0, Lwk;->c:J

    invoke-virtual {p0, v2, v3}, Lwk;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v0, "errormsg"

    iget-object v1, p0, Lwk;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string/jumbo v0, "action"

    iget-object v1, p0, Lwk;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string/jumbo v0, "startengine"

    iget-object v1, p0, Lwk;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string/jumbo v0, "entry"

    iget-object v1, p0, Lwk;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v0, "mscsid"

    iget-object v1, p0, Lwk;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lwk;->g:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "errorlog"

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lwk;->i:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lwk;->j:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lwk;->k:Ljava/lang/String;

    .line 106
    return-void
.end method
