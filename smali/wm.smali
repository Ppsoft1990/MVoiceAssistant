.class public Lwm;
.super Lxt;
.source "OperationLog.java"


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lxt;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-super {p0}, Lxt;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwm;->h:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lwm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 62
    iput-wide p1, p0, Lwm;->g:J

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwm;->g:J

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationCode"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lwm;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lwm;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 3
    .param p1, "endTime"    # J

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 70
    iput-wide p1, p0, Lwm;->a:J

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwm;->a:J

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lwm;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lxt;->c()V

    .line 89
    const-string/jumbo v0, "opcode"

    invoke-virtual {p0}, Lwm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v0, "starttime"

    iget-wide v2, p0, Lwm;->g:J

    invoke-virtual {p0, v2, v3}, Lwm;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string/jumbo v0, "endtime"

    iget-wide v2, p0, Lwm;->a:J

    invoke-virtual {p0, v2, v3}, Lwm;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string/jumbo v0, "result"

    invoke-virtual {p0}, Lwm;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lwm;->h:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "usedapp"

    invoke-virtual {p0}, Lwm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "oplog"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lwm;->c:Ljava/lang/String;

    return-object v0
.end method
