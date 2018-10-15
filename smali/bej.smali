.class public abstract Lbej;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lbem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "rs%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lbew;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lbem;
    .locals 1

    iget-object v0, p0, Lbej;->a:Lbem;

    return-object v0
.end method

.method public abstract a(Lbel;)V
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public abstract c()Lbek;
.end method
