.class Lzo;
.super Ljava/lang/Object;
.source "FeeTransferCacheData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lzo;->c:J

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lzo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "updateTime"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lzo;->c:J

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "fee"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lzo;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lzo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "transfer"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lzo;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lzo;->c:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lzo;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lzo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lzo;->e:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lzo;->e:Ljava/lang/String;

    return-object v0
.end method
