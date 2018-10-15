.class public abstract Lcl;
.super Lcn/a/a/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/a/a/n",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcw$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "utf-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcw$b",
            "<TT;>;",
            "Lcw$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcn/a/a/n;-><init>(ILjava/lang/String;Lcw$a;)V

    iput-object p4, p0, Lcl;->b:Lcw$b;

    iput-object p3, p0, Lcl;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Lcn/a/a/j;)Lcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/a/a/j;",
            ")",
            "Lcw",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcl;->b:Lcw$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl;->b:Lcw$b;

    invoke-interface {v0, p1}, Lcw$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    invoke-super {p0}, Lcn/a/a/n;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcl;->b:Lcw$b;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcl;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()[B
    .locals 1

    invoke-virtual {p0}, Lcl;->q()[B

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public q()[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcl;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcl;->c:Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcl;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcz;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
