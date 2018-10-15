.class public abstract Lwp;
.super Lwo;
.source "AbsSessionOpLogHelper.java"


# instance fields
.field private b:J

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lwp;->c:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method protected a()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lwp;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lwp;->b(J)V

    .line 36
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lwp;->c:Ljava/util/Map;

    return-object v0
.end method

.method protected b(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lwp;->b:J

    .line 52
    return-void
.end method
