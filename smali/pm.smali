.class public Lpm;
.super Ljava/lang/Object;
.source "PermissionEvent.java"


# instance fields
.field private a:J

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .param p1, "requestId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, "grantResults":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lpm;->a:J

    .line 18
    iput-object p3, p0, Lpm;->b:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lpm;->a:J

    return-wide v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lpm;->b:Ljava/util/List;

    return-object v0
.end method
