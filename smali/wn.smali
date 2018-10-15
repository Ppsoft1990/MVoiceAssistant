.class public Lwn;
.super Lxt;
.source "VoiceLog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lxt;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lwn;->o:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Lwn;->b:J

    iget-wide v2, p0, Lwn;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public a(J)V
    .locals 3
    .param p1, "recordTime"    # J

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 59
    iput-wide p1, p0, Lwn;->b:J

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwn;->b:J

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "bAction"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lwn;->j:Ljava/lang/String;

    .line 99
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lwn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 67
    iput-wide p1, p0, Lwn;->c:J

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwn;->c:J

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "bFocus"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lwn;->i:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Lxt;->c()V

    .line 152
    const-string/jumbo v0, "starttime"

    iget-wide v2, p0, Lwn;->c:J

    invoke-virtual {p0, v2, v3}, Lwn;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string/jumbo v0, "endtime"

    iget-wide v2, p0, Lwn;->g:J

    invoke-virtual {p0, v2, v3}, Lwn;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string/jumbo v0, "recordtime"

    invoke-virtual {p0}, Lwn;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string/jumbo v0, "usetime"

    invoke-virtual {p0}, Lwn;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string/jumbo v0, "action"

    iget-object v1, p0, Lwn;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v0, "startengine"

    iget-object v1, p0, Lwn;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string/jumbo v0, "baction"

    iget-object v1, p0, Lwn;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string/jumbo v0, "bfocus"

    iget-object v1, p0, Lwn;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string/jumbo v0, "engine_type"

    iget-object v1, p0, Lwn;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string/jumbo v0, "entry"

    iget-object v1, p0, Lwn;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string/jumbo v0, "mscsid"

    iget-object v1, p0, Lwn;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string/jumbo v0, "audit_code"

    iget-object v1, p0, Lwn;->o:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public c(J)V
    .locals 3
    .param p1, "endTime"    # J

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 75
    iput-wide p1, p0, Lwn;->g:J

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwn;->g:J

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lwn;->h:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string/jumbo v0, "uselog"

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lwn;->k:Ljava/lang/String;

    .line 112
    return-void
.end method

.method protected e()I
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lwn;->g:J

    iget-wide v2, p0, Lwn;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lwn;->a:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lwn;->m:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lwn;->l:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lwn;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lwn;->n:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lwn;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lwn;->m:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "auditCode"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lwn;->o:Ljava/lang/String;

    .line 173
    return-void
.end method
