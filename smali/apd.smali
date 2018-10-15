.class public Lapd;
.super Ljava/lang/Object;
.source "RequestMonitorInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "NULL"

    iput-object v0, p0, Lapd;->a:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lapd;->b:I

    .line 21
    iput-wide v2, p0, Lapd;->c:J

    .line 22
    iput-wide v2, p0, Lapd;->d:J

    .line 27
    const-string/jumbo v0, "NULL"

    iput-object v0, p0, Lapd;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lapd;->b:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "success"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "failure"

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "retCode"    # I

    .prologue
    .line 65
    iput p1, p0, Lapd;->b:I

    .line 66
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "reqSize"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lapd;->c:J

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lapd;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "respSize"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lapd;->d:J

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "traceId"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lapd;->i:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public c(J)V
    .locals 1
    .param p1, "requestEndTime"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lapd;->e:J

    .line 90
    return-void
.end method

.method public d(J)V
    .locals 1
    .param p1, "startRespTime"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lapd;->f:J

    .line 98
    return-void
.end method

.method public e(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lapd;->g:J

    .line 106
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, Lapd;->e:J

    .line 107
    return-void
.end method

.method public f(J)V
    .locals 5
    .param p1, "endTime"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lapd;->h:J

    .line 115
    iget-wide v0, p0, Lapd;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lapd;->f:J

    .line 118
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "cmd"

    iget-object v3, p0, Lapd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v2, "traceid"

    iget-object v3, p0, Lapd;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v2, "retstatus"

    invoke-virtual {p0}, Lapd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v2, "retcode"

    iget v3, p0, Lapd;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v2, "reqsize"

    iget-wide v4, p0, Lapd;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v2, "respsize"

    iget-wide v4, p0, Lapd;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v2, "tut"

    iget-wide v4, p0, Lapd;->e:J

    iget-wide v6, p0, Lapd;->g:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v2, "dut"

    iget-wide v4, p0, Lapd;->h:J

    iget-wide v6, p0, Lapd;->f:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v2, "usetime"

    iget-wide v4, p0, Lapd;->h:J

    iget-wide v6, p0, Lapd;->g:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v2, "starttime"

    iget-wide v4, p0, Lapd;->g:J

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v3}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string/jumbo v2, "endtime"

    iget-wide v4, p0, Lapd;->h:J

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v3}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RequestMonitorInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    const/4 v2, 0x0

    goto :goto_0
.end method
