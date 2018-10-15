.class Laxi;
.super Laxl;
.source "FileTrafficInforReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Laxl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Laxk;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const-wide/16 v4, 0x400

    .line 13
    const/4 v1, 0x0

    .line 14
    .local v1, "infor":Laxk;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Laxj;->a(I)Laxh;

    move-result-object v0

    .line 15
    .local v0, "data":Laxh;
    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Laxk;

    .end local v1    # "infor":Laxk;
    invoke-direct {v1}, Laxk;-><init>()V

    .line 17
    .restart local v1    # "infor":Laxk;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Laxh;->a(I)J

    move-result-wide v2

    div-long/2addr v2, v4

    iput-wide v2, v1, Laxk;->a:J

    .line 18
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Laxh;->a(I)J

    move-result-wide v2

    div-long/2addr v2, v4

    iput-wide v2, v1, Laxk;->b:J

    .line 20
    :cond_0
    const-string/jumbo v2, "FileTrafficInforReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTraffic(), ret= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-object v1
.end method
